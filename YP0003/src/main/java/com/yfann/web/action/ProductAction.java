package com.yfann.web.action;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductAppraise;
import com.yfann.web.pojo.ProductDetailAvatar;
import com.yfann.web.pojo.ProductDetailImage;
import com.yfann.web.pojo.ProductKind;
import com.yfann.web.service.ProductService;
import com.yfann.web.vo.PageInfo;

public class ProductAction extends CommonAction {
	private static final long serialVersionUID = -8121327290616565600L;
	final Logger logger = LoggerFactory.getLogger(ProductAction.class);
	/** 产品 */
	private Product product;
	/** 产品列表 */
	private List<Product> productList;
	/** 分页 */
	private PageInfo pageInfo;
	/**课程种类*/
	private ProductKind pkind;
	/**课程种类列表*/
	private List<ProductKind> productKindList;
	/** 课程评论 */
	private ProductAppraise productAppraise;
	/** 课程评论列表 */
	private List<ProductAppraise> productAppraiseList;
	/** 课程评论字典 */
	private List<Dic> productAppraiseDicList;
	private ProductDetailImage productDetailImage;
	private ProductDetailAvatar productDetailAvatar;
	@Autowired
	private ProductService productService;
	/** Struts2下载(内存数据下载) */
	public ByteArrayInputStream byteArrayInputStream;
	
	private List<Dic> productLevelList;//课程难度字典列表
	

	/**
	 * 课程详情截图
	 * 
	 * @return
	 */
	public String showProductDetailImage() {
		// 填充内存流(课程缩略图)
		try {
			setByteArrayInputStream(productService
					.findProductDetailImageById(productDetailImage.getId()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "showProductDetailImage";
	}

	/**
	 * 课程截图
	 * 
	 * @return
	 */
	public String showProductDetailAvatar() {
		// 填充内存流(课程缩略图)
		try {
			setByteArrayInputStream(productService
					.findProductDetailAvatarById(productDetailAvatar.getId()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "showProductDetailAvatar";
	}

	/**
	 * 产品Logo
	 * 
	 * @return
	 */
	public String showProductImage() {
		// 填充内存流(课程缩略图)
		try {
			setByteArrayInputStream(productService.findProductImageById(product
					.getId()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "showProductImage";
	}

	/**
	 * 跳转到课程详情页面
	 * 
	 * @return
	 */
	public String forwardProductDetail() {
		if (product != null && StringUtils.isNotBlank(product.getId())) {
			try {
				product = productService.findProductById(product.getId());
				// 课程评论
				productAppraiseList = productService.findProductAppraiseList(
						product, pageInfo);
				// 课程评论满意度字典
				productAppraiseDicList = productService
						.findProductAppraiseDicList();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "forwardProductDetail";
	}

	/**
	 * 课程列表
	 * 
	 * @return
	 */
	public String forwardProductList() throws Exception {
		Product productInfo = ifEmptyProduct(product);
		productKindList = productService.findAllProductKindList();
		List<ProductKind>  temp = new ArrayList<ProductKind>();
		ProductKind kindtemp = new ProductKind();
		kindtemp.setId("");
		kindtemp.setProductKind("全部");
		temp.add(kindtemp);
		temp.addAll(productKindList);
		productKindList = temp;
		if(pkind==null&&productKindList!=null&&productKindList.size()>0){
			productKindList.get(0).setSelected(true);
			productInfo.setProductKindId(productKindList.get(0).getId());
		}
		
		else if(pkind!=null&&productKindList!=null&&productKindList.size()>0){
			for(ProductKind kind:productKindList){
				if(kind.getId().equals(pkind.getId())){
					productInfo.setProductKindId(pkind.getId());
					kind.setSelected(true);
				}
				else
					kind.setSelected(false);
			}
		}
		productList = productService.findProductList(productInfo, pageInfo);
		productLevelList = productService.selectProductLevelDicList();
		return "forwardProductList";
	}

	private Product ifEmptyProduct(Product product) {
		if (product == null) {
			return new Product();
		}
		return product;
	}

	public String showProductSmallImg() {
		// 填充内存流(课程缩略图)
		setByteArrayInputStream(productService.findProductSmallImgById(product));
		return "showProductSmallImg";

	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<ProductKind> getProductKindList() {
		return productKindList;
	}

	public void setProductKindList(List<ProductKind> productKindList) {
		this.productKindList = productKindList;
	}

	public ByteArrayInputStream getByteArrayInputStream() {
		return byteArrayInputStream;
	}

	public void setByteArrayInputStream(
			ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}

	public ProductAppraise getProductAppraise() {
		return productAppraise;
	}

	public void setProductAppraise(ProductAppraise productAppraise) {
		this.productAppraise = productAppraise;
	}

	public List<ProductAppraise> getProductAppraiseList() {
		return productAppraiseList;
	}

	public void setProductAppraiseList(List<ProductAppraise> productAppraiseList) {
		this.productAppraiseList = productAppraiseList;
	}

	public List<Dic> getProductAppraiseDicList() {
		return productAppraiseDicList;
	}

	public void setProductAppraiseDicList(List<Dic> productAppraiseDicList) {
		this.productAppraiseDicList = productAppraiseDicList;
	}

	public ProductDetailImage getProductDetailImage() {
		return productDetailImage;
	}

	public void setProductDetailImage(ProductDetailImage productDetailImage) {
		this.productDetailImage = productDetailImage;
	}

	public ProductDetailAvatar getProductDetailAvatar() {
		return productDetailAvatar;
	}

	public void setProductDetailAvatar(ProductDetailAvatar productDetailAvatar) {
		this.productDetailAvatar = productDetailAvatar;
	}

	public ProductKind getPkind() {
		return pkind;
	}

	public void setPkind(ProductKind pkind) {
		this.pkind = pkind;
	}

	public List<Dic> getProductLevelList() {
		return productLevelList;
	}

	public void setProductLevelList(List<Dic> productLevelList) {
		this.productLevelList = productLevelList;
	}

	

}
