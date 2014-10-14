package com.yfann.web.service;

import com.yfann.web.pojo.BuyCar;

public interface OrderService {
	/**
	 * 产品增加到购物车
	 * @param buyCar
	 * @throws Exception
	 */
	public void addBuyCar(BuyCar buyCar) throws Exception;

}
