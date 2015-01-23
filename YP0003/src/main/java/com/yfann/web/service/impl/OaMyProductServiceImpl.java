package com.yfann.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.MyProductMapper;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.MyProductExample;
import com.yfann.web.service.OaMyProductService;

@Service
public class OaMyProductServiceImpl implements OaMyProductService {
	@Autowired
	private MyProductMapper myProductMapper;
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private UserMapper userMapper;

	@Override
	public MyProduct getMyProductById(String id) {
		MyProduct m = myProductMapper.selectByPrimaryKey(id);
		m.setUserId(userMapper.selectByPrimaryKey(m.getUserId()).getUserId());
		m.setProduct(productMapper.selectByPrimaryKey(m.getProductId()));
		return m;
	}

	@Override
	public List<MyProduct> getAllMyProduct(int off, int lim) {
		MyProductExample example = new MyProductExample();
		example.or().andPlayerCodeIsNull();
		example.or().andPlayerCodeEqualTo("");
		List<MyProduct> list = myProductMapper.selectByExample(example, new RowBounds(off, lim));
		for (MyProduct m : list) {
			m.setUserId(userMapper.selectByPrimaryKey(m.getUserId()).getUserId());
			m.setProduct(productMapper.selectByPrimaryKey(m.getProductId()));
		}
		return list;
	}

	@Override
	public Integer getAllMyProductCount() {
		MyProductExample example = new MyProductExample();
		example.or().andPlayerCodeIsNull();
		return myProductMapper.countByExample(example);

	}

	@Override
	public void updateMyProduct(MyProduct myProduct) {
		myProductMapper.updateByPrimaryKeySelective(myProduct);
	}

}
