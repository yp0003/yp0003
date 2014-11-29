package com.yfann.web.action.oa;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.common.OaCookieUtils;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaMenu;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.service.OaMenuService;
import com.yfann.web.vo.OaLoginMessage;
import com.yfann.web.vo.OaRegisterMessage;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaLoginAction extends CommonAction {
	private static final long serialVersionUID = 8574746594084487602L;

	private OaRegisterMessage oaRegisterMessage = new OaRegisterMessage();
	private OaLoginMessage oaLoginMessage = new OaLoginMessage();
	private OaCookieUtils oaCookieUtils = new OaCookieUtils();
	final Logger logger = LoggerFactory.getLogger(OaLoginAction.class);

	private OaEmployee oaEmployee;
	@Autowired
	private OaEmployeeService oaEmployeeService;
	@Autowired
	private OaMenuService oaMenuService;

	/** 注册页面验证码 */
	private String validateCode;
	private String remPass;

	public String getOaMenu() throws Exception {
		List<OaMenu> list = oaMenuService.getAllOaMenu();
		ActionContext.getContext().getValueStack().push(list);
		return SUCCESS;

	}

	// 跳转到欢迎页
	public String welcome() {
		return "welcome";
	}

	// 跳转到主页
	public String forwardIndex() throws Exception {
		return "forwardIndex";
	}

	// 用户退出
	public String logout() {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.removeAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		Cookie cookie = oaCookieUtils.delCookie(request);
		if (cookie != null)
			response.addCookie(cookie);
		return "forwardLogin";
	}

	// 跳转到登录界面
	public String forwardLogin() {
		request = ServletActionContext.getRequest();
		oaEmployee = oaCookieUtils.getEmpCookie(request);
		return "forwardLogin";
	}

	// 验证登录信息
	public String validateLoginInfo() throws Exception {
		if ("".equals(oaEmployee.getEmployeeId())) {
			// oaLoginMessage.setEmployeeIdMessage("用户名不能为空！");
			addActionError("用户名不能为空！");
			return "forwardLogin";
		}
		if ("".equals(oaEmployee.getNowPassword())) {
			// oaLoginMessage.setPasswordMessage("密码不能为空！");
			addActionError("密码不能为空！");
			return "forwardLogin";
		}
		if ("".equals(validateCode)) {
			// oaLoginMessage.setPasswordMessage("请填写验证码！");
			addActionError("请填写验证码！");
			return "forwardLogin";
		}
		// 对比验证码
		String valiCode = (String) session.getAttribute("valiCode").toString();
		if (!valiCode.equals(validateCode)) {
			// oaLoginMessage.setValiCodeMessage("验证码不正确!");
			addActionError("验证码不正确!");
			return "forwardLogin";
		}
		// 有错误信息则返回登录
		// if (oaLoginMessage.isNotEmpty()) {
		// return "forwardLogin";
		// }

		OaEmployee oaEmployeeTemp = oaEmployeeService.validateOaEmployee(oaEmployee.getEmployeeId());
		if (null == oaEmployeeTemp) { // 没有此用户
			addActionError("用户不存在，请先注册！");
			return "forwardLogin";
		} else if (null != oaEmployeeTemp
				&& !oaEmployeeTemp.getNowPassword().equals(oaEmployee.getNowPassword())) {// 存在此用户，但是用户名密码对不上
			addActionError("用户名输入有误！请输入正确的用户名密码！");
			return "forwardLogin";
		} else {// 存在此用户并输入正确

			if (null != remPass && "on".equals(remPass)) {// 判断是否记住用户名密码

				Cookie cookie = oaCookieUtils.addCookie(oaEmployee);
				response = ServletActionContext.getResponse();
				response.addCookie(cookie);// 添加cookie到response中

			}
			session.setAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION, oaEmployeeTemp);// 添加用户到session中
			// 保存最后一次登录时间
			oaEmployeeTemp.setLastLoginTime(new Date());
			oaEmployeeService.updateOaEmployee(oaEmployeeTemp);
			return "loginSuccess";
		}

	}

	// 跳转到注册界面
	public String forwardRegister() {
		return "forwardRegister";
	}

	// 员工注册
	public String register() throws Exception {
		if (oaEmployee != null) {
			// 验证用户ID
			if (!(StringUtils.isNotBlank(oaEmployee.getEmployeeId()) && oaEmployee.getEmployeeId().length() > 5)) {
				oaRegisterMessage.setEmployeeIdMessage("用户名非法!");
			}
			// 验证密码
			if (!(StringUtils.isNotBlank(oaEmployee.getNowPassword()))) {
				oaRegisterMessage.setPasswordMessage("密码为空!");
			} else {
				String[] passwords = oaEmployee.getNowPassword().split(",");
				if (passwords.length != 2) {
					oaRegisterMessage.setPasswordMessage("密码非法!");
				} else if (passwords.length > 1) {
					if (passwords[0].trim().length() < 5 && passwords[0].trim().length() > 20) {
						oaRegisterMessage.setPasswordMessage("密码过长或过短!");
					} else if (!passwords[0].trim().equals(passwords[1].trim())) {
						oaRegisterMessage.setPasswordMessage("两次密码不一致!");
					}
				}
			}
			// 验证邮箱
			if (!(StringUtils.isNotBlank(oaEmployee.getEmail()))) {
				oaRegisterMessage.setEmailMessage("邮箱非法!");
			}
			// 对比验证码
			if (StringUtils.isNotBlank(oaEmployee.getEmployeeId())) {
				// 获取session中验证码
				String valiCode = (String) session.getAttribute("valiCode").toString();
				if (!valiCode.equals(validateCode)) {
					oaRegisterMessage.setValiCodeMessage("验证码不正确!");
				}
			} else if (StringUtils.isBlank(oaEmployee.getEmployeeId())) {
				oaRegisterMessage.setValiCodeMessage("请填写验证码!");
			}
		}
		if (oaRegisterMessage.isNotEmpty()) {
			// 表单错误 转向注册页面并清除密码和验证码
			oaEmployee.setNowPassword("");
			validateCode = "";
			return forwardRegister();
		}
		// 保存用户
		try {
			if (oaEmployee != null && StringUtils.isNotBlank(oaEmployee.getNowPassword())) {
				// 两次去人输入的密码去掉一个
				oaEmployee.setNowPassword(oaEmployee.getNowPassword().split(",")[0].trim());
				// 设置主键
				oaEmployee.setId(OaUUIDCreate.getUUID());
			}
			oaEmployeeService.saveOaEmployee(oaEmployee);
		} catch (Exception e) {
			logger.error("系统错误");
			logger.error(e.getMessage());
			throw new Exception(e.getMessage());
		}
		return forwardLogin();
	}

	// 绘制验证码图片
	public void validateCode() throws Exception {
		// 通知浏览器，图片不要缓存
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setHeader("Expires", "-1");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");

		int width = 80;
		int height = 25;
		// 搞出代表内存图片的对象BufferedImage
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
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
			g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width), r.nextInt(height));

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

	public OaRegisterMessage getOaRegisterMessage() {
		return oaRegisterMessage;
	}

	public void setOaRegisterMessage(OaRegisterMessage oaRegisterMessage) {
		this.oaRegisterMessage = oaRegisterMessage;
	}

	public OaLoginMessage getOaLoginMessage() {
		return oaLoginMessage;
	}

	public void setOaLoginMessage(OaLoginMessage oaLoginMessage) {
		this.oaLoginMessage = oaLoginMessage;
	}

	public OaEmployee getOaEmployee() {
		return oaEmployee;
	}

	public void setOaEmployee(OaEmployee oaEmployee) {
		this.oaEmployee = oaEmployee;
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public String getRemPass() {
		return remPass;
	}

	public void setRemPass(String remPass) {
		this.remPass = remPass;
	}
}
