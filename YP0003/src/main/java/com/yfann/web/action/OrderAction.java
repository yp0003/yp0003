package com.yfann.web.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class OrderAction extends CommonAction{

	final Logger logger = LoggerFactory.getLogger(OrderAction.class);
	private static final long serialVersionUID = 5350272860785771007L;
	/**
	 * 添加到购物车
	 * @return
	 */
	public String addBuyCar() {
		return "addBuyCar";
	}

}
