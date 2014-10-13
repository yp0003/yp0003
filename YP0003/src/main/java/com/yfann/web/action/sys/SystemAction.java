package com.yfann.web.action.sys;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.yfann.web.pojo.User;
import com.yfann.web.vo.RegisterMessage;

/**
 * @Description: 页面转向action
 * @author Tree
 * 
 */
public class SystemAction extends CommonAction<User> {
	private static final long serialVersionUID = -3588626533445197273L;
	private RegisterMessage registerMessage = new RegisterMessage();
	/**
	 * 注册页面验证码
	 */
	private String validateCode;
	public String forwardLogin() {
		return "forwardLogin";
	}
	
	public String forwardRegister() {
		return "forwardRegister";
	}
	public String register() {
		User user = getModel();
		if(user != null) {
			//验证用户ID
			if(!(StringUtils.isNotBlank(user.getUserId()) && user.getUserId().length() > 5)){
				registerMessage.setUserIdMessage("用户名非法!");
			}
			//验证密码
			if(!(StringUtils.isNotBlank(user.getNowPassword()) && user.getNowPassword().length() > 5 && user.getNowPassword().length() < 20)){
				registerMessage.setPasswordMessage("密码非法!");
			}
			//验证邮箱
			if(!(StringUtils.isNotBlank(user.getEmail()))){
				registerMessage.setEmailMessage("邮箱非法!");
			}
			//对比验证码
			if(StringUtils.isNotBlank(user.getUserId())){
				//获取session中验证码
				String valiCode = (String)session.getAttribute("valiCode");
				if(!valiCode.equals(validateCode)) {
					registerMessage.setValiCodeMessage("验证码不正确!");
				}
			}else if(StringUtils.isBlank(user.getUserId())) {
				registerMessage.setValiCodeMessage("请填写验证码!");
			}
		}
		if(registerMessage.isNotEmpty()) {
			return "register";
		}
		//表单错误 转向注册页面并清除密码和验证码
		getModel().setNowPassword("");
		validateCode = "";
		return forwardLogin();
	}

	public void validateCode() throws Exception {
		//通知浏览器，图片不要缓存
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setHeader("Expires", "-1");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		int width = 80;
		int height = 25;
		//搞出代表内存图片的对象BufferedImage
		BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		//取到画笔：开始画
		Graphics g = image.getGraphics();
		//背景
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, width, height);
		
		//画边框
		g.setColor(Color.GRAY);
		g.drawRect(1, 1, width-2, height-2);
		//画干扰线
		g.setColor(Color.GRAY);
		Random r = new Random();
		for(int i=0;i<30;i++)
			g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width), r.nextInt(height));
		
		//写随机验证码
		
		g.setColor(Color.RED);
		g.setFont(new Font("宋体",Font.BOLD|Font.ITALIC,18));
		//数字
		int x = 10;
		StringBuffer valiCode = new StringBuffer();
		String valiCodeTemp = "";
		for(int i=0;i<4;i++){
			valiCodeTemp = r.nextInt(10)+"";
			g.drawString(valiCodeTemp, x, 20);
			valiCode.append(valiCodeTemp);
			x+=15;
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

}
