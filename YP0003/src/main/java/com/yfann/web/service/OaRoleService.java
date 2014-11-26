package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.OaRole;

public interface OaRoleService {
	/**
	 * 新增角色
	 * 
	 * @param oaRole
	 * @throws Exception
	 */
	public void saveOaRole(OaRole oaRole) throws Exception;

	/**
	 * 根据roleId删除角色,并删除所有其关联关系
	 * 
	 * @param roleId
	 * @throws Exception
	 */
	public void deleteOaRoleById(String roleId) throws Exception;

	/**
	 * 更新角色
	 * 
	 * @param oaRole
	 * @throws Exception
	 */
	public void updateOaRole(OaRole oaRole) throws Exception;

	/**
	 * 获取所有角色,按照id排序
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<OaRole> getAllOaRole();

	/**
	 * 根据roleId获取角色
	 * 
	 * @param roleId
	 * @return
	 * @throws Exception
	 */
	public OaRole getOaRoleById(String roleId);

}
