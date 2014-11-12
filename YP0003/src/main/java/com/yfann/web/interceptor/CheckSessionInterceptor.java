package com.yfann.web.interceptor;

import java.lang.reflect.Method;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.yfann.web.annotation.UserSessionCheck;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.pojo.User;

public class CheckSessionInterceptor extends MethodFilterInterceptor{
	private static final long serialVersionUID = 4791403798322835556L;
	final Logger logger = LoggerFactory.getLogger(CheckSessionInterceptor.class);
	@SuppressWarnings("unchecked")
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		Object targetAction = invocation.getAction();
		String methodName = invocation.getProxy().getMethod();
		if(StringUtils.isNotBlank(methodName)){
			@SuppressWarnings("rawtypes")
			Class clazz = targetAction.getClass();
			Method methodTarget = clazz.getMethod(methodName, null);
			UserSessionCheck userSessionCheck = methodTarget.getAnnotation(UserSessionCheck.class);
			if(userSessionCheck != null){
				@SuppressWarnings("deprecation")
				Object userInfoTemp = ServletActionContext.getRequest().getSession().getValue(ApplicationValue.USER_KEY_ON_SESSION);
				User userInfo = (User)userInfoTemp;
				if(userInfo != null){
					return invocation.invoke();
				}else{
					return "forwardIndex";
				}
			}
		}
		return invocation.invoke();
	}
}
