package com.yfann.web.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.BuyCarMapper;
import com.yfann.web.pojo.BuyCar;
import com.yfann.web.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	final Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);
	@Autowired
	private BuyCarMapper buyCarMapper;

	@Override
	public void addBuyCar(BuyCar buyCar) throws Exception {
		buyCarMapper.insertSelective(buyCar);
	}
}
