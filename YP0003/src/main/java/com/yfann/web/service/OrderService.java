package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.BuyCar;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.User;
import com.yfann.web.vo.PageInfo;

public interface OrderService {
	/**
	 * 根据条件查询购物车产品
	 * @param buyCar
	 * @return
	 */
	public List<BuyCar> findBuyCarList(BuyCar buyCar,PageInfo pageInfo) throws Exception;
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
	 * 查询订单列表
	 * @param user
	 * @param order
	 * @param pageInfo
	 * @return
	 */
	public List<Order> findOrderList(User user,Order order,PageInfo pageInfo);

}
