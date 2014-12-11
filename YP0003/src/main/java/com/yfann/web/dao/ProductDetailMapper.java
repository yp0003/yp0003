package com.yfann.web.dao;

import com.yfann.web.pojo.ProductDetail;
import com.yfann.web.pojo.ProductDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProductDetailMapper {
	/**
	 * 根据产品Id查询产品详情
	 * @param productId
	 * @return
	 */
	List<ProductDetail> selectProductDetailByProductId(String productId);
	/***********************************************************************************************************/
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int countByExample(ProductDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int deleteByExample(ProductDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int insert(ProductDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int insertSelective(ProductDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    List<ProductDetail> selectByExample(ProductDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    ProductDetail selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ProductDetail record, @Param("example") ProductDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ProductDetail record, @Param("example") ProductDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ProductDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_detail
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ProductDetail record);
}