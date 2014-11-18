package com.yfann.web.service;

import java.io.ByteArrayInputStream;
import java.util.List;

import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductKind;
import com.yfann.web.vo.PageInfo;

/**
 * 产品service
 * @author Simon
 *
 */
public interface ProductService {
	/**
	 * 根据产品Id获取产品
	 * @param productId
	 * @return
	 */
	public Product findProductById(String productId);
	/**
	 * 返回产品列表
	 * @param product
	 * @param rowBounds
	 * @return
	 */
	public List<Product> findProductList(Product product,PageInfo pageInfo);
	
	/**
	 * 返回产品分类列表
	 * @return
	 */
	public List<ProductKind> findAllProductKindList();
	/**
	 * 返回课程缩图
	 * @param product
	 * @return
	 */
	public ByteArrayInputStream findProductSmallImgById(Product product);
}
