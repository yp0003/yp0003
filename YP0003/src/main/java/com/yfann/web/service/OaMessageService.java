package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.Message;

public interface OaMessageService {
	/**
	 * 新消息
	 * 
	 * @param message
	 * @throws Exception
	 */
	public void saveMessage(Message message) throws Exception;

	/**
	 * 根据id删除消息
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void deleteMessageById(String id) throws Exception;

	/**
	 * 更新消息
	 * 
	 * @param message
	 * @throws Exception
	 */
	public void updateMessage(Message message) throws Exception;

	/**
	 * 获取所有消息，按更新时间倒序
	 * 
	 * @param off
	 * @param lim
	 * @return
	 */
	public List<Message> getAllMessage(int off, int lim);

	/**
	 * 获取所有消息数量
	 * 
	 * @return
	 */
	public Integer getAllCountMessage();

	/**
	 * 根据ids获取消息
	 * 
	 * @param ids
	 * @return
	 */
	public List<Message> getMessageByIds(String[] ids);

	/**
	 * 根据id获取消息
	 * 
	 * @param id
	 * @return
	 */
	public Message getMessageById(String id);

}
