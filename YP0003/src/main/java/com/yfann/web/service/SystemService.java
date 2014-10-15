package com.yfann.web.service;

import com.yfann.web.pojo.User;

public interface SystemService {
	/**
	 * 保存用户
	 * @param user
	 * @throws Exception
	 */
	public void saveUser(User user) throws Exception;
	
	public User validateUser(User user);
}
