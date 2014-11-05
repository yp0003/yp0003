package com.yfann.web.service;

import com.yfann.web.pojo.User;
import com.yfann.web.vo.MailContext;

public interface SystemService {
	/**
	 * 保存用户
	 * 
	 * @param user
	 * @throws Exception
	 */
	public void saveUser(User user) throws Exception;

	/**
	 * 更新用户
	 * 
	 * @param user
	 * @throws Exception
	 */
	public void updateUser(User user) throws Exception;

	public User validateUser(User user);
	
	/**
	 * 发送邮件
	 * @param user
	 * @param mailContext
	 */
	public void sendMail(User user,MailContext mailContext);
}
