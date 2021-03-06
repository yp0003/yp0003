package com.yfann.web.pojo;

import java.io.Serializable;

public class ProductImage implements Serializable{
	private static final long serialVersionUID = -6582161976807665602L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_image.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_image.product_id
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_image.product_image
     *
     * @mbggenerated
     */
    private byte[] productImage;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_image.id
     *
     * @return the value of t_product_image.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_image.id
     *
     * @param id the value for t_product_image.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_image.product_id
     *
     * @return the value of t_product_image.product_id
     *
     * @mbggenerated
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_image.product_id
     *
     * @param productId the value for t_product_image.product_id
     *
     * @mbggenerated
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_image.product_image
     *
     * @return the value of t_product_image.product_image
     *
     * @mbggenerated
     */
    public byte[] getProductImage() {
        return productImage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_image.product_image
     *
     * @param productImage the value for t_product_image.product_image
     *
     * @mbggenerated
     */
    public void setProductImage(byte[] productImage) {
        this.productImage = productImage;
    }
}