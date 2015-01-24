package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.GroupProduct;
import com.yfann.web.pojo.Product;

public interface OaGroupProductService {
	/**
	 * 新增
	 */
	public void addGroupProduct(GroupProduct groupProduct, String[] ids);

	/**
	 * 删除
	 * 
	 * @param id
	 */
	public void delGroupProduct(String id);

	/**
	 * 更新
	 * 
	 * @param groupProduct
	 */
	public void updateGroupProduct(GroupProduct groupProduct, String[] ids);

	/**
	 * 根据id查询
	 * 
	 * @param id
	 * @return
	 */
	public GroupProduct getGroupProductById(String id);

	/**
	 * 分页查询
	 * 
	 * @param offer
	 * @param limit
	 * @return
	 */
	public List<GroupProduct> getGroupProductAll(int offset, int limit);

	/**
	 * 查询总数
	 * 
	 * @return
	 */
	public Integer getGroupProductAllCount();

	/**
	 * 获取该产品组合所包含的产品
	 * 
	 * @param id
	 * @return
	 */
	public String[] getProductIds(String id);

	/**
	 * 获取所有的课程
	 * 
	 * @return
	 */
	public List<Product> getProductAll();

}
