package com.yfann.web.pojo;

import java.math.BigDecimal;

public class OaSalesChampion {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_sales_champion.ID
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_sales_champion.SCALE
     *
     * @mbggenerated
     */
    private BigDecimal scale;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_sales_champion.ID
     *
     * @return the value of t_oa_sales_champion.ID
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_sales_champion.ID
     *
     * @param id the value for t_oa_sales_champion.ID
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_sales_champion.SCALE
     *
     * @return the value of t_oa_sales_champion.SCALE
     *
     * @mbggenerated
     */
    public BigDecimal getScale() {
        return scale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_sales_champion.SCALE
     *
     * @param scale the value for t_oa_sales_champion.SCALE
     *
     * @mbggenerated
     */
    public void setScale(BigDecimal scale) {
        this.scale = scale;
    }
}