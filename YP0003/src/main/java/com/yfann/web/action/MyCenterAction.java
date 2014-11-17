package com.yfann.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.annotation.UserSessionCheck;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.service.OrderService;
import com.yfann.web.vo.PageInfo;

public class MyCenterAction extends CommonAction{
	private static final long serialVersionUID = 3712145844614909298L;
	private List<Order> orderList;
	private Order order;
	private OrderDetail orderDetail;
	private String[] orderIds;
	/**分页组件*/
	private PageInfo pageInfo;
	@Autowired
	private OrderService orderService;
	/**
	 * 跳转到我的订单页面
	 * @return
	 */
	@UserSessionCheck
	public String forwardMyOrder(){
		if(order == null){
			order = new Order();
		}
		order.setUserId(currentUserInfo().getId());
		try{
		orderList = orderService.findOrderList(currentUserInfo(), order, pageInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
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

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}
	
}
