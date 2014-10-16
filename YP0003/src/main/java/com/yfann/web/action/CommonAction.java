package com.yfann.web.action;

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
	HttpSession session = ServletActionContext.getRequest().getSession();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
//	@SuppressWarnings({ "rawtypes", "unchecked" })
//	public CommonAction() {
//		ParameterizedType type = (ParameterizedType) this.getClass()
//				.getGenericSuperclass();
//		Class class1 = (Class) type.getActualTypeArguments()[0];
//		try {
//			this.t = (T) class1.newInstance();
//		} catch (InstantiationException e) {
//			e.printStackTrace();
//		} catch (IllegalAccessException e) {
//			e.printStackTrace();
//		}
//	}
//
//	private T t;
//
//	@Override
//	public T getModel() {
//		return this.t;
//	}

	/**
	 * 返回应用跟路径：http://localhost:8080/YP0003
	 */
	public String getBasePath() {
		return ServletActionContext.getRequest().getScheme() + "://"
				+ ServletActionContext.getRequest().getServerName() + ":"
				+ ServletActionContext.getRequest().getServerPort()
				+ ServletActionContext.getRequest().getContextPath();
	}
}
