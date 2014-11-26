package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.User;
import com.yfann.web.vo.PageInfo;

/**
 * 我的中心业务逻辑
 * @author Simon
 *
 */
public interface MyCenterService {
	public boolean commitSmartCode(MyProduct myProduct);
	/**
	 * 查询我的课程
	 * @param user
	 * @param myProduct
	 * @return
	 */
	public List<MyProduct> findMyProductList(User user,MyProduct myProduct,PageInfo pageInfo);
	/**
	 * 根据id查询用户
	 * @return
	 */
	public User findUserInfoById(User user);
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
