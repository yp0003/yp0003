package com.yfann.web.pojo;

public class ProductAppraise {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_appraise.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_appraise.user_id
     *
     * @mbggenerated
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_appraise.satisfaction
     *
     * @mbggenerated
     */
    private String satisfaction;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_appraise.appraise_context
     *
     * @mbggenerated
     */
    private String appraiseContext;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product_appraise.product_id
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_appraise.id
     *
     * @return the value of t_product_appraise.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_appraise.id
     *
     * @param id the value for t_product_appraise.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_appraise.user_id
     *
     * @return the value of t_product_appraise.user_id
     *
     * @mbggenerated
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_appraise.user_id
     *
     * @param userId the value for t_product_appraise.user_id
     *
     * @mbggenerated
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_appraise.satisfaction
     *
     * @return the value of t_product_appraise.satisfaction
     *
     * @mbggenerated
     */
    public String getSatisfaction() {
        return satisfaction;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_appraise.satisfaction
     *
     * @param satisfaction the value for t_product_appraise.satisfaction
     *
     * @mbggenerated
     */
    public void setSatisfaction(String satisfaction) {
        this.satisfaction = satisfaction == null ? null : satisfaction.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_appraise.appraise_context
     *
     * @return the value of t_product_appraise.appraise_context
     *
     * @mbggenerated
     */
    public String getAppraiseContext() {
        return appraiseContext;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_appraise.appraise_context
     *
     * @param appraiseContext the value for t_product_appraise.appraise_context
     *
     * @mbggenerated
     */
    public void setAppraiseContext(String appraiseContext) {
        this.appraiseContext = appraiseContext == null ? null : appraiseContext.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product_appraise.product_id
     *
     * @return the value of t_product_appraise.product_id
     *
     * @mbggenerated
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product_appraise.product_id
     *
     * @param productId the value for t_product_appraise.product_id
     *
     * @mbggenerated
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }
}