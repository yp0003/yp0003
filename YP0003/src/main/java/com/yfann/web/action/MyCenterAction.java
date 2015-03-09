package com.yfann.web.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.annotation.UserSessionCheck;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.pojo.Message;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductDetail;
import com.yfann.web.pojo.User;
import com.yfann.web.service.MyCenterService;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.service.OrderService;
import com.yfann.web.service.ProductService;
import com.yfann.web.service.SystemService;
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
	/** 我的消息列表 */
	private List<Message> myMessageList;
	/** 我的消息 */
	private Message message;
	/** 课程 */
	private Product product;
	/** 课程详情 */
	private ProductDetail productDetail;
	@Autowired
	private OrderService orderService;
	@Autowired
	private MyCenterService myCenterService;
	@Autowired
	private ProductService productService;
	@Autowired
	private OaEmployeeService oaEmployeeService;
	private OaEmployee teacher;

	private int myMessageCount;

	// 扫描件
	private File file;
	// 扫描件文件类型
	private String fileContentType;
	private String fileFileName;

	/** Struts2下载(内存数据下载) */
	private ByteArrayInputStream byteArrayInputStream;

	@Autowired
	private SystemService systemService;

	/**
	 * 用户头像图片
	 */
	public String showUserHeader() {
		// 填充内存流(课程缩略图)
		try {
			setByteArrayInputStream(myCenterService.findUserHeadImgById(user
					.getId()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "showUserHeader";
	}

	public String forwardMySetting() {
		user = myCenterService.findUserInfoById(this.currentUserInfo());
		return "forwardMySetting";
	}

	public String cancelOrder() {

		orderService.cancelOrder(currentUserInfo(), order);
		return forwardMyOrderList();
	}

	/**
	 * 消息列表
	 * 
	 * @return
	 */
	public String messageList() {
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
		return "messageList";
	}

	/**
	 * 跳转到提交机器码页面
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String forwardCommitSmartCode() {
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
		try {
			myProduct = productService.findMyProductByMyProductId(myProduct
					.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "forwardCommitSmartCode";
	}

	/**
	 * 提交机器码
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String commitSmartCode() {
		if (myProduct != null && product != null
				&& StringUtils.isNotBlank(myProduct.getSmartCode())) {
			boolean flag = myCenterService.commitSmartCode(myProduct);
			if (flag) {
				addActionMessage("申请已提交!");
			} else {
				addActionMessage("提交失败");
			}
		} else {
			addActionError("请填写完整信息");
		}
		return "commitSmartCode";
	}

	/**
	 * 我的课程详情
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String myProductDetail() {
		myProduct = productService
				.findMyProductByMyProductId(myProduct.getId());
		return "myProductDetail";
	}

	/**
	 * 跳转到我的课程列表
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String forwardMyProductList() {
		user = currentUserInfo();
		setByteArrayInputStream(myCenterService
				.findUserHeadImgById(currentUserInfo().getId()));
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
		if (myProduct == null) {
			myProduct = new MyProduct();
		}
		myProductList = myCenterService.findMyProductList(currentUserInfo(),
				myProduct, pageInfo);

		return "forwardMyProductList";
	}

	/**
	 * 跳转到消息列表页面
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String forwardMyMessage() {
		user = currentUserInfo();
		setByteArrayInputStream(myCenterService
				.findUserHeadImgById(currentUserInfo().getId()));
		if (message == null) {
			message = new Message();
		}
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
		myMessageList = myCenterService.findMyMessageList(currentUserInfo(),
				message, pageInfo);
		return "forwardMyMessageList";
	}

	/**
	 * 删除消息
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String delMessage() {
		myCenterService.delMessage(message.getId());
		return forwardMyMessage();
	}

	/**
	 * 跳转到消息明细页面
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String messageDetail() {
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
		message = myCenterService.msgDetail(message.getId());
		return "messageDetail";
	}

	@UserSessionCheck
	public String forwardReplyMsg() {
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
		message = myCenterService.msgDetail(message.getId());
		Message replyMsg = new Message();
		replyMsg.setSendUserId(currentUserInfo().getId());
		replyMsg.setSendUser(currentUserInfo());
		replyMsg.setReceiveUserId(message.getSendUserId());
		replyMsg.setReceiveUser(message.getSendUser());
		message = replyMsg;
		return "replyMsg";
	}

	@UserSessionCheck
	public String replyMsg() {
		myCenterService.replyMsg(message);
		addActionMessage("发送成功");
		return forwardMyMessage();
	}

	/**
	 * 跳转到更新个人资料页面
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String forwardUpdateInfo() {
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
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
		return forwardMySetting();
	}

	/**
	 * 修改密码
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String modifyPassword() {
		User loginedUser = (User) session
				.getAttribute(ApplicationValue.USER_KEY_ON_SESSION);
		if (user != null) {
			if (StringUtils.isNotBlank(user.getOldPassword())
					&& StringUtils.isNoneBlank(user.getNowPassword())
					&& StringUtils.isNoneBlank(user.getRepassword())) {
				if(user.getOldPassword().equals(loginedUser.getNowPassword())){
					if(user.getNowPassword().length() >= 6){
						if(user.getNowPassword().equals(user.getRepassword())){
							session.removeAttribute(ApplicationValue.USER_KEY_ON_SESSION);
							user.setId(loginedUser.getId());
							myCenterService.updatePassword(user);
							return "modifyPassword";
						}else{
							addActionError("两次密码输入不正确");
						}
					}else{
						addActionError("密码不得小于6位");
					}
				}else{
					addActionError("请输入正确的旧密码");
				}

			}else{
				addActionError("请输入完整信息");
			}
		} else {
			addActionError("请输入用户名");
		}
		return forwardModifyPassword();
	}

	public String forwardModifyPassword() {
		return "forwardModifyPassword";
	}

	public String forwardUploadHander() {
		if (null != user) {
			user = systemService.findUserById(user.getId());
			if (null != user) {
				byteArrayInputStream = user.getHeadImg() == null ? null
						: new ByteArrayInputStream(user.getHeadImg());
			}

		}
		return "forwardUploadHander";
	}

	/**
	 * 跳转到我的订单页面
	 * 
	 * @return
	 */
	@UserSessionCheck
	public String forwardMyOrderList() {
		user = currentUserInfo();
		setByteArrayInputStream(myCenterService
				.findUserHeadImgById(currentUserInfo().getId()));
		myMessageCount = myCenterService.getUnReadMessage(currentUserInfo());
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

	@UserSessionCheck
	public String saveHeadImg() {
		myCenterService.saveHeaderImg(user, file);
		return forwardUploadHander();
	}

	public String forwardMyOrderDetail() {
		user = currentUserInfo();
		order = orderService.findOrderByOrderId(order.getId());
		teacher = oaEmployeeService.getEmpById(order.getOrderDetailList()
				.get(0).getProduct().getTeacherId());
		return "forwardMyOrderDetail";
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

	public int getMyMessageCount() {
		return myMessageCount;
	}

	public void setMyMessageCount(int myMessageCount) {
		this.myMessageCount = myMessageCount;
	}

	public OaEmployee getTeacher() {
		return teacher;
	}

	public void setTeacher(OaEmployee teacher) {
		this.teacher = teacher;
	}

	public ByteArrayInputStream getByteArrayInputStream() {
		return byteArrayInputStream;
	}

	public void setByteArrayInputStream(
			ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

}
