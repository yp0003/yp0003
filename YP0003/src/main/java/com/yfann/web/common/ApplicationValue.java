package com.yfann.web.common;
/**
 * 系统常量值
 * @author Simon
 *
 */
public class ApplicationValue {
	/** session中存放用户对象的key*/
	public final static String USER_KEY_ON_SESSION = "userInfo";
	/**邮件发送源*/
	public final static String MAIL_SEND_FROM = "767175432@qq.com";
	
	/**邮件发送源*/
	public final static String MAIL_FIND_PASSWORD_SUBJECT = "365ITEDU密码找回提示";
	
	/**默认分页大小*/
	public static Integer pageSize = 10;
    /**支付宝提供给商户的服务接入网关URL(新)*/
	public static String ALIPAY_GATEWAY = "https://mapi.alipay.com/gateway.do?";

}
