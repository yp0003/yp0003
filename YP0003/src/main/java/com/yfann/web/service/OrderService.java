package com.yfann.web.service;

import java.io.ByteArrayInputStream;
import java.util.List;

import com.yfann.web.pojo.BuyCar;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.User;
import com.yfann.web.vo.PageInfo;

public interface OrderService {
	/**
	 * 查询订单根据订单id
	 * 
	 * @param orderId
	 * @return
	 */
	public Order findOrderByOrderId(String orderId);

	/**
	 * 取消订单
	 * 
	 * @param user
	 * @param order
	 */
	public void cancelOrder(User user, Order order);

	/**
	 * 创建订单
	 * 
	 * @param user
	 * @param buyCarIds
	 * @return
	 */
	public Order createOrder(User user, String[] buyCarIds);

	/**
	 * 查询购物车根据IDS
	 * 
	 * @param ids
	 * @return
	 */
	public List<BuyCar> findBuyCarByIds(String[] ids);

	/**
	 * 根据购物车主键查询购物车
	 * 
	 * @param buyCarid
	 * @return
	 */
	public BuyCar findBuyCarById(String buyCarid);

	/**
	 * 清空购物车
	 * 
	 * @param user
	 */
	public void deleteBuyCar(User user);

	/**
	 * 查询课程是否存在购物车
	 * 
	 * @param product
	 * @return
	 */
	public boolean findProductIsInBuyCar(Product product, User user);

	/**
	 * 根据课程ID购买数增加1
	 * 
	 * @param product
	 */
	public void addBuyCountByProductIdInBuyCar(Product product, User user);

	/**
	 * 增加1
	 * 
	 * @param buyCar
	 */
	public void addOneInBuyCar(BuyCar buyCar);

	/**
	 * 减1
	 * 
	 * @param buyCar
	 */
	public void subOneInBuyCar(BuyCar buyCar);

	/**
	 * 直接结算
	 * 
	 * @param product
	 * @param user
	 */
	public Order payProductOnlyOne(Product product, User user);

	/**
	 * 根据条件查询购物车产品
	 * 
	 * @param buyCar
	 * @return
	 */
	public List<BuyCar> findBuyCarList(User user, BuyCar buyCar, PageInfo pageInfo) throws Exception;

	/**
	 * 产品增加到购物车
	 * 
	 * @param buyCar
	 * @throws Exception
	 */
	public void addBuyCar(BuyCar buyCar) throws Exception;

	/**
	 * 根据ID删除购物车产品
	 * 
	 * @param id
	 */
	public void deleteBuyCayById(String id);

	/**
	 * 根据ID批量删除购物车产品
	 * 
	 * @param ids
	 */
	public void deleteProductOnBuyCayByAllIds(String[] ids);

	/**
	 * 查询订单列表
	 * 
	 * @param user
	 * @param order
	 * @param pageInfo
	 * @return
	 */
	public List<Order> findOrderList(User user, Order order, PageInfo pageInfo);

	/**
	 * 根据ID查找缩略图
	 * 
	 * @param product
	 * @return
	 */
	public ByteArrayInputStream findProductSmallImgById(Product product);

	/**
	 * 查询购物车是否已经存在该产品
	 * 
	 * @param id
	 * @return
	 */
	public boolean findIsProduct(String id);

	/**
	 * 根据ID查询课程
	 * 
	 * @param id
	 * @return
	 */
	public Product findProductById(String productId);

	/**
	 * 更新
	 * 
	 * @param order
	 */
	public void updateOrder(Order order);
	
	/**
	 * @param orderDetail
	 */
	public void updateOrderDetail(OrderDetail orderDetail);
}
