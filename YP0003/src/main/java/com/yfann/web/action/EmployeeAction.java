package com.yfann.web.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.common.ApplicationValue;
import com.yfann.web.common.CookieUtils;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.Employee;
import com.yfann.web.service.EmployeeService;
import com.yfann.web.vo.LoginMessage;
import com.yfann.web.vo.RegisterMessage;

/**
 * @Description: 页面转向action
 * @author Tree
 * 
 */
public class EmployeeAction extends CommonAction {
	private static final long serialVersionUID = 4598057907535359991L;

	private RegisterMessage registerMessage = new RegisterMessage();
	private LoginMessage loginMessage = new LoginMessage();
	private CookieUtils cookieUtils = new CookieUtils();
	final Logger logger = LoggerFactory.getLogger(EmployeeAction.class);
	private Employee employee;
	@Autowired
	private EmployeeService employeeService;
	/** 注册页面验证码 */
	private String validateCode;

	private String remPass;

	// 转向修改密码页面
	public String updatePasswordUI() {
		return "updatePasswordUI";
	}

	// 修改密码
	public String updatePassword() throws Exception {
		//验证当前密码
		if ("".equals(employee.getOldPassword())) {
			registerMessage.setPasswordMessage("当前密码不能为空！");
			return "updatePasswordUI";
		}
		Employee emp = (Employee) session.getAttribute(ApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if(emp==null){
			return "forwardLogin";
		}
		if(!emp.getNowPassword().equals(employee.getOldPassword())){
			registerMessage.setPasswordMessage("当前密码输入错误！");
			return "updatePasswordUI";
		}
		String nowPD;
		// 验证新密码
		if (!(StringUtils.isNotBlank(employee.getNowPassword()))) {
			registerMessage.setPasswordMessage("密码为空!");
			return "updatePasswordUI";
		} else {
			String[] passwords = employee.getNowPassword().split(",");
			nowPD = passwords[0];
			if (passwords.length != 2) {
				registerMessage.setPasswordMessage("密码非法!");
				return "updatePasswordUI";
			} else if (passwords.length > 1) {
				if (passwords[0].trim().length() < 5
						&& passwords[0].trim().length() > 20) {
					registerMessage.setPasswordMessage("密码过长或过短!");
					return "updatePasswordUI";
				} else if (!passwords[0].trim().equals(passwords[1].trim())) {
					registerMessage.setPasswordMessage("两次密码不一致!");
					return "updatePasswordUI";
				}
			}
		}
		
		if (emp.getOldPassword() != null && !"".equals(emp.getOldPassword())){
			emp.setThanOldPassword(emp.getOldPassword());
		}
		emp.setOldPassword(employee.getOldPassword());
		emp.setNowPassword(nowPD);
		employeeService.updateEmployee(emp);
		return logout();
	}

	// 用户退出
	public String logout() {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.removeAttribute(ApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		Cookie cookie = cookieUtils.delCookie(request);
		if (cookie != null)
			response.addCookie(cookie);
		return "forwardLogin";
	}

	public String validateLoginInfo() {
		if ("".equals(employee.getEmpId())) {
			loginMessage.setUserIdMessage("用户名不能为空！");
		}
		if ("".equals(employee.getNowPassword())) {
			loginMessage.setPasswordMessage("密码不能为空！");
		}
		if ("".equals(validateCode)) {
			loginMessage.setPasswordMessage("请填写验证码！");
		}
		// 对比验证码
		String valiCode = (String) session.getAttribute("valiCode").toString();
		if (!valiCode.equals(validateCode)) {
			loginMessage.setValiCodeMessage("验证码不正确!");
		}
		// 有错误信息则返回登录
		if (loginMessage.isNotEmpty()) {
			return "forwardLogin";
		}

		Employee employeeTemp = employeeService.validateEmployee(employee);
		if (null == employeeTemp) { // 没有此用户
			addActionError("用户不存在，请先注册！");
			return "forwardLogin";
		} else if (null != employeeTemp
				&& !employeeTemp.getNowPassword().equals(
						employee.getNowPassword())) {// 存在此用户，但是用户名密码对不上
			addActionError("用户名输入有误！请输入正确的用户名密码！");
			return "forwardLogin";
		} else {// 存在此用户并输入正确

			if (null != remPass && "on".equals(remPass)) {// 判断是否记住用户名密码

				Cookie cookie = cookieUtils.addCookie(employee);
				response = ServletActionContext.getResponse();
				response.addCookie(cookie);// 添加cookie到response中

			}

			session.setAttribute(ApplicationValue.EMPLOYEE_KEY_ON_SESSION,
					employeeTemp);// 添加用户到session中
			return "loginSuccess";
		}

	}

	public String forwardIndex() {
		return "forwardIndex";
	}

	/**
	 * 跳转到登录界面
	 * 
	 * @return
	 */
	public String forwardLogin() {
		request = ServletActionContext.getRequest();
		employee = cookieUtils.getEmpCookie(request);
		return "forwardLogin";
	}

	/**
	 * 跳转到注册界面
	 * 
	 * @return
	 */
	public String forwardRegister() {
		return "forwardRegister";
	}

	/**
	 * 注册功能
	 * 
	 * @return
	 */
	public String register() throws Exception {
		if (employee != null) {
			// 验证用户ID
			if (!(StringUtils.isNotBlank(employee.getEmpId()) && employee
					.getEmpId().length() > 5)) {
				registerMessage.setUserIdMessage("用户名非法!");
			}
			// 验证密码
			if (!(StringUtils.isNotBlank(employee.getNowPassword()))) {
				registerMessage.setPasswordMessage("密码为空!");
			} else {
				String[] passwords = employee.getNowPassword().split(",");
				if (passwords.length != 2) {
					registerMessage.setPasswordMessage("密码非法!");
				} else if (passwords.length > 1) {
					if (passwords[0].trim().length() < 5
							&& passwords[0].trim().length() > 20) {
						registerMessage.setPasswordMessage("密码过长或过短!");
					} else if (!passwords[0].trim().equals(passwords[1].trim())) {
						registerMessage.setPasswordMessage("两次密码不一致!");
					}
				}
			}
			// 验证邮箱
			if (!(StringUtils.isNotBlank(employee.getEmail()))) {
				registerMessage.setEmailMessage("邮箱非法!");
			}
			// 对比验证码
			if (StringUtils.isNotBlank(employee.getEmpId())) {
				// 获取session中验证码
				String valiCode = (String) session.getAttribute("valiCode")
						.toString();
				if (!valiCode.equals(validateCode)) {
					registerMessage.setValiCodeMessage("验证码不正确!");
				}
			} else if (StringUtils.isBlank(employee.getEmpId())) {
				registerMessage.setValiCodeMessage("请填写验证码!");
			}
		}
		if (registerMessage.isNotEmpty()) {
			// 表单错误 转向注册页面并清除密码和验证码
			employee.setNowPassword("");
			validateCode = "";
			return forwardRegister();
		}
		// 保存用户
		try {
			if (employee != null
					&& StringUtils.isNotBlank(employee.getNowPassword())) {
				// 两次去人输入的密码去掉一个
				employee.setNowPassword(employee.getNowPassword().split(",")[0]
						.trim());
				// 设置主键
				employee.setId(UUIDCreate.getUUID());
			}
			employeeService.saveEmployee(employee);
		} catch (Exception e) {
			logger.error("系统错误");
			logger.error(e.getMessage());
			throw new Exception(e.getMessage());
		}
		return forwardLogin();
	}

	public void validateCode() throws Exception {
		// 通知浏览器，图片不要缓存
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setHeader("Expires", "-1");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");

		int width = 80;
		int height = 25;
		// 搞出代表内存图片的对象BufferedImage
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 取到画笔：开始画
		Graphics g = image.getGraphics();
		// 背景
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, width, height);

		// 画边框
		g.setColor(Color.GRAY);
		g.drawRect(1, 1, width - 2, height - 2);
		// 画干扰线
		g.setColor(Color.GRAY);
		Random r = new Random();
		for (int i = 0; i < 30; i++)
			g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width),
					r.nextInt(height));

		// 写随机验证码

		g.setColor(Color.RED);
		g.setFont(new Font("宋体", Font.BOLD | Font.ITALIC, 18));
		// 数字
		int x = 10;
		StringBuffer valiCode = new StringBuffer();
		String valiCodeTemp = "";
		for (int i = 0; i < 4; i++) {
			valiCodeTemp = r.nextInt(10) + "";
			g.drawString(valiCodeTemp, x, 20);
			valiCode.append(valiCodeTemp);
			x += 15;
		}
		session.removeAttribute("valiCode");
		session.setAttribute("valiCode", valiCode);
		ImageIO.write(image, "jpg", response.getOutputStream());
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public RegisterMessage getRegisterMessage() {
		return registerMessage;
	}

	public void setRegisterMessage(RegisterMessage registerMessage) {
		this.registerMessage = registerMessage;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public LoginMessage getLoginMessage() {
		return loginMessage;
	}

	public void setLoginMessage(LoginMessage loginMessage) {
		this.loginMessage = loginMessage;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getRemPass() {
		return remPass;
	}

	public void setRemPass(String remPass) {
		this.remPass = remPass;
	}

}
