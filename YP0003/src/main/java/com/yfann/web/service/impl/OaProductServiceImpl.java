package com.yfann.web.service.impl;

import java.io.File;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.common.FileUtil;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.dao.DicMapper;
import com.yfann.web.dao.ProductDetailAvatarMapper;
import com.yfann.web.dao.ProductDetailImageMapper;
import com.yfann.web.dao.ProductDetailMapper;
import com.yfann.web.dao.ProductImageMapper;
import com.yfann.web.dao.ProductKindMapper;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductDetail;
import com.yfann.web.pojo.ProductDetailAvatar;
import com.yfann.web.pojo.ProductDetailImage;
import com.yfann.web.pojo.ProductExample;
import com.yfann.web.pojo.ProductKind;
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
	@Autowired
	private ProductDetailMapper productDetailMapper;
	@Autowired
	private ProductDetailAvatarMapper productDetailAvatarMapper;
	@Autowired
	private ProductDetailImageMapper productDetailImageMapper;
	
	
	
	@Override
	public void saveProduct(Product product,File scan,File[] images,File[] detailImags) {
		//转换产品的缩略图
		byte[] picData = scan==null?null:FileUtil.fileToPicData(scan,logger);
		product.setProductSamllPic(picData);
		if(null == product.getId() ||"".equals(product.getId())){//id为空是说明是新增						
			product.setId(UUIDCreate.getUUID());	
			product.setProductStatus("000");//默认为审核状态
			product.setUpdateTime(new Date());
			productMapper.insert(product);

			
		}else{
			product.setUpdateTime(new Date());
			productMapper.updateByPrimaryKeySelective(product);
		}
		//保存课程精彩截图
		if(images!=null){
			for(File image:images){
				byte[] imgData = image==null?null:FileUtil.fileToPicData(image,logger);
				if(null != imgData){
					ProductDetailAvatar proImg = new ProductDetailAvatar();
					proImg.setId(UUIDCreate.getUUID());
					proImg.setProductId(product.getId());
					proImg.setAvatarImg(imgData);
					productDetailAvatarMapper.insert(proImg);
				}					
			}
		}
		//保存课程细节图片
		if(detailImags!=null){
			for(File image:detailImags){
				byte[] imgData = image==null?null:FileUtil.fileToPicData(image,logger);
				if(null != imgData){
					ProductDetailImage pi = new ProductDetailImage();
					pi.setId(UUIDCreate.getUUID());
					pi.setProductId(product.getId());
					pi.setImage(imgData);
					productDetailImageMapper.insert(pi);
				}					
			}
		}
		//保存课程细节
		if(null !=product.getProductDetailList() && !product.getProductDetailList().isEmpty()){
			for(ProductDetail detail:product.getProductDetailList()){
				if(detail!=null && !detail.isEmpty()){
					if(detail.getId()==null||"".equals(detail.getId())){//新课程信息
						detail.setProductId(product.getId());
						detail.setCreateTime(new Date());
						detail.setId(UUIDCreate.getUUID());
						productDetailMapper.insert(detail);
					}else{//更新的新课程信息
						productDetailMapper.updateByPrimaryKeySelective(detail);
					}

				}
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
	final Logger logger = LoggerFactory.getLogger(OaProductServiceImpl.class);





	@Override
	public void updateStatus(String id,String status) {
		Product product = new Product();
		product.setId(id);
		product.setProductStatus(status);
		productMapper.updateByPrimaryKeySelective(product);
	}
}
