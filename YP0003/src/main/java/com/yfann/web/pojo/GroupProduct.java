package com.yfann.web.pojo;

import java.math.BigDecimal;

public class GroupProduct {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_group_product.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_group_product.group_id
     *
     * @mbggenerated
     */
    private String groupId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_group_product.group_name
     *
     * @mbggenerated
     */
    private String groupName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_group_product.group_price
     *
     * @mbggenerated
     */
    private BigDecimal groupPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_group_product.group_sale
     *
     * @mbggenerated
     */
    private Long groupSale;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_group_product.id
     *
     * @return the value of t_group_product.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_group_product.id
     *
     * @param id the value for t_group_product.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_group_product.group_id
     *
     * @return the value of t_group_product.group_id
     *
     * @mbggenerated
     */
    public String getGroupId() {
        return groupId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_group_product.group_id
     *
     * @param groupId the value for t_group_product.group_id
     *
     * @mbggenerated
     */
    public void setGroupId(String groupId) {
        this.groupId = groupId == null ? null : groupId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_group_product.group_name
     *
     * @return the value of t_group_product.group_name
     *
     * @mbggenerated
     */
    public String getGroupName() {
        return groupName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_group_product.group_name
     *
     * @param groupName the value for t_group_product.group_name
     *
     * @mbggenerated
     */
    public void setGroupName(String groupName) {
        this.groupName = groupName == null ? null : groupName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_group_product.group_price
     *
     * @return the value of t_group_product.group_price
     *
     * @mbggenerated
     */
    public BigDecimal getGroupPrice() {
        return groupPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_group_product.group_price
     *
     * @param groupPrice the value for t_group_product.group_price
     *
     * @mbggenerated
     */
    public void setGroupPrice(BigDecimal groupPrice) {
        this.groupPrice = groupPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_group_product.group_sale
     *
     * @return the value of t_group_product.group_sale
     *
     * @mbggenerated
     */
    public Long getGroupSale() {
        return groupSale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_group_product.group_sale
     *
     * @param groupSale the value for t_group_product.group_sale
     *
     * @mbggenerated
     */
    public void setGroupSale(Long groupSale) {
        this.groupSale = groupSale;
    }
}