package com.yfann.web.vo;

import java.lang.reflect.Method;

import com.yfann.web.annotation.UserSessionCheck;


public class Test {
	
	@UserSessionCheck
	public void aaaaa(){
	}
	public static void main(String[] args) throws Exception {
		Class clazz = Test.class;
		Method method = clazz.getMethod("aaaaa", null);
		UserSessionCheck userSessionCheck = method.getAnnotation(UserSessionCheck.class);
		System.out.println(userSessionCheck);
	}
}
