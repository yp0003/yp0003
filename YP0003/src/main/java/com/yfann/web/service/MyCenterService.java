package com.yfann.web.service;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.List;

import com.yfann.web.pojo.Message;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.User;
import com.yfann.web.vo.PageInfo;

/**
 * 我的中心业务逻辑
 * @author Simon
 *
 */
public interface MyCenterService {
	/**
	 * 保存头像
	 * @param user
	 * @param file
	 */
	public void saveHeaderImg(User user,File file);
	
	/**
	 * 查找头像
	 * @param id
	 * @return
	 */
	public ByteArrayInputStream findUserHeadImgById(String id);
	/**
	 * 读取未阅读信息数
	 * @param user
	 * @return
	 */
	public int getUnReadMessage(User user);
	/**
	 * 回复消息
	 * @param msg
	 */
	public void replyMsg(Message msg);
	/**
	 * 得到消息明细
	 * @param messageId
	 * @return
	 */
	public Message msgDetail(String messageId);
	/**
	 * 删除消息
	 * @param messageId
	 */
	public void delMessage(String messageId);
	/**
	 * 查询我的消息
	 * @param user
	 * @param message
	 * @param pageInfo
	 * @return
	 */
	public List<Message> findMyMessageList(User user,Message message,PageInfo pageInfo);
	
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
