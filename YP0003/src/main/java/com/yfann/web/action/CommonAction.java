package com.yfann.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.pojo.User;

public class CommonAction extends ActionSupport{
	final Logger logger = LoggerFactory.getLogger(CommonAction.class);
	private static final long serialVersionUID = 826683513481606641L;
	/**HttpSession*/
	protected HttpSession session = ServletActionContext.getRequest().getSession();
	/**HttpServletRequest*/
	protected HttpServletRequest request = ServletActionContext.getRequest();
	/**HttpServletResponse*/
	protected HttpServletResponse response = ServletActionContext.getResponse();

	/**
	 * 返回应用跟路径：http://localhost:8080/YP0003
	 */
	public String getBasePath() {
		return ServletActionContext.getRequest().getScheme() + "://"
				+ ServletActionContext.getRequest().getServerName() + ":"
				+ ServletActionContext.getRequest().getServerPort()
				+ ServletActionContext.getRequest().getContextPath();
	}
	
	/**
	 * 获取当前登陆人
	 * @return
	 */
	public User currentUserInfo() {
		@SuppressWarnings("deprecation")
		Object userObj = session.getValue(ApplicationValue.USER_KEY_ON_SESSION);
		User userInfo = (User) userObj;
		return userInfo;
	}

	public PrintWriter getOut(){
		try {
			return response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
