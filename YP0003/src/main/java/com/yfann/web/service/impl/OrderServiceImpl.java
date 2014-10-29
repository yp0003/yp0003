package com.yfann.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.BuyCarMapper;
import com.yfann.web.pojo.BuyCar;
import com.yfann.web.service.OrderService;
import com.yfann.web.vo.PageInfo;

@Service
public class OrderServiceImpl implements OrderService {
	final Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);
	@Autowired
	private BuyCarMapper buyCarMapper;

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
		//TODO  耗费资源后期待优化
		for(String id : ids) {
			buyCarMapper.deleteByPrimaryKey(id);
		}
	}

	@Override
	public void addCount(BuyCar buyCar) {
		buyCarMapper.updateByPrimaryKeySelective(buyCar);
	}
	
	private Map<String, Object> getBuyCarParamerMap(BuyCar buyCar){
		Map<String, Object> parames = new HashMap<String, Object>();
		return parames;
}

	@Override
	public List<BuyCar> findBuyCarList(BuyCar buyCar, PageInfo pageInfo) throws Exception{
		Map<String, Object> parames = getBuyCarParamerMap(buyCar);
/*		pageInfo.setCount(buyCarMapper.selectBuyCarCountByParamer(parames));
		return buyCarMapper.selectBuyCarListByParamer(parames, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));*/
		return null;
	}
}
