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
import com.yfann.web.dao.DicMapper;
import com.yfann.web.dao.ProductImageMapper;
import com.yfann.web.dao.ProductKindMapper;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductExample;
import com.yfann.web.pojo.ProductImage;
import com.yfann.web.pojo.ProductKind;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaProductService;
import com.yfann.web.vo.PageInfo;

@Service
public class OaProductServiceImpl implements OaProductService {
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private ProductImageMapper productImageMapper;
	@Autowired 
	private ProductKindMapper productKindMapper;
	@Autowired
	private DicMapper dicMapper;
	
	
	
	private byte[] fileToPicData(File file){
		InputStream is = null;
		byte[] picData = new byte[(int) file.length()];
		try {
			is = new FileInputStream(file);
			is.read(picData);

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
		return picData;
	}
	
	@Override
	public void saveProduct(Product product,File scan,File[] images) {
		
		//转换产品的缩略图
		byte[] picData = scan==null?null:fileToPicData(scan);
		product.setProductSamllPic(picData);
		String productId = UUIDCreate.getUUID();
		product.setId(productId);
		if (product != null) {		
			productMapper.insert(product);
		}
		//保存课程精彩截图
		for(File image:images){
			byte[] imgData = image==null?null:fileToPicData(image);
			if(null != imgData){
				ProductImage proImg = new ProductImage();
				proImg.setId(UUIDCreate.getUUID());
				proImg.setProductId(productId);
				proImg.setProductImage(imgData);
				productImageMapper.insert(proImg);
			}
				
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
	public List<Product> selectProductList(Product product,PageInfo pageInfo) {
		 if (null != pageInfo) {
	            pageInfo.setCount(productMapper.selectCountByProductParam(product));
	            List<Product> list =productMapper.selectListByProductParam(product, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));            
	            return   list;
	            }
	     return productMapper.selectListByProductParam(product);
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



	@Override
	public List<Dic> selectProductStatusDicList() {
		return dicMapper.selectDicListByDicType("PRODUCT_SATTUS");
	}

	@Override
	public List<Dic> selectProductLevelDicList() {
		return dicMapper.selectDicListByDicType("PRODUCT_LEVEL");
	}

	@Override
	public List<ProductKind> selectProductKindList() {
		return productKindMapper.selectAllProductKindList();
	}
}
