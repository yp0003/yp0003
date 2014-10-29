package com.yfann.web.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Product {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_id
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_price
     *
     * @mbggenerated
     */
    private BigDecimal productPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_sale
     *
     * @mbggenerated
     */
    private Long productSale;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.online_time
     *
     * @mbggenerated
     */
    private Date onlineTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.offline_time
     *
     * @mbggenerated
     */
    private Date offlineTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.online_status
     *
     * @mbggenerated
     */
    private String onlineStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.teacher_id
     *
     * @mbggenerated
     */
    private String teacherId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.id
     *
     * @return the value of t_product.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.id
     *
     * @param id the value for t_product.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_id
     *
     * @return the value of t_product.product_id
     *
     * @mbggenerated
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_id
     *
     * @param productId the value for t_product.product_id
     *
     * @mbggenerated
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_price
     *
     * @return the value of t_product.product_price
     *
     * @mbggenerated
     */
    public BigDecimal getProductPrice() {
        return productPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_price
     *
     * @param productPrice the value for t_product.product_price
     *
     * @mbggenerated
     */
    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_sale
     *
     * @return the value of t_product.product_sale
     *
     * @mbggenerated
     */
    public Long getProductSale() {
        return productSale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_sale
     *
     * @param productSale the value for t_product.product_sale
     *
     * @mbggenerated
     */
    public void setProductSale(Long productSale) {
        this.productSale = productSale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.online_time
     *
     * @return the value of t_product.online_time
     *
     * @mbggenerated
     */
    public Date getOnlineTime() {
        return onlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.online_time
     *
     * @param onlineTime the value for t_product.online_time
     *
     * @mbggenerated
     */
    public void setOnlineTime(Date onlineTime) {
        this.onlineTime = onlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.offline_time
     *
     * @return the value of t_product.offline_time
     *
     * @mbggenerated
     */
    public Date getOfflineTime() {
        return offlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.offline_time
     *
     * @param offlineTime the value for t_product.offline_time
     *
     * @mbggenerated
     */
    public void setOfflineTime(Date offlineTime) {
        this.offlineTime = offlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.online_status
     *
     * @return the value of t_product.online_status
     *
     * @mbggenerated
     */
    public String getOnlineStatus() {
        return onlineStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.online_status
     *
     * @param onlineStatus the value for t_product.online_status
     *
     * @mbggenerated
     */
    public void setOnlineStatus(String onlineStatus) {
        this.onlineStatus = onlineStatus == null ? null : onlineStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.teacher_id
     *
     * @return the value of t_product.teacher_id
     *
     * @mbggenerated
     */
    public String getTeacherId() {
        return teacherId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.teacher_id
     *
     * @param teacherId the value for t_product.teacher_id
     *
     * @mbggenerated
     */
    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId == null ? null : teacherId.trim();
    }
}