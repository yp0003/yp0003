package com.yfann.web.service;

import java.io.ByteArrayInputStream;
import java.util.List;

import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductAppraise;
import com.yfann.web.pojo.ProductKind;
import com.yfann.web.vo.PageInfo;

/**
 * 产品service
 * @author Simon
 *
 */
public interface ProductService {
	/**
	 * 根据我的课程Id查询我的课程
	 * @param myProductId
	 * @return
	 */
	MyProduct findMyProductByMyProductId(String myProductId);
	/**
	 * 查询课程详情图片
	 * @param productDetailAvatarId
	 * @return
	 */
	ByteArrayInputStream findProductDetailImageById(String productDetailImageId);
	
	/**
	 * 查询课程截图
	 * @param productDetailAvatarId
	 * @return
	 */
	ByteArrayInputStream findProductDetailAvatarById(String productDetailAvatarId);
	/**
	 * 查询产品logo
	 * @param productId
	 * @return
	 */
	ByteArrayInputStream findProductImageById(String productId);
	/**
	 * 查询评论字典
	 * @return
	 */
	public List<Dic> findProductAppraiseDicList();
	/**
	 * 查询评论列表
	 * @param product
	 * @param pageInfo
	 * @return
	 */
	public List<ProductAppraise> findProductAppraiseList(Product product,PageInfo pageInfo);
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
