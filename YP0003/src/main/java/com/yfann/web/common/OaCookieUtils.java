package com.yfann.web.common;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.yfann.web.pojo.OaEmployee;


public class OaCookieUtils {
    public static final String EMPLOYEE_COOKIE = "employee.cookie";  
    
    public Cookie addCookie(OaEmployee oaEmployee) {  
    	Cookie cookie = new Cookie(EMPLOYEE_COOKIE, oaEmployee.getEmployeeId() + ","  
    			+ oaEmployee.getNowPassword());  
    	cookie.setMaxAge(60 * 60 * 24 * 14);// cookie保存两周  
    	return cookie;  
    }  
  
    
    //获取cookie并得到员工
    public OaEmployee getEmpCookie(HttpServletRequest request) { 
    	Cookie[] cookies = request.getCookies();  
    	if (cookies != null) {  
    		for (Cookie cookie : cookies) {  
    			if (OaCookieUtils.EMPLOYEE_COOKIE.equals(cookie.getName())) {  
    				String value = cookie.getValue();  
    				if ("".equals(value)) {  
    					String[] split = value.split(",");  
    					String employeeId = split[0];  
    					String password = split[1];  
    					OaEmployee oaEmployee = new OaEmployee();  
    					oaEmployee.setEmployeeId(employeeId);
    					oaEmployee.setNowPassword(password);
    					return oaEmployee;
    					
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
                if (EMPLOYEE_COOKIE.equals(cookie.getName())) {  
                    cookie.setValue("");  
                    cookie.setMaxAge(0);  
                    return cookie;  
                }  
            }  
        }  
        return null;  
    }  
}  