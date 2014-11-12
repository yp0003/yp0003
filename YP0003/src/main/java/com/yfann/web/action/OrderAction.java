package com.yfann.web.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.annotation.UserSessionCheck;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.BuyCar;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OrderService;
import com.yfann.web.vo.PageInfo;

public class OrderAction extends CommonAction {
	final Logger logger = LoggerFactory.getLogger(OrderAction.class);
	private static final long serialVersionUID = 5350272860785771007L;
	private BuyCar buyCar;
	private PageInfo pageInfo;
	private List<BuyCar> buyCarList;
	private String[] buyCarIds;
	private String[] productIds;
	private Product product;
	@Autowired
	private OrderService orderService;
	/** Struts2下载(内存数据下载) */
	public ByteArrayInputStream byteArrayInputStream;
	private InputStream jsonInputStream;
	
	/**
	 * 跳转到确认订单页面
	 * @return
	 */
	@UserSessionCheck
	public String forwardSureOrder(){
		return "forwardSureOrder";
	}

	/**
	 * 清空购物车
	 * @return
	 */
	@UserSessionCheck
	public String emptyBuyCar(){
		orderService.deleteBuyCar(currentUserInfo());
		return "emptyBuyCar";
	}
	/**
	 * 根据购物车ID删除购物车
	 * @return
	 * @throws Exception
	 */
	@UserSessionCheck
	public String deleteBuyCarById() throws Exception{
		orderService.deleteBuyCayById(buyCar.getId());
		return buyCarList();
	}
	/**
	 * 添加到购物车
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String addBuyCar() throws Exception {
		if (orderService.findProductIsInBuyCar(product, currentUserInfo())) {
			// 已存在 数量加1
			orderService.addBuyCountByProductIdInBuyCar(product);
		} else {
			Product productTemp = orderService.findProductById(product.getId());
			BuyCar buyCar = new BuyCar();
			buyCar.setId(UUIDCreate.getUUID());
			buyCar.setAddTime(new Date());
			buyCar.setBuyCount(1);
			buyCar.setPrice(productTemp.getProductPrice());
			buyCar.setProductId(product.getId());
			if (currentUserInfo() != null) {
				buyCar.setUserId(currentUserInfo().getId());
			}
			buyCar.setProductName(productTemp.getProductName());
			orderService.addBuyCar(buyCar);
		}
		return buyCarList();
	}

	/**
	 * 购物车加1
	 * 
	 * @return
	 * @throws Exception 
	 */
	@UserSessionCheck
	public String addOneInBuyCar() throws Exception {
		orderService.addOneInBuyCar(buyCar);
		BuyCar buyCarInfo = orderService.findBuyCarById(buyCar.getId());
		setJsonInputStream(new ByteArrayInputStream(buyCarInfo.getBuyCount().toString().getBytes("utf-8")));
		return "addOneInBuyCar";
	}

	/**
	 * 购物车减1
	 * 
	 * @return
	 * @throws Exception 
	 */
	@UserSessionCheck
	public String subOneInBuyCar() throws Exception {
		orderService.subOneInBuyCar(buyCar);
		BuyCar buyCarInfo = orderService.findBuyCarById(buyCar.getId());
		setJsonInputStream(new ByteArrayInputStream(buyCarInfo.getBuyCount().toString().getBytes("utf-8")));
		return "subOneInBuyCar";
	}

	/**
	 * 订单列表
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String orderList() {
		return "orderList";
	}

	/**
	 * 直接结算
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String payProductOnlyOne() {
		orderService.payProductOnlyOne(product, currentUserInfo());
		return "payProductOnlyOne";
	}

	/**
	 * 显示购物车缩略图
	 * 
	 * @return
	 */
	public String viewSmallProductPic() {
		if (buyCar != null && StringUtils.isNotBlank(buyCar.getProductId())) {
			Product productTemp = new Product();
			productTemp.setId(buyCar.getProductId());
			setByteArrayInputStream(orderService
					.findProductSmallImgById(productTemp));
		}
		return "viewSmallProductPic";
	}

	/**
	 * 购物车列表
	 * 
	 * @return
	 * @throws Exception
	 */
	@UserSessionCheck
	public String buyCarList() throws Exception {
		// 此处BuyCar作为业务拼装条件map来使用
		if (buyCar == null) {
			buyCar = new BuyCar();
		}
		try {
			buyCarList = orderService.findBuyCarList(buyCar, pageInfo);
		} catch (Exception e) {
			logger.error(e.getMessage());
			logger.error(e.getLocalizedMessage());
			throw new Exception(e.getMessage(), e);
		}
		return "buyCarList";
	}

	/**
	 * 根据ID批量删除购物车产品
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String deleteProductOnBuyCayByAllIds() throws Exception {
		// orderService.deleteProductOnBuyCayByAllIds(buyCar.getIds());
		return "deleteProductOnBuyCayByAllIds";
	}

	private User currentUserInfo() {
		@SuppressWarnings("deprecation")
		Object userObj = session.getValue(ApplicationValue.USER_KEY_ON_SESSION);
		User userInfo = (User) userObj;
		return userInfo;
	}

	public BuyCar getBuyCar() {
		return buyCar;
	}

	public void setBuyCar(BuyCar buyCar) {
		this.buyCar = buyCar;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<BuyCar> getBuyCarList() {
		return buyCarList;
	}

	public void setBuyCarList(List<BuyCar> buyCarList) {
		this.buyCarList = buyCarList;
	}

	public String[] getBuyCarIds() {
		return buyCarIds;
	}

	public void setBuyCarIds(String[] buyCarIds) {
		this.buyCarIds = buyCarIds;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ByteArrayInputStream getByteArrayInputStream() {
		return byteArrayInputStream;
	}

	public void setByteArrayInputStream(
			ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}

	public String[] getProductIds() {
		return productIds;
	}

	public void setProductIds(String[] productIds) {
		this.productIds = productIds;
	}

	public InputStream getJsonInputStream() {
		return jsonInputStream;
	}
	public void setJsonInputStream(InputStream jsonInputStream) {
		this.jsonInputStream = jsonInputStream;
	}

}
