package com.yfann.web.action;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.pojo.Product;
import com.yfann.web.service.ProductService;
import com.yfann.web.vo.PageInfo;

public class ProductAction extends CommonAction{
	private static final long serialVersionUID = -8121327290616565600L;
	final Logger logger = LoggerFactory.getLogger(ProductAction.class);
	/**产品*/
	private Product product;
	/**产品列表*/
	private List<Product> productList;
	/**分页*/
	private PageInfo pageInfo;
	@Autowired
	private ProductService productService;
	/**
	 * 课程列表
	 * @return
	 */
	public String forwardProductList() throws Exception{
		Product productInfo = ifEmptyProduct(product);
		productList = productService.findProductList(productInfo, pageInfo);
		return "forwardProductList";
	}
	private Product ifEmptyProduct(Product product){
		if(product == null){
			return new Product();
		}
		return product;
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
}
