package com.yfann.web.action;

import java.io.ByteArrayInputStream;
import java.util.List;

import com.yfann.web.common.ApplicationValue;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.User;

import org.apache.commons.lang3.StringUtils;
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
    private String[] buyCarIds;
    private String[] producyIds;
    private Product product;
	@Autowired
	private OrderService orderService;
	/**Struts2下载(内存数据下载)*/
	public ByteArrayInputStream byteArrayInputStream;


    /**
     * 订单列表
     * @return
     */
	public String orderList(){
		return "orderList";
	}

    /**
     * 显示购物车缩略图
     * @return
     */
    public String viewSmallProductPic(){
        if (buyCar != null && StringUtils.isNotBlank(buyCar.getProductId())){
            Product productTemp = new Product();
            productTemp.setId(buyCar.getProductId());
            setByteArrayInputStream(orderService.findProductSmallImgById(productTemp));
        }
        return "viewSmallProductPic";
    }

    /**
     * 购物车列表
     * @return
     * @throws Exception
     */
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
        if (product != null){
            if (buyCar == null) {
                buyCar = new BuyCar();
            }
            //查询购物车是否已存在该商品
            if(orderService.findIsProduct(product.getId())){
            	//更新购物车
            	orderService.addProductCountInBuyCar(product.getId());
            }else{
            	//添加到购物车
                buyCar.setProductId(product.getId());
                buyCar.setId(UUIDCreate.getUUID());
                //获取用户信息
                buyCar.setProductName(product.getProductName());
                buyCar.setBuyCount(1);
                buyCar.setUserId(currentUserInfo().getUserId());
                orderService.addBuyCar(buyCar);
            }
        }
		return "addBuyCar";
	}
	
	public String addProductCountInBuyCar(){
		orderService.addProductCountInBuyCar(product.getId());
		return "addProductCountInBuyCar";
	}

    private User currentUserInfo(){
        @SuppressWarnings("deprecation")
        Object userObj = session.getValue(ApplicationValue.USER_KEY_ON_SESSION);
        User userInfo = (User)userObj;
        return userInfo;
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

	public void setByteArrayInputStream(ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}

	public String[] getProducyIds() {
		return producyIds;
	}

	public void setProducyIds(String[] producyIds) {
		this.producyIds = producyIds;
	}
	
}
