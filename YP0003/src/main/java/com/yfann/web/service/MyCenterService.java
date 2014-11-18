package com.yfann.web.service;

import com.yfann.web.pojo.User;

/**
 * 我的中心业务逻辑
 * @author Simon
 *
 */
public interface MyCenterService {
	/**
	 * 更新密码
	 * @param user
	 * @return
	 */
	public boolean updatePassword(User user);
	
	/**
	 * 更新个人信息
	 * @param user
	 * @return
	 */
	public boolean updateSingleInfo(User user);

}
