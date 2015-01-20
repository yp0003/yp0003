package com.yfann.web.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.common.CookieUtils;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.User;
import com.yfann.web.service.ProductService;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.LoginMessage;
import com.yfann.web.vo.MailContext;
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

	@Autowired
	private SystemService systemService;
	/** 注册页面验证码 */
	private String validateCode;
	private String remPass;
	@Autowired
	private ProductService productService;
	
	private List<Product> productList;
	
	
	public String forwardTest() {
		return "forwardTest";
	}

	/**
	 * 跳转到找回密码页面
	 * 
	 * @return
	 */
	@SkipValidation
	public String forwardFindPassword() {
		return "forwardFindPassword";
	}

	/**
	 * 找回密码功能
	 * 
	 * @return
	 */
	@SkipValidation
	public String findPassword() {
		if (user != null) {
			try{
			User userInfo = systemService.findUserByUserId(user.getUserId());
			MailContext mailContext = new MailContext();
			mailContext
					.setMailSubject(ApplicationValue.MAIL_FIND_PASSWORD_SUBJECT);
			mailContext.setTextContext("尊敬的" + user.getUserId() + "您好,您的密码为"
					+ userInfo.getNowPassword() + "请妥善保存好您的密码.");
			
			systemService.sendMail(user.getEmail(), mailContext);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return "forwardLogin";
	}

	/**
	 * 
	 * 跳转到注册页面
	 * 
	 * @return
	 */
	@SkipValidation
	public String forwardRegister() {
		return "forwardRegister";
	}

	/**
	 * 退出功能
	 * 
	 * @return
	 */
	@SkipValidation
	public String logout() {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.removeAttribute(ApplicationValue.USER_KEY_ON_SESSION);
		Cookie cookie = cookieUtils.delCookie(request);
		if (cookie != null)
			response.addCookie(cookie);
		return "forwardLogin";
	}

	/**
	 * 登陆
	 * 
	 * @return
	 */
	@SkipValidation
	public String login() throws Exception{
		if (user != null) {
			User userTemp = null;
			try{
				userTemp = systemService.valiDateLogin(user);
			}catch(Exception e){
				logger.error(e.getMessage());
				e.printStackTrace();
			}
			if (userTemp != null) {
				session.setAttribute(ApplicationValue.USER_KEY_ON_SESSION,
						userTemp);// 添加用户到session中
				return forwardIndex();
			}
		}
		productList = productService.findPerfectProductList();
		if(null ==productList)
			productList = new ArrayList<Product>();
		else{
			if(productList.size()<3)
				while(productList.size()==3){
					Product ptemp = new Product();
					ptemp.setProductDesc("暂无描述");
					productList.add(ptemp);
				}
		}
		return "forwardLogin";

	}

	/**
	 * 跳转到主页
	 * 
	 * @return
	 */
	@SkipValidation
	public String forwardIndex() {
		productList = productService.findPerfectProductList();
		return "forwardIndex";
	}

	/**
	 * 跳转到登录界面
	 *
	 * @return
	 */
	@SkipValidation
	public String forwardLogin() {
		request = ServletActionContext.getRequest();
		user = cookieUtils.getCookie(request);
		return "forwardLogin";
	}

	/**
	 * 注册功能
	 * 
	 * @return
	 */
	public String register() throws Exception {
		if (user != null) {
			user.setId(UUIDCreate.getUUID());
			@SuppressWarnings("deprecation")
			Object valiCodeObj = session.getValue("valiCode");
			String flagValiCode = valiCodeObj.toString();
			
			if (StringUtils.isNotBlank(flagValiCode)
					&& flagValiCode.equals(validateCode) && systemService.findUserByUserId(user.getUserId()) == null) {
				String[] passwordArray = user.getNowPassword().split(",");
				user.setNowPassword(passwordArray[0]);
				systemService.saveUser(user);
			}else{
				addActionMessage("验证码不正确或用户已存在");
			}
		}
		return "forwardRegister";
	}

	@SkipValidation
	public void validateCode() throws Exception {
		// 通知浏览器，图片不要缓存
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

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
	
	
}
