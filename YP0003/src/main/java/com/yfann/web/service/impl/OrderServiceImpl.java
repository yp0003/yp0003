package com.yfann.web.service.impl;

import java.io.ByteArrayInputStream;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yfann.web.common.UUIDCreate;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.pojo.Product;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.BuyCarMapper;
import com.yfann.web.dao.OrderDetailMapper;
import com.yfann.web.dao.OrderMapper;
import com.yfann.web.pojo.BuyCar;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OrderService;
import com.yfann.web.vo.PageInfo;

@Service
public class OrderServiceImpl implements OrderService {
	final Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);
	@Autowired
	private BuyCarMapper buyCarMapper;
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private OrderDetailMapper orderDetailMapper;

	@Override
	public BuyCar findBuyCarById(String buyCarid) {
		return buyCarMapper.selectByPrimaryKey(buyCarid);
	}
	
	@Override
	public void deleteBuyCar(User user) {
		if(user != null){
		buyCarMapper.deleteBuyCarByUserId(user.getId());
		}
	}
	
	@Override
	public void addBuyCountByProductIdInBuyCar(Product product,User user) {
		if(product != null && StringUtils.isNotBlank(product.getId())){
			Map<String, Object> parames = new HashMap<>();
			parames.put("userId", user.getId());
			parames.put("productId", product.getId());
		buyCarMapper.updateAddBuyCountByProductId(parames);
		}
	}
	
	@Override
	public boolean findProductIsInBuyCar(Product product,User user) {
		if (user != null && product != null && StringUtils.isNotBlank(product.getId())) {
			//购物车存在该商品
			Map<String,Object> parames = new HashMap<String,Object>();
			parames.put("userId", StringUtils.isNotBlank(user.getId()));
			parames.put("productId", product.getId());
			if(buyCarMapper.selectBuyCarByProductId(parames) != null){
				return true;
			}
		}
		return false;
	}

	@Override
	public Product findProductById(String productId) {
		return productMapper.selectByPrimaryKey(productId);
	}

	@Override
	public void addOneInBuyCar(BuyCar buyCar) {
		if (buyCar != null && StringUtils.isNotBlank(buyCar.getId())) {
			buyCarMapper.updateAddBuyCarCountById(buyCar.getId());
		}
	}

	@Override
	public void subOneInBuyCar(BuyCar buyCar) {
		if (buyCar != null && StringUtils.isNotBlank(buyCar.getId())) {
			buyCarMapper.updateSubBuyCarCountById(buyCar.getId());
		}
	}

	@Override
	public void addBuyCar(BuyCar buyCar) throws Exception {
		buyCarMapper.insertSelective(buyCar);
	}

	@Override
	public void deleteBuyCayById(String id) {
		buyCarMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void deleteProductOnBuyCayByAllIds(String[] ids) {
		// TODO 耗费资源后期待优化
		for (String id : ids) {
			buyCarMapper.deleteByPrimaryKey(id);
		}
	}

	private Map<String, Object> getBuyCarParamerMap(BuyCar buyCar) {
		Map<String, Object> parames = new HashMap<String, Object>();
		return parames;
	}

	/**
	 * Order参数
	 * 
	 * @param order
	 * @return
	 */
	private Map<String, Object> getOrderParamerMap(Order order) {
		Map<String, Object> parames = new HashMap<String, Object>();
		return parames;
	}

	@Override
	public List<BuyCar> findBuyCarList(BuyCar buyCar, PageInfo pageInfo)
			throws Exception {
		Map<String, Object> parames = getBuyCarParamerMap(buyCar);
		pageInfo.setCount(buyCarMapper.selectBuyCarCountByParamer(parames));
		List<BuyCar> buyCarList = buyCarMapper.selectBuyCarListByParamer(
				parames,
				new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));
		return buyCarList;
	}

	@Override
	public List<Order> findOrderList(User user, Order order, PageInfo pageInfo) {
		Map<String, Object> orderListParams = getOrderParamerMap(order);
		pageInfo.setCount(orderMapper
				.selectOrderListCountByParams(orderListParams));
		return orderMapper.selectOrderListByParams(orderListParams,
				new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));
	}

	/**
	 * 根据ID查找缩略图
	 * 
	 * @param product
	 * @return
	 */
	@Override
	public ByteArrayInputStream findProductSmallImgById(Product product) {
		ByteArrayInputStream byteArrayInputStream = null;
		if (product != null && StringUtils.isNotBlank(product.getId())) {
			// byteArrayInputStream = new
			// ByteArrayInputStream(productMapper.selectProductSmallImgById(product.getId()));
		}
		return byteArrayInputStream;
	}

	@Override
	public boolean findIsProduct(String id) {
		// 购物车有该产品
		if (productMapper.selectByPrimaryKey(id) != null) {
			return true;
		}
		return false;
	}

	@Override
	public void payProductOnlyOne(Product product, User user) {
		if (product != null && user != null
				&& StringUtils.isNotBlank(product.getId())
				&& StringUtils.isNotBlank(user.getId())) {
			Order order = new Order();
			order.setId(UUIDCreate.getUUID());
			// 订单总价格
			order.setCountPrice(productMapper.selectByPrimaryKey(
					product.getId()).getProductPrice());
			// 订单创建时间
			order.setOrderCreateTime(new Date());
			// 支付用户
			order.setUserId(user.getId());

			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setId(UUIDCreate.getUUID());
			orderDetail.setOrderId(order.getId());
			orderDetail.setPrice(order.getCountPrice());
			orderDetail.setProductId(product.getId());

			orderMapper.insertSelective(order);
			orderDetailMapper.insertSelective(orderDetail);
		}
	}

	@Override
	public void buyCarPay(User user, String[] productIds) {
		List<Product> productList = productMapper.selectProductListByIds(Arrays
				.asList(productIds));
		Order order = new Order();
		order.setId(UUIDCreate.getUUID());
		// order.setCountPrice(countPrice);
		for (@SuppressWarnings("unused")
		Product productInfo : productList) {

		}
	}
}
