package com.yfann.web.service;

import com.yfann.web.pojo.User;
import com.yfann.web.vo.MailContext;

public interface SystemService {
	
	/**
	 * 根据用户ID超找用户
	 * @param userId
	 * @return
	 */
	public User findUserByUserId(String userId);
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

	/**
	 * 验证用户是否登陆
	 * @param user
	 * @return
	 */
	public User validateUser(User user);
	
	/**
	 * 发送邮件
	 * @param toEmail
	 * @param mailContext
	 */
	public void sendMail(String toEmail, MailContext mailContext);

    /**
     * 验证用户
     * @param user
     * @return
     */
    public User valiDateLogin(User user);
}
