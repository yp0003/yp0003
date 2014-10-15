package com.yfann.web.service;

import com.yfann.web.pojo.BuyCar;

public interface OrderService {
	/**
	 * 产品增加到购物车
	 * @param buyCar
	 * @throws Exception
	 */
	public void addBuyCar(BuyCar buyCar) throws Exception;
	
	/**
	 * 根据ID删除购物车产品
	 * @param id
	 */
	public void deleteProductOnBuyCay(String id);
	
	/**
	 * 根据ID批量删除购物车产品
	 * @param id
	 */
	public void deleteProductOnBuyCayByAllIds(String[] ids);
	/**
	 * 增加产品数量
	 * @param buyCar
	 */
	public void addCount(BuyCar buyCar);

}
