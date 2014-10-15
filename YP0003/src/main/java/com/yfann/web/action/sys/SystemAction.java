package com.yfann.web.action.sys;

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
	private LoginMessage  loginMessage = new LoginMessage();
	private CookieUtils cookieUtils = new CookieUtils(); 
	private HttpServletResponse response;  
	private HttpServletRequest request; 
	public static final String USER_SESSION = "user.session"; 
	final Logger logger = LoggerFactory.getLogger(SystemAction.class);
	private User user;
	@Autowired
	private SystemService systemService;
	/**
	 * 注册页面验证码
	 */
	private String validateCode;
	
	private String remPass;
	
	public String validateLoginInfo(){
		if("".equals(user.getUserId())){
			loginMessage.setUserIdMessage("用户名不能为空！");
		}
		if("".equals(user.getNowPassword())){
			loginMessage.setPasswordMessage("密码不能为空！");
		}
		
		if(loginMessage.isNotEmpty())
			return "forwardLogin";
		User userTemp = systemService.validateUser(user);
		if(null == userTemp){			//没有此用户
			addActionError("用户不存在，请先注册！");
			return "forwardLogin";
		}else if(null != userTemp && !userTemp.getNowPassword().equals(user.getNowPassword())){//存在此用户，但是用户名密码对不上
			addActionError("用户名输入有误！请输入正确的用户名密码！");
			return "forwardLogin";
		}else{//存在此用户并输入正确
			
			if(null != remPass && "on".equals(remPass)){//判断是否记住用户名密码
				
				Cookie cookie = cookieUtils.addCookie(user); 
				response = ServletActionContext.getResponse();
		        response.addCookie(cookie);// 添加cookie到response中
 
			}
	        
	        HttpSession session = request.getSession();  
	    	session.setAttribute(SystemAction.USER_SESSION, user);// 添加用户到session中	    	
			return "loginSuccess";
		}

	}

	public String forwardLogin() {
		request = ServletActionContext.getRequest();
		user = cookieUtils.getCookie(request);	 
		return "forwardLogin";
	}

	public String forwardRegister() {
		return "forwardRegister";
	}

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
					if (passwords[0].trim().length() < 5 && passwords[0].trim().length() > 20) {
						registerMessage.setPasswordMessage("密码过长或过短!");
					}
					else if(!passwords[0].trim().equals(passwords[1].trim())){
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
					valiCode = (String) session.getAttribute("valiCode").toString();
				}
				catch (Exception e){
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
		//保存用户
		try{
			if(user != null && StringUtils.isNotBlank(user.getNowPassword())) {
				//两次去人输入的密码去掉一个
				user.setNowPassword(user.getNowPassword().split(",")[0].trim());
				//设置主键
				user.setId(UUIDCreate.getUUID());
			}
			systemService.saveUser(user);
		}catch (Exception e) {
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

	
	public LoginMessage getLoginMessage() {
		return loginMessage;
	}

	public void setLoginMessage(LoginMessage loginMessage) {
		this.loginMessage = loginMessage;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getRemPass() {
		return remPass;
	}

	public void setRemPass(String remPass) {
		this.remPass = remPass;
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

	
}
