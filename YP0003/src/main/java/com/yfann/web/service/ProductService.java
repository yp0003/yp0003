package com.yfann.web.service;

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
}
