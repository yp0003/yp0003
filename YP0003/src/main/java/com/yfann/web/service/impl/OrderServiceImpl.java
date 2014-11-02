package com.yfann.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.BuyCarMapper;
import com.yfann.web.dao.OrderMapper;
import com.yfann.web.pojo.BuyCar;
import com.yfann.web.pojo.Order;
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

	@Override
	public void addBuyCar(BuyCar buyCar) throws Exception {
		buyCarMapper.insertSelective(buyCar);
	}

	@Override
	public void deleteProductOnBuyCay(String id) {
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
		int aaaaa = pageInfo.getPageNo();
		List<BuyCar> buyCarList = buyCarMapper.selectBuyCarListByParamer(parames, new RowBounds(
				pageInfo.getOffset(), pageInfo.getPageSize()));
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
}
