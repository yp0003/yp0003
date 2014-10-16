package com.yfann.web.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.yfann.web.pojo.User;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.LoginMessage;
import com.yfann.web.vo.RegisterMessage;

/**
 * @Description: 页面转向action
 * @author Tree
 * 
 */
public class SystemAction extends CommonAction {
	private static final long serialVersionUID = -3588626533445197273L;
	private RegisterMessage registerMessage = new RegisterMessage();
	private LoginMessage loginMessage = new LoginMessage();
	private CookieUtils cookieUtils = new CookieUtils();
	final Logger logger = LoggerFactory.getLogger(SystemAction.class);
	private User user;
	private String birthday;
	
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	@Autowired
	private SystemService systemService;
	/** 注册页面验证码 */
	private String validateCode;
	private String remPass;


	// 转向修改用户资料页面
	public String updateInfoUI() {
		user = (User) session.getAttribute(ApplicationValue.USER_KEY_ON_SESSION);
		if (user == null) {
			return "forwardLogin";
		}
		this.birthday = (new SimpleDateFormat("yyyy-MM-dd")).format(user.getBirthday());
		return "updateInfoUI";
	}

	// 修改用户资料
	public String updateInfo() throws Exception {
		User u = (User) session
				.getAttribute(ApplicationValue.USER_KEY_ON_SESSION);
		if (u == null) {
			return "forwardLogin";
		}
		if (user.getNick() != null)
			u.setNick(user.getNick());
		if (user.getUserName() != null)
			u.setUserName(user.getUserName());

		if (birthday != null && !"".equals(birthday)) {
			Date bir = (new SimpleDateFormat("yyyy-MM-dd")).parse(birthday);
			u.setBirthday(bir);
		}

		if (user.getSex() != null)
			u.setSex(user.getSex());
		if (user.getIdcardNumber() != null)
			u.setIdcardNumber(user.getIdcardNumber());
		if (user.getEducation() != null)
			u.setEducation(user.getEducation());
		if (user.getForeignCountrie() != null)
			u.setForeignCountrie(user.getForeignCountrie());
		if (user.getGraduateSchool() != null)
			u.setGraduateSchool(user.getGraduateSchool());
		if (user.getPhoneNumber() != null)
			u.setPhoneNumber(user.getPhoneNumber());
		if (user.getCountrie() != null)
			u.setCountrie(user.getCountrie());
		if (user.getProvinceAndCity() != null)
			u.setProvinceAndCity(user.getProvinceAndCity());
		if (user.getAddress() != null)
			u.setAddress(user.getAddress());
		if (user.getZipCode() != null)
			u.setZipCode(user.getZipCode());
		if (user.getEmail() != null)
			u.setEmail(user.getEmail());
		if (user.getQq() != null)
			u.setQq(user.getQq());

		systemService.updateUser(u);
		return "updateInfo";
	}

	// 转向修改密码页面
	public String updatePasswordUI() {
		return "updatePasswordUI";
	}

	// 修改密码
	public String updatePassword() throws Exception {
		// 验证当前密码
		if ("".equals(user.getOldPassword())) {
			registerMessage.setPasswordMessage("当前密码不能为空！");
			return "updatePasswordUI";
		}
		User u = (User) session
				.getAttribute(ApplicationValue.USER_KEY_ON_SESSION);
		if (u == null) {
			return "forwardLogin";
		}
		if (!u.getNowPassword().equals(user.getOldPassword())) {
			registerMessage.setPasswordMessage("当前密码输入错误！");
			return "updatePasswordUI";
		}
		String nowPD;
		// 验证新密码
		if (!(StringUtils.isNotBlank(user.getNowPassword()))) {
			registerMessage.setPasswordMessage("密码为空!");
			return "updatePasswordUI";
		} else {
			String[] passwords = user.getNowPassword().split(",");
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

		if (u.getOldPassword() != null && !"".equals(u.getOldPassword())) {
			u.setThanOldPassword(u.getOldPassword());
		}
		u.setOldPassword(user.getOldPassword());
		u.setNowPassword(nowPD);
		systemService.updateUser(u);
		return logout();
	}

	// 用户退出
	public String logout() {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.removeAttribute(ApplicationValue.USER_KEY_ON_SESSION);
		Cookie cookie = cookieUtils.delCookie(request);
		if (cookie != null)
			response.addCookie(cookie);
		return "forwardLogin";
	}

	public String validateLoginInfo() {
		if ("".equals(user.getUserId())) {
			loginMessage.setUserIdMessage("用户名不能为空！");
		}
		if ("".equals(user.getNowPassword())) {
			loginMessage.setPasswordMessage("密码不能为空！");
		}

		if (loginMessage.isNotEmpty())
			return "forwardLogin";
		User userTemp = systemService.validateUser(user);
		if (null == userTemp) { // 没有此用户
			addActionError("用户不存在，请先注册！");
			return "forwardLogin";
		} else if (null != userTemp
				&& !userTemp.getNowPassword().equals(user.getNowPassword())) {// 存在此用户，但是用户名密码对不上
			addActionError("用户名输入有误！请输入正确的用户名密码！");
			return "forwardLogin";
		} else {// 存在此用户并输入正确

			if (null != remPass && "on".equals(remPass)) {// 判断是否记住用户名密码

				Cookie cookie = cookieUtils.addCookie(user);
				response = ServletActionContext.getResponse();
				response.addCookie(cookie);// 添加cookie到response中

			}

			session.setAttribute(ApplicationValue.USER_KEY_ON_SESSION, userTemp);// 添加用户到session中
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
		user = cookieUtils.getCookie(request);
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
		if (user != null) {
			// 验证用户ID
			if (!(StringUtils.isNotBlank(user.getUserId()) && user.getUserId()
					.length() > 5)) {
				registerMessage.setUserIdMessage("用户名非法!");
			}
			// 验证密码
			if (!(StringUtils.isNotBlank(user.getNowPassword()))) {
				registerMessage.setPasswordMessage("密码为空!");
			} else {
				String[] passwords = user.getNowPassword().split(",");
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
			if (!(StringUtils.isNotBlank(user.getEmail()))) {
				registerMessage.setEmailMessage("邮箱非法!");
			}
			// 对比验证码
			if (StringUtils.isNotBlank(user.getUserId())) {
				// 获取session中验证码
				String valiCode = "";
				try {
					valiCode = (String) session.getAttribute("valiCode")
							.toString();
				} catch (Exception e) {
					e.getMessage();
				}
				if (!valiCode.equals(validateCode)) {
					registerMessage.setValiCodeMessage("验证码不正确!");
				}
			} else if (StringUtils.isBlank(user.getUserId())) {
				registerMessage.setValiCodeMessage("请填写验证码!");
			}
		}
		if (registerMessage.isNotEmpty()) {
			// 表单错误 转向注册页面并清除密码和验证码
			user.setNowPassword("");
			validateCode = "";
			return forwardRegister();
		}
		// 保存用户
		try {
			if (user != null && StringUtils.isNotBlank(user.getNowPassword())) {
				// 两次去人输入的密码去掉一个
				user.setNowPassword(user.getNowPassword().split(",")[0].trim());
				// 设置主键
				user.setId(UUIDCreate.getUUID());
			}
			systemService.saveUser(user);
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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
