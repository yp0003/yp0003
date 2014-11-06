package com.yfann.web.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class BuyCar {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_buy_car.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_buy_car.product_id
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_buy_car.product_name
     *
     * @mbggenerated
     */
    private String productName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_buy_car.user_id
     *
     * @mbggenerated
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_buy_car.price
     *
     * @mbggenerated
     */
    private BigDecimal price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_buy_car.add_time
     *
     * @mbggenerated
     */
    private Date addTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_buy_car.buy_count
     *
     * @mbggenerated
     */
    private Integer buyCount;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_buy_car.id
     *
     * @return the value of t_buy_car.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_buy_car.id
     *
     * @param id the value for t_buy_car.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_buy_car.product_id
     *
     * @return the value of t_buy_car.product_id
     *
     * @mbggenerated
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_buy_car.product_id
     *
     * @param productId the value for t_buy_car.product_id
     *
     * @mbggenerated
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_buy_car.product_name
     *
     * @return the value of t_buy_car.product_name
     *
     * @mbggenerated
     */
    public String getProductName() {
        return productName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_buy_car.product_name
     *
     * @param productName the value for t_buy_car.product_name
     *
     * @mbggenerated
     */
    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_buy_car.user_id
     *
     * @return the value of t_buy_car.user_id
     *
     * @mbggenerated
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_buy_car.user_id
     *
     * @param userId the value for t_buy_car.user_id
     *
     * @mbggenerated
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_buy_car.price
     *
     * @return the value of t_buy_car.price
     *
     * @mbggenerated
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_buy_car.price
     *
     * @param price the value for t_buy_car.price
     *
     * @mbggenerated
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_buy_car.add_time
     *
     * @return the value of t_buy_car.add_time
     *
     * @mbggenerated
     */
    public Date getAddTime() {
        return addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_buy_car.add_time
     *
     * @param addTime the value for t_buy_car.add_time
     *
     * @mbggenerated
     */
    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_buy_car.buy_count
     *
     * @return the value of t_buy_car.buy_count
     *
     * @mbggenerated
     */
    public Integer getBuyCount() {
        return buyCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_buy_car.buy_count
     *
     * @param buyCount the value for t_buy_car.buy_count
     *
     * @mbggenerated
     */
    public void setBuyCount(Integer buyCount) {
        this.buyCount = buyCount;
    }
}