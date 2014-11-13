/*
 * AlipayAction.java
 * V 1.0.0
 *
 * Copyright © 2014 上海颐凡科技有限公司 版权所有
 *
 * 所有文字、代码资料，版权均属上海颐凡科技有限公司所有，任
 * 何公司或个人未经本司协议授权，不得复制、下载、存储或公开
 * 显示。违者本公司将依法追究责任。
 */
package com.yfann.web.action;

import com.yfann.web.annotation.UserSessionCheck;

/**
 * 支付宝在线支付Action
 * @author Simon
 *
 */
public class AlipayAction extends CommonAction{
	/**接口名称*/
	private String service = "create_direct_pay_by_user";
	/**	合作者身份ID */
	private String partner = "2088511821472728";
	/**商户网站使用的编码*/
	private String _input_charset = "utf-8";
	/**签名方式*/
	private String sign_type = "MD5";
	/**签名*/
	private String sign;
	/**服务器异步通知页面路径 (支付宝服务器主动通知商户网站里指定的页面http路径)*/
	private String notify_url;
	/**页面跳转同步通知页面路径(支付宝处理完请求后，当前页面自动跳转到商户网站里指定页面的http路径。)*/
	private String return_url;
	/**
	 * 重定向支付
	 */
	@UserSessionCheck
	public void redirectPay(){
		
	}
	/****************************************************************************************************************************/
	
	private static final long serialVersionUID = -7310817509443505181L;
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getPartner() {
		return partner;
	}
	public void setPartner(String partner) {
		this.partner = partner;
	}
	public String get_input_charset() {
		return _input_charset;
	}
	public void set_input_charset(String _input_charset) {
		this._input_charset = _input_charset;
	}
	public String getSign_type() {
		return sign_type;
	}
	public void setSign_type(String sign_type) {
		this.sign_type = sign_type;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getNotify_url() {
		return notify_url;
	}
	public void setNotify_url(String notify_url) {
		this.notify_url = notify_url;
	}
	public String getReturn_url() {
		return return_url;
	}
	public void setReturn_url(String return_url) {
		this.return_url = return_url;
	}
}
