package com.yfann.web.pojo;

public class ProductKind {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_kind.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_kind.product_id
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_kind.product_kind
     *
     * @mbggenerated
     */
    private String productKind;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_kind.id
     *
     * @return the value of t_product_kind.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_kind.id
     *
     * @param id the value for t_product_kind.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_kind.product_id
     *
     * @return the value of t_product_kind.product_id
     *
     * @mbggenerated
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_kind.product_id
     *
     * @param productId the value for t_product_kind.product_id
     *
     * @mbggenerated
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_kind.product_kind
     *
     * @return the value of t_product_kind.product_kind
     *
     * @mbggenerated
     */
    public String getProductKind() {
        return productKind;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_kind.product_kind
     *
     * @param productKind the value for t_product_kind.product_kind
     *
     * @mbggenerated
     */
    public void setProductKind(String productKind) {
        this.productKind = productKind == null ? null : productKind.trim();
    }
}