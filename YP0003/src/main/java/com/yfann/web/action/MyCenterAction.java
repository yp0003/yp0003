package com.yfann.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.annotation.UserSessionCheck;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.service.OrderService;

public class MyCenterAction extends CommonAction{
	private static final long serialVersionUID = 3712145844614909298L;
	private String[] orderIds;
	private List<Order> orderList;
	private OrderDetail orderDetail;
	@Autowired
	private OrderService orderService;
	/**
	 * 跳转到我的订单页面
	 * @return
	 */
	@UserSessionCheck
	public String forwardMyOrder(){
		return "forwardMyOrder";
	}
	
	public String[] getOrderIds() {
		return orderIds;
	}
	public void setOrderIds(String[] orderIds) {
		this.orderIds = orderIds;
	}
	public List<Order> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}
	public OrderDetail getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(OrderDetail orderDetail) {
		this.orderDetail = orderDetail;
	}
	
}
