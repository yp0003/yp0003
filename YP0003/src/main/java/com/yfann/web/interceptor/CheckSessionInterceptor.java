package com.yfann.web.interceptor;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.pojo.User;

public class CheckSessionInterceptor extends MethodFilterInterceptor{
	private static final long serialVersionUID = 4791403798322835556L;
	final Logger logger = LoggerFactory.getLogger(CheckSessionInterceptor.class);
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		@SuppressWarnings("deprecation")
		Object userInfoTemp = ServletActionContext.getRequest().getSession().getValue(ApplicationValue.USER_KEY_ON_SESSION);
		User userInfo = (User)userInfoTemp;
		if(userInfo != null){
			return invocation.invoke();
		}
		return "forwardIndex";
	}

}
