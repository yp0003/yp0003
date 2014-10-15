package com.yfann.web.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.BuyCar;
import com.yfann.web.service.OrderService;

public class OrderAction extends CommonAction {

	final Logger logger = LoggerFactory.getLogger(OrderAction.class);
	private static final long serialVersionUID = 5350272860785771007L;
	private BuyCar buyCar;
	@Autowired
	private OrderService orderService;
	
	/**
	 * 增加产品数量
	 */
	public String addCount() throws Exception{
		orderService.addCount(buyCar);
		return "addCount";
	}
	
	/**
	 * 单个删除购物车产品
	 * @return
	 */
	public String deleteProductOnBuyCay() throws Exception{
		try{
		orderService.deleteProductOnBuyCay(buyCar.getProductId());
		}catch(Exception e){
			logger.error("系统异常---------------",e);
			throw new Exception(e.getMessage());
		}
		return "deleteProduct";
	}
	
	/**
	 * 根据ID批量删除购物车产品
	 * @return
	 */
	public String deleteProductOnBuyCayByAllIds() throws Exception{
		orderService.deleteProductOnBuyCayByAllIds(buyCar.getIds());
		return "deleteProductOnBuyCayByAllIds";
	}

	/**
	 * 添加到购物车
	 * 
	 * @return
	 */
	public String addBuyCar() throws Exception {
		if (buyCar != null) {
			buyCar.setId(UUIDCreate.getUUID());
			orderService.addBuyCar(buyCar);
		}
		return "addBuyCar";
	}

	/**
	 * 跳转到购物车页面
	 * 
	 * @return
	 */
	public String forwardBuyCar() {
		return "forwardBuyCar";
	}

	public BuyCar getBuyCar() {
		return buyCar;
	}

	public void setBuyCar(BuyCar buyCar) {
		this.buyCar = buyCar;
	}

}
