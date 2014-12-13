package com.yfann.web.service.impl;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.common.DicValue;
import com.yfann.web.dao.DicMapper;
import com.yfann.web.dao.MyProductMapper;
import com.yfann.web.dao.OaEmployeeMapper;
import com.yfann.web.dao.ProductAppraiseMapper;
import com.yfann.web.dao.ProductDetailAvatarMapper;
import com.yfann.web.dao.ProductDetailImageMapper;
import com.yfann.web.dao.ProductImageMapper;
import com.yfann.web.dao.ProductKindMapper;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductAppraise;
import com.yfann.web.pojo.ProductImage;
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
	@Autowired
	private ProductAppraiseMapper productAppraiseMapper;
	@Autowired
	private DicMapper dicMapper;
	@Autowired
	private ProductImageMapper productImageMapper;
	@Autowired
	private ProductDetailImageMapper productDetailImageMapper;
	@Autowired
	private ProductDetailAvatarMapper productDetailAvatarMapper;
	@Autowired
	private MyProductMapper myProductMapper;
	@Autowired
	private OaEmployeeMapper oaEmployeeMapper;
	
	@Override
	public MyProduct findMyProductByMyProductId(String myProductId) {
		return myProductMapper.selectMyProductById(myProductId);
	}
	
	@Override
	public ByteArrayInputStream findProductDetailImageById(
			String productDetailImageId) {
		return new ByteArrayInputStream(productDetailImageMapper.selectByPrimaryKey(productDetailImageId).getImage());
	}

	@Override
	public ByteArrayInputStream findProductDetailAvatarById(
			String productDetailAvatarId) {
		return new ByteArrayInputStream(productDetailAvatarMapper.selectByPrimaryKey(productDetailAvatarId).getAvatarImg());
	}
	
	@Override
	public ByteArrayInputStream findProductImageById(String productId) {
		ProductImage productImage=  productImageMapper.selectProductImageByProductId(productId);
		return new ByteArrayInputStream(productImage.getProductImage());
	}
	
	@Override
	public List<Dic> findProductAppraiseDicList() {
		return dicMapper.selectDicListByDicType(DicValue.ProductSatisfaction.PRODUCT_SATISFACTION_DIC_TYPE);
	}

	
	@Override
	public List<ProductAppraise> findProductAppraiseList(Product product,PageInfo pageInfo) {
		Map<String, Object> parames = getProductParamer(product);
		parames.put("productId", product.getId());
		pageInfo.setCount(productAppraiseMapper.selectProductAppraiseListCountByParames(parames));
		return productAppraiseMapper.selectProductAppraiseListByParames(parames, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));
	}
	
	@Override
	public Product findProductById(String productId) {
		/*return productMapper.selectByPrimaryKey(productId);*/
		return productMapper.selectProductByProductId(productId);
	}
	@Override
	public List<Product> findProductList(Product product, PageInfo pageInfo) {
		List<Product> list;
		if(pageInfo!=null){
			String pName = product.getProductName();
			if(null != pName && !"".equals(pName)){
				product.setProductName("%"+pName+"%");
			}
			pageInfo.setCount(productMapper.selectProductCountByParamer(product));
			list = productMapper.selectProductByParamer(product, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));
			product.setProductName(pName);
			return list;
		}
		return productMapper.selectProductByParamer(product);
	}

	private Map<String,Object> getProductParamer(Product product){
		Map<String, Object> paramer = new HashMap<String, Object>();
		if(product != null){
			if(StringUtils.isNotBlank(product.getProductName())){
				//产品名
				paramer.put("productName", "%"+ product.getProductName().trim() + "%");
			}
		}
		return paramer;
	}

	@Override
	public List<ProductKind> findAllProductKindList() {
		return productKindMapper.selectAllProductKindList();
	}

	@Override
	public ByteArrayInputStream findProductSmallImgById(Product product) {
		ByteArrayInputStream productSmallImg = null;
		if(product != null && StringUtils.isNotBlank(product.getId())){
			List<Product> proLists = productMapper.selectProductSmallImgById(product.getId());
			productSmallImg = new ByteArrayInputStream(proLists.get(0).getProductSamllPic());
		}
		return productSmallImg;
	}

	@Override
	public List<Product> findPerfectProductList() {
		
		Map<String, Object> parames = new HashMap<String, Object>();
		return productMapper.selectPerfectListByProductParam(parames);
	
	}
	@Override
	public List<Dic> selectProductLevelDicList() {
		return dicMapper.selectDicListByDicType("PRODUCT_LEVEL");
	}
	
	@Override
	public ByteArrayInputStream findEmpHeadImgById(
			String id) {
		return new ByteArrayInputStream(
				oaEmployeeMapper.selectByPrimaryKey(id).getHeadImg());
	}
	@Override
	public OaEmployee findTeacher(String id){
		return oaEmployeeMapper.selectByPrimaryKey(id);
	}
}
