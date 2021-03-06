package com.yfann.web.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Order implements Serializable{
	private static final long serialVersionUID = -8682087441744371725L;
	/**订单详情列表*/
	private List<OrderDetail> orderDetailList;
	/**订单状态*/
	private Dic orderStatusDic;
	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.order_id
     *
     * @mbggenerated
     */
    private String orderId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.user_id
     *
     * @mbggenerated
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.order_create_time
     *
     * @mbggenerated
     */
    private Date orderCreateTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.order_status
     *
     * @mbggenerated
     */
    private String orderStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.pay_way
     *
     * @mbggenerated
     */
    private String payWay;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.pay_time
     *
     * @mbggenerated
     */
    private Date payTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order.count_price
     *
     * @mbggenerated
     */
    private BigDecimal countPrice;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.id
     *
     * @return the value of t_order.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.id
     *
     * @param id the value for t_order.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.order_id
     *
     * @return the value of t_order.order_id
     *
     * @mbggenerated
     */
    public String getOrderId() {
        return orderId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.order_id
     *
     * @param orderId the value for t_order.order_id
     *
     * @mbggenerated
     */
    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.user_id
     *
     * @return the value of t_order.user_id
     *
     * @mbggenerated
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.user_id
     *
     * @param userId the value for t_order.user_id
     *
     * @mbggenerated
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.order_create_time
     *
     * @return the value of t_order.order_create_time
     *
     * @mbggenerated
     */
    public Date getOrderCreateTime() {
        return orderCreateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.order_create_time
     *
     * @param orderCreateTime the value for t_order.order_create_time
     *
     * @mbggenerated
     */
    public void setOrderCreateTime(Date orderCreateTime) {
        this.orderCreateTime = orderCreateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.order_status
     *
     * @return the value of t_order.order_status
     *
     * @mbggenerated
     */
    public String getOrderStatus() {
        return orderStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.order_status
     *
     * @param orderStatus the value for t_order.order_status
     *
     * @mbggenerated
     */
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.pay_way
     *
     * @return the value of t_order.pay_way
     *
     * @mbggenerated
     */
    public String getPayWay() {
        return payWay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.pay_way
     *
     * @param payWay the value for t_order.pay_way
     *
     * @mbggenerated
     */
    public void setPayWay(String payWay) {
        this.payWay = payWay == null ? null : payWay.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.pay_time
     *
     * @return the value of t_order.pay_time
     *
     * @mbggenerated
     */
    public Date getPayTime() {
        return payTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.pay_time
     *
     * @param payTime the value for t_order.pay_time
     *
     * @mbggenerated
     */
    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order.count_price
     *
     * @return the value of t_order.count_price
     *
     * @mbggenerated
     */
    public BigDecimal getCountPrice() {
        return countPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order.count_price
     *
     * @param countPrice the value for t_order.count_price
     *
     * @mbggenerated
     */
    public void setCountPrice(BigDecimal countPrice) {
        this.countPrice = countPrice;
    }
    /***********************************************************************************************************************/

	public List<OrderDetail> getOrderDetailList() {
		return orderDetailList;
	}

	public void setOrderDetailList(List<OrderDetail> orderDetailList) {
		this.orderDetailList = orderDetailList;
	}

	public Dic getOrderStatusDic() {
		return orderStatusDic;
	}

	public void setOrderStatusDic(Dic orderStatusDic) {
		this.orderStatusDic = orderStatusDic;
	}
    
}