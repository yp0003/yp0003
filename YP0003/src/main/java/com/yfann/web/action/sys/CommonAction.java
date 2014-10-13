package com.yfann.web.action.sys;

import java.lang.reflect.ParameterizedType;

import javax.servlet.http.HttpSession;

import org.apache.poi.ss.formula.functions.T;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("hiding")
public class CommonAction<T> extends ActionSupport implements ModelDriven<T> {
	final Logger logger = LoggerFactory.getLogger(CommonAction.class);
	private static final long serialVersionUID = 826683513481606641L;
	HttpSession session = ServletActionContext.getRequest().getSession();
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public CommonAction() {
		ParameterizedType type = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		Class class1 = (Class) type.getActualTypeArguments()[0];
		try {
			this.t = (T) class1.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}

	private T t;

	@Override
	public T getModel() {
		return this.t;
	}

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
