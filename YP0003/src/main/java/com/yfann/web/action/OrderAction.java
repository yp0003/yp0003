package com.yfann.web.action;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.BuyCar;
import com.yfann.web.service.OrderService;
import com.yfann.web.vo.PageInfo;

public class OrderAction extends CommonAction {


	final Logger logger = LoggerFactory.getLogger(OrderAction.class);
	private static final long serialVersionUID = 5350272860785771007L;
	private BuyCar buyCar;
	private PageInfo pageInfo;
	private List<BuyCar> buyCarList;
	@Autowired
	private OrderService orderService;
	
	
	
	public String orderList(){
		return "orderList";
	}

	public String buyCarList() throws Exception{
		//此处BuyCar作为业务拼装条件map来使用
		if(buyCar == null){
			buyCar = new BuyCar();
		}
		try{
		buyCarList = orderService.findBuyCarList(buyCar, pageInfo);
		}catch(Exception e){
			logger.error(e.getMessage());
			logger.error(e.getLocalizedMessage());
			throw new Exception(e.getMessage(),e);
		}
		return "buyCarList";
	}

	/**
	 * 单个删除购物车产品
	 * 
	 * @return
	 */
	public String deleteProductOnBuyCay() throws Exception {
		try {
			orderService.deleteProductOnBuyCay(buyCar.getProductId());
		} catch (Exception e) {
			logger.error("系统异常---------------", e);
			throw new Exception(e.getMessage());
		}
		return "deleteProduct";
	}

	/**
	 * 根据ID批量删除购物车产品
	 * 
	 * @return
	 */
	public String deleteProductOnBuyCayByAllIds() throws Exception {
		//orderService.deleteProductOnBuyCayByAllIds(buyCar.getIds());
		return "deleteProductOnBuyCayByAllIds";
	}

	/**
	 * 添加到购物车
	 * 
	 * @return
	 */
	public String addBuyCar() throws Exception {
		for (int i = 0; i < 47; i++) {
			BuyCar buyCar = new BuyCar();
			buyCar.setId(UUIDCreate.getUUID());
			orderService.addBuyCar(buyCar);
		}
		return "addBuyCar";
	}

	/**
	 * 跳转到购物车页面
	 * 
	 * @return
	 */
	public String forwardBuyCar() {
		return "forwardBuyCar";
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

}
