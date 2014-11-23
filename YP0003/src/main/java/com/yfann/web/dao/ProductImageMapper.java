package com.yfann.web.dao;

import com.yfann.web.pojo.ProductImage;
import com.yfann.web.pojo.ProductImageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProductImageMapper{
	/**
	 * 根据产品ID查询logo
	 * @param productId
	 * @return
	 */
	ProductImage selectProductImageByProductId(String productId);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int countByExample(ProductImageExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int deleteByExample(ProductImageExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int insert(ProductImage record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int insertSelective(ProductImage record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    List<ProductImage> selectByExampleWithBLOBs(ProductImageExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    List<ProductImage> selectByExample(ProductImageExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    ProductImage selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ProductImage record, @Param("example") ProductImageExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int updateByExampleWithBLOBs(@Param("record") ProductImage record, @Param("example") ProductImageExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ProductImage record, @Param("example") ProductImageExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ProductImage record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int updateByPrimaryKeyWithBLOBs(ProductImage record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_product_image
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ProductImage record);
}