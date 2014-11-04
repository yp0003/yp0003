package com.yfann.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.ProductKindMapper;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductKind;
import com.yfann.web.service.ProductService;
import com.yfann.web.vo.PageInfo;
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	/**产品*/
	private ProductMapper productMapper;
	/**产品分类*/
	@Autowired
	private ProductKindMapper productKindMapper;
	@Override
	public List<Product> findProductList(Product product, PageInfo pageInfo) {
		Map<String, Object> paramer = getProductParamer(product);
		pageInfo.setCount(productMapper.selectProductCountByParamer(paramer));
		return productMapper.selectProductByParamer(paramer, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));
	}

	private Map<String,Object> getProductParamer(Product product){
		Map<String, Object> paramer = new HashMap<String, Object>();
		if(product != null){
			//TODO DO SOMETHING...
		}
		return paramer;
	}

	@Override
	public List<ProductKind> findAllProductKindList() {
		return productKindMapper.selectAllProductKindList();
	}
}