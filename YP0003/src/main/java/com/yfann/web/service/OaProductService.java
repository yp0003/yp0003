package com.yfann.web.service;

import java.io.File;
import java.util.List;

import com.yfann.web.pojo.Product;

public interface OaProductService {
	/**
	 * 新增产品
	 * 
	 * @param product
	 * @throws Exception
	 */
	public void saveProduct(Product product,File scan);

	/**
	 * 根据id下线产品
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void deleteProductById(String id);

	/**
	 * 更新产品
	 * 
	 * @param product
	 * @throws Exception
	 */
	public void updateProduct(Product product);

	/**
	 * 获取所有产品，按更新时间倒序
	 * 
	 * @param off
	 * @param lim
	 * @return
	 */
	public List<Product> getAllProduct(int off, int lim);

	/**
	 * 获取所有产品数量
	 * 
	 * @return
	 */
	public Integer getAllCountProduct();

	/**
	 * 根据ids获取产品
	 * 
	 * @param ids
	 * @return
	 */
	public List<Product> getProductByIds(String[] ids);

	/**
	 * 根据id获取产品
	 * 
	 * @param id
	 * @return
	 */
	public Product getProductById(String id);

}
