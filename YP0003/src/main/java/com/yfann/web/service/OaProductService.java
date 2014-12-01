package com.yfann.web.service;

import java.io.File;
import java.util.List;

import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductKind;
import com.yfann.web.pojo.User;
import com.yfann.web.vo.PageInfo;

public interface OaProductService {
	/**
	 * 获取课程分类列表
	 * @return
	 */
	public List<ProductKind> selectProductKindList();
	/**
	 * 获取课程登记字典列表
	 * @return
	 */
	public List<Dic> selectProductLevelDicList(); 
	/** 
	 * 获取课程状态字典列表
	 * @return
	 */
	public List<Dic> selectProductStatusDicList(); 
	/**
	 * 新增产品
	 * 
	 * @param product
	 * @throws Exception
	 */
	public void saveProduct(Product product,File scan,File[] images);

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
	 * @param product
	 * @param pageInfo
	 * @param user
	 * @return
	 */
	public List<Product> selectProductList(Product product,PageInfo pageInfo);

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
