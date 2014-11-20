package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.OaMenu;

public interface OaMenuService {
	/**
	 * 新增菜单
	 * 
	 * @param oaMenu
	 * @throws Exception
	 */
	public void saveOaMenu(OaMenu oaMenu) throws Exception;

	/**
	 * 根据menuId删除菜单,并删除所有其关联关系
	 * 
	 * @param menuId
	 * @throws Exception
	 */
	public void deleteOaMenuById(String menuId) throws Exception;

	/**
	 * 更新菜单
	 * 
	 * @param oaMenu
	 * @throws Exception
	 */
	public void updateOaMenu(OaMenu oaMenu) throws Exception;

	/**
	 * 获取所有菜单,按照id排序
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<OaMenu> getAllOaMenu() throws Exception;

	/**
	 * 根据menuId获取菜单
	 * 
	 * @param menuId
	 * @return
	 * @throws Exception
	 */
	public OaMenu getOaMenuById(String menuId) throws Exception;

}
