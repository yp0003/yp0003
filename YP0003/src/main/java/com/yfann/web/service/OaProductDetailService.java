package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.PublicMessage;

public interface OaProductDetailService {
	/**
	 * 新增产品详情
	 * 
	 * @param publicMessage
	 * @throws Exception
	 */
	public void savePublicMessage(PublicMessage publicMessage) throws Exception;

	/**
	 * 根据id删除产品详情
	 * 
	 * @param menuId
	 * @throws Exception
	 */
	public void deletePublicMessageById(String id) throws Exception;

	/**
	 * 更新菜单
	 * 
	 * @param publicMessage
	 * @throws Exception
	 */
	public void updatePublicMessage(PublicMessage publicMessage) throws Exception;

	/**
	 * 获取所有菜单,按照id排序
	 * 
	 * @param off
	 * @param lim
	 * @return
	 */
	public List<PublicMessage> getAllPublicMessage(int off, int lim);

	/**
	 * 获取所有公告数量
	 * 
	 * @param off
	 * @param lim
	 * @return
	 */
	public Integer getAllCountPublicMessage();

	/**
	 * 根据ids获取菜单
	 * 
	 * @param ids
	 * @return
	 */
	public List<PublicMessage> getPublicMessageByIds(String[] ids);

	/**
	 * 根据id获取菜单
	 * 
	 * @param id
	 * @return
	 */
	public PublicMessage getPublicMessageById(String id);

}
