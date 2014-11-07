package com.yfann.web.action;

import java.io.ByteArrayInputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;

public class CommonAction extends ActionSupport{
	final Logger logger = LoggerFactory.getLogger(CommonAction.class);
	private static final long serialVersionUID = 826683513481606641L;
	/**HttpSession*/
	protected HttpSession session = ServletActionContext.getRequest().getSession();
	/**HttpServletRequest*/
	protected HttpServletRequest request = ServletActionContext.getRequest();
	/**HttpServletResponse*/
	protected HttpServletResponse response = ServletActionContext.getResponse();
	/**Struts2下载(内存数据下载)*/
	public ByteArrayInputStream byteArrayInputStream;

	/**
	 * 返回应用跟路径：http://localhost:8080/YP0003
	 */
	public String getBasePath() {
		return ServletActionContext.getRequest().getScheme() + "://"
				+ ServletActionContext.getRequest().getServerName() + ":"
				+ ServletActionContext.getRequest().getServerPort()
				+ ServletActionContext.getRequest().getContextPath();
	}

	public ByteArrayInputStream getByteArrayInputStream() {
		return byteArrayInputStream;
	}

	public void setByteArrayInputStream(ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}
	
	
}
