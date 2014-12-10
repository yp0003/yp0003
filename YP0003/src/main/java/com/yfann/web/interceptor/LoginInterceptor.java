package com.yfann.web.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.pojo.OaEmployee;

/**
 * @Description: 全局用户登录验证
 * @Author Tree
 */
public class LoginInterceptor extends MethodFilterInterceptor {
	
	private static final long serialVersionUID = 6756595159043498378L;

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		String result = "toerror";
		HttpServletRequest request = ServletActionContext.getRequest();
		//获取session中,是否有用户或者客户,如果没有,则转向登录页面;如果有,则放行
		HttpSession session = request.getSession();
		OaEmployee oaEmployee = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if(oaEmployee!=null){
			//拦截没有访问权限的URL
			@SuppressWarnings("unchecked")
			List<String> url = (List<String>) session.getAttribute("urls");
			String requestURI = request.getRequestURI();
			for(String s : url){
				if(requestURI.contains(s))
					return result;
			}
			result = invocation.invoke();
		}
		return result;
	}
	
	/** 判断是集合中是否包含此字段 */
}
