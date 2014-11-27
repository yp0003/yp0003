package com.yfann.web.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.annotation.UserSessionCheck;
import com.yfann.web.pojo.Message;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductDetail;
import com.yfann.web.pojo.User;
import com.yfann.web.service.MyCenterService;
import com.yfann.web.service.OrderService;
import com.yfann.web.service.ProductService;
import com.yfann.web.vo.PageInfo;

public class MyCenterAction extends CommonAction {
	private static final long serialVersionUID = 3712145844614909298L;
	private List<Order> orderList;
	private Order order;
	private OrderDetail orderDetail;
	private String[] orderIds;
	/** 分页组件 */
	private PageInfo pageInfo;
	/** 用户 */
	private User user;
	/** 我的课程 */
	private MyProduct myProduct;
	/** 我的课程列表 */
	private List<MyProduct> myProductList;
	/** 我的消息列表*/
	private List<Message> myMessageList;
	/** 我的消息*/
	private Message message;
	/**课程*/
	private Product product;
	/**课程详情*/
	private ProductDetail productDetail;
	@Autowired
	private OrderService orderService;
	@Autowired
	private MyCenterService myCenterService;
	@Autowired
	private ProductService productService;
	
	/**
	 * 消息列表
	 * @return
	 */
	public String messageList(){
		
		return "messageList";
	}

	/**
	 * 跳转到提交机器码页面
	 * @return
	 */
	@UserSessionCheck
	public String forwardCommitSmartCode(){
		try{
		myProduct = productService.findMyProductByMyProductId(myProduct.getId());
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "forwardCommitSmartCode";
	}
	
	/**
	 * 提交机器码
	 * @return
	 */
	@UserSessionCheck
	public String commitSmartCode(){
		if(myProduct !=null && product != null && StringUtils.isNotBlank(myProduct.getSmartCode())){
			boolean flag = myCenterService.commitSmartCode(myProduct);
			if(flag){
				addActionMessage("申请已提交!");
			}else{
				addActionMessage("提交失败");
			}
		}
		else{
			addActionError("请填写完整信息");
		}
		return "commitSmartCode";
	}
	/**
	 * 我的课程详情
	 * @return
	 */
	@UserSessionCheck
	public String myProductDetail(){
		myProduct = productService.findMyProductByMyProductId(myProduct.getId());
		return "myProductDetail";
	}
	/**
	 * 跳转到我的课程列表
	 * @return
	 */
	@UserSessionCheck
	public String forwardMyProductList() {
		if (myProduct == null) {
			myProduct = new MyProduct();
		}
		myProductList = myCenterService.findMyProductList(currentUserInfo(),
				myProduct, pageInfo);
		return "forwardMyProductList";
	}

	@UserSessionCheck
	public String forwardMyMessage(){
		if(message == null){
			message = new Message();
		}			
		myMessageList = myCenterService.findMyMessageList(currentUserInfo(), message, pageInfo);
		return "forwardMyMessageList";
	}
	
	/**
	 * 跳转到更新个人资料页面
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String forwardUpdateInfo() {
		user = myCenterService.findUserInfoById(currentUserInfo());
		return "forwardUpdateInfo";
	}

	/**
	 * 更新用户信息
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String updateInfo() {
		boolean flag = myCenterService.updateSingleInfo(user);
		if (!flag) {
			addActionError("更新失败");
		}
		return forwardUpdateInfo();
	}

	/**
	 * 修改密码
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String modifyPassword() {
		if (user != null) {
			if (user.getNowPassword().split(",").length > 1
					&& user.getNowPassword().split(",")[0].equals(user
							.getNowPassword().split(",")[1])) {
				myCenterService.updatePassword(user);
			}
		}
		return "modifyPassword";
	}

	public String forwardModifyPassword() {
		return "forwardModifyPassword";
	}

	/**
	 * 跳转到我的订单页面
	 * @return
	 */
	@UserSessionCheck
	public String forwardMyOrderList() {
		if (order == null) {
			order = new Order();
		}
		order.setUserId(currentUserInfo().getId());
		try {
			orderList = orderService.findOrderList(currentUserInfo(), order,
					pageInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "forwardMyOrderList";
	}

	public String[] getOrderIds() {
		return orderIds;
	}

	public void setOrderIds(String[] orderIds) {
		this.orderIds = orderIds;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public OrderDetail getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(OrderDetail orderDetail) {
		this.orderDetail = orderDetail;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public MyProduct getMyProduct() {
		return myProduct;
	}

	public void setMyProduct(MyProduct myProduct) {
		this.myProduct = myProduct;
	}

	public List<MyProduct> getMyProductList() {
		return myProductList;
	}

	public void setMyProductList(List<MyProduct> myProductList) {
		this.myProductList = myProductList;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductDetail getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(ProductDetail productDetail) {
		this.productDetail = productDetail;
	}

	public List<Message> getMyMessageList() {
		return myMessageList;
	}

	public void setMyMessageList(List<Message> myMessageList) {
		this.myMessageList = myMessageList;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

}
