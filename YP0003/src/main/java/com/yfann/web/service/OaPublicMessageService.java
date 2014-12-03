package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.PublicMessage;
import com.yfann.web.vo.PageInfo;

public interface OaPublicMessageService {
	/**
	 * 新增公告
	 * 
	 * @param publicMessage
	 * @throws Exception
	 */
	public void savePublicMessage(PublicMessage publicMessage) throws Exception;

	/**
	 * 根据id删除公告
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void deletePublicMessageById(String id) throws Exception;

	/**
	 * 更新公告
	 * 
	 * @param publicMessage
	 * @throws Exception
	 */
	public void updatePublicMessage(PublicMessage publicMessage) throws Exception;

	/**
	 * 获取所有公告,按照时间排序
	 * 
	 * @param off
	 * @param lim
	 * @return
	 */
	public List<PublicMessage> selectPublicMessageList(PublicMessage publicMessage,PageInfo pageInfo);

	/**
	 * 获取所有公告数量
	 * 
	 * @return
	 */
	public Integer getAllCountPublicMessage();

	/**
	 * 根据ids获取公告
	 * 
	 * @param ids
	 * @return
	 */
	public List<PublicMessage> getPublicMessageByIds(String[] ids);

	/**
	 * 根据id获取公告
	 * 
	 * @param id
	 * @return
	 */
	public PublicMessage getPublicMessageById(String id);

}
