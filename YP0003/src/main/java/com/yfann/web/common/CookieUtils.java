package com.yfann.web.common;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.yfann.web.pojo.Employee;
import com.yfann.web.pojo.User;


public class CookieUtils {
    public static final String USER_COOKIE = "user.cookie";  
    public static final String EMPLOYEE_COOKIE = "employee.cookie";  
    
    // 添加一个cookie  
    public Cookie addCookie(User user) {  
        Cookie cookie = new Cookie(USER_COOKIE, user.getUserId() + ","  
                + user.getNowPassword());  
        System.out.println("添加cookie");  
        cookie.setMaxAge(60 * 60 * 24 * 14);// cookie保存两周  
        return cookie;  
    }  
    public Cookie addCookie(Employee employee) {  
    	Cookie cookie = new Cookie(USER_COOKIE, employee.getEmpId() + ","  
    			+ employee.getNowPassword());  
    	cookie.setMaxAge(60 * 60 * 24 * 14);// cookie保存两周  
    	return cookie;  
    }  
  
    // 得到cookie  
    public User getCookie(HttpServletRequest request) { 
        Cookie[] cookies = request.getCookies();  
        System.out.println("cookies: " + cookies);  
        if (cookies != null) {  
            for (Cookie cookie : cookies) {  
                System.out.println("cookie: " + cookie.getName());  
                if (CookieUtils.USER_COOKIE.equals(cookie.getName())) {  
                    String value = cookie.getValue();  
                    if ("".equals(value)) {  
                        String[] split = value.split(",");  
                        String userId = split[0];  
                        String password = split[1];  
                        User user = new User();//userMapper.checkUser(username, password);  
                        user.setUserId(userId);
                        user.setNowPassword(password);
                        return user;

                    }  
                }  
            }  
        }  
        return null;  
    }  
    public Employee getEmpCookie(HttpServletRequest request) { 
    	Cookie[] cookies = request.getCookies();  
    	if (cookies != null) {  
    		for (Cookie cookie : cookies) {  
    			if (CookieUtils.EMPLOYEE_COOKIE.equals(cookie.getName())) {  
    				String value = cookie.getValue();  
    				if ("".equals(value)) {  
    					String[] split = value.split(",");  
    					String userId = split[0];  
    					String password = split[1];  
    					Employee employee = new Employee();  
    					employee.setEmpId(userId);
    					employee.setNowPassword(password);
    					return employee;
    					
    				}  
    			}  
    		}  
    	}  
    	return null;  
    }  
  
    // 删除cookie  
    public Cookie delCookie(HttpServletRequest request) {  
        Cookie[] cookies = request.getCookies();  
        if (cookies != null) {  
            for (Cookie cookie : cookies) {  
                if (USER_COOKIE.equals(cookie.getName())) {  
                    cookie.setValue("");  
                    cookie.setMaxAge(0);  
                    return cookie;  
                }  
            }  
        }  
        return null;  
    }  
}  