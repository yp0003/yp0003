package com.yfann.web.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.common.UUIDCreate;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductExample;
import com.yfann.web.service.OaProductService;

@Service
public class OaProductServiceImpl implements OaProductService {
	@Autowired
	private ProductMapper productMapper;

	@Override
	public void saveProduct(Product product,File scan) {
		
		InputStream is = null;
		byte[] picData = new byte[(int) scan.length()];
		try {
			is = new FileInputStream(scan);
			is.read(picData);
			product.setProductSamllPic(picData);
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally{
			try {
				if(is != null)
					is.close();
			} catch (IOException e) {
				logger.error(e.getMessage());
			}
		}
		if (product != null) {
			product.setId(UUIDCreate.getUUID());
			productMapper.insert(product);
		}
	}

	@Override
	public void deleteProductById(String id) {
		productMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updateProduct(Product product){
		if (product != null) {
			productMapper.updateByPrimaryKeySelective(product);
		}
	}

	@Override
	public List<Product> getAllProduct(int off, int lim) {
		ProductExample productExample = new ProductExample();
		productExample.setOrderByClause("update_time desc");
		return productMapper.selectByExample(productExample, new RowBounds(off, lim));
	}

	@Override
	public Integer getAllCountProduct() {
		return productMapper.countByExample(new ProductExample());
	}

	@Override
	public List<Product> getProductByIds(String[] ids) {
		ProductExample example = new ProductExample();
		example.or().andIdIn(Arrays.asList(ids));
		return productMapper.selectByExample(example);
	}

	@Override
	public Product getProductById(String id) {
		return productMapper.selectByPrimaryKey(id);
	}
	final Logger logger = LoggerFactory.getLogger(OaProductServiceImpl.class);
}
