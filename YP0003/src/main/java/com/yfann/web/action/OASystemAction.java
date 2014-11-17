package com.yfann.web.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.pojo.Order;
import com.yfann.web.service.OrderService;
import com.yfann.web.vo.PageInfo;
/**
 * OA系统功能
 * @author Simon
 *
 */
public class OASystemAction extends CommonAction{
	private static final long serialVersionUID = -7400786482795047633L;
	@Autowired
	private OrderService orderService;
	/**分页组件*/
	private PageInfo pageInfo;
	/**订单POJO*/
	private Order order;
	/***/
	
	public String forwardOAIndex(){
		if(order == null){
			order = new Order();
		}
		orderService.findOrderList(currentUserInfo(), order, pageInfo);
		return "forwardOAIndex";
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	
}
