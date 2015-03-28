<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script>
	var _hmt = _hmt || [];
</script>
<title>订单管理</title>
</head>
<body style="background-color: #EEEEEE">
	<!-- 头部 -->
	<%@ include file="../common/commonHeader.jsp"%>
	<div class="container-fluid" style="width: 80%">


		<div class="row">


			<div class="col-md-4" style="width: 20%">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-12">
							<img src="./54584f0b000124f802200220-220-220.jpg" alt="..."
								style="width: 212px; height: 200px;" />
						</div>
						<div class="col-md-12">
							<div class="caption">
								<h3>a767175432</h3>

								<p class="text-muted">这位童鞋很懒，什么也没有留下～～！</p>

								<p></p>
							</div>
						</div>
					</div>
				</div>


			</div>


			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-body">

						<div class="btn-group" role="group" aria-label="...">
							<div class="btn-group" role="group" aria-label="...">
								<button type="button" class="btn btn-default">订单</button>
								<button type="button" class="btn btn-default">课程</button>
								<button type="button" class="btn btn-default">消息</button>
							</div>
						</div>
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-body">

						<!--                    <h3 id="progress" class="page-header">查询条件<a class="anchorjs-link" href="#progress"><span class="anchorjs-icon"></span></a></h3>-->


						<!--                   <div class="media">
                                           <div class="media-left">
                                               <a href="#">
                                                   <img src="./54584f0b000124f802200220-220-220.jpg" alt="..." style="width:100px;height: 100px;"/>
                                               </a>
                                           </div>
                                           <div class="media-body">
                                               <h4 class="media-heading">课程名称</h4>
                                               <p>
                                                   <span class="label label-info">测试课程</span>

                                               </p>
                                           </div>

                                           <div class="media-body">
                                               <h4 class="media-heading">订单详情</h4>
                                               <p>
                                                   <span class="label label-info">订单编号：null-null-20150319</span>
                                                   <span class="label label-info">下单时间：2015-03-19</span>

                                               </p>
                                           </div>


                                           <div class="media-body">
                                               <h4 class="media-heading">订单价格</h4>
                                               <p>
                                                   <span class="label label-info">订单编号：null-null-20150319</span>
                                                   <span class="label label-info">下单时间：2015-03-19</span>

                                               </p>
                                           </div>

                                           <div class="media-body">
                                               <h4 class="media-heading">订单状态</h4>
                                               <p>
                                                   <span class="label label-info">订单编号：null-null-20150319</span>
                                                   <span class="label label-info">下单时间：2015-03-19</span>

                                               </p>
                                           </div>

                                       </div>-->

						<table class="table table-bordered" style="text-align: center">
							<thead>
								<tr>
									<th style="width: 120px;">课程logo</th>
									<th>订单名称</th>
									<th>价格</th>
									<th>订单状态</th>
									<th>下单时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><img src="./54584f0b000124f802200220-220-220.jpg"
										alt="..." style="width: 100px; height: 100px;" /></td>
									<td>测试课程</td>
									<td>￥33333.0</td>
									<td>未支付</td>
									<td>2014-05-20</td>
									<td>
										<button type="button" class="btn btn-primary">取消订单</button> <br>
										<br>
										<button type="button" class="btn btn-danger">立即支付</button>
									</td>
								</tr>
								<tr>
									<td><img src="./54584f0b000124f802200220-220-220.jpg"
										alt="..." style="width: 100px; height: 100px;" /></td>
									<td>测试课程</td>
									<td>￥33333.0</td>
									<td>未支付</td>
									<td>2014-05-20</td>
									<td>
										<button type="button" class="btn btn-primary">取消订单</button> <br>
										<br>
										<button type="button" class="btn btn-danger">立即支付</button>
									</td>
								</tr>
								<tr>
									<td><img src="./54584f0b000124f802200220-220-220.jpg"
										alt="..." style="width: 100px; height: 100px;" /></td>
									<td>测试课程</td>
									<td>￥33333.0</td>
									<td>未支付</td>
									<td>2014-05-20</td>
									<td>
										<button type="button" class="btn btn-primary">取消订单</button> <br>
										<br>
										<button type="button" class="btn btn-danger">立即支付</button>
									</td>
								</tr>
							</tbody>


							<tfoot>

								<tr>

									<td colspan="6"><nav>
										<ul class="pagination">
											<li class="disabled"><a href="#" aria-label="Previous"><span
													aria-hidden="true">«</span></a></li>
											<li class="active"><a href="#">1 <span
													class="sr-only">(current)</span></a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#" aria-label="Next"><span
													aria-hidden="true">»</span></a></li>
										</ul>
										</nav></td>
								</tr>
							</tfoot>
						</table>
					</div>

				</div>
			</div>
		</div>

	</div>

	<%-- 	<br />
	<div class="container">
		<%@ include file="common/commonRight.jsp"%>
		<div class="mymain-content l " style="margin-left: 20px;">
			<div class="myspace-list l " style="float: left;">
				<a
					href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html"
					class="myspace-course"><span>订单</span></a> <a
					href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html"
					class="myspace-plan"><span>课程</span></a> <a
					href="${pageContext.request.contextPath}/mycenter!forwardMyMessage.html"
					class="myspace-ques "><span>消息</span></a>
				           <a href="#" class="myspace-note "><span>设置</span></a>
			</div>

			<div class="myspace-courselist myspace-bg r">


				<div class="main-bd ">
					<!-- clearfix -->
					<div class="space-tabs-menu">
						<ul>
							<li><a href="" class="curr">课程订单</a></li>
							<!-- 					    <li><a href="" class="curr">代码</a></li> -->
						</ul>
						<div style="left: 0px" class="dot-curr"></div>
					</div>




					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
					<!-- 					<div class="uncode"> -->
					<div class="course-content course-content1">
							<div class="course-content">
								<div class="tab">
									<div class="title">
										<ul class="fn-clear tab-ul">
											<li class="def tab-s" n="1">待付款</li>
											<li class="tab-s" n="2">已付款</li>
											<li class="tab-s" n="3">全部</li>

										</ul>
									</div>
									<div class="tj_1 sp fn-clear">

										<div class="kc_tbl mt20 mb20" style="">
											<ul class="container">
												<s:if test="orderList.size>0">
													<s:iterator value="orderList" id="order">
														<s:if test="#order.orderStatusDic.dicCode==0">

															<br />
															<li class="row">
																<div class="photo">
																	<a
																		href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>"
																		target="_blank"> <img
																		src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>"
																		class="lazy_image" data-original="" width="108px"
																		height="82px"
																		alt="<s:property value="#order.orderDetailList[0].product.productName"/>" /></a>
																</div>
																<div class="title">
																	<div class="name">
																		<a href="/144281/intro" target="_blank"><s:property
																				value="#order.orderDetailList[0].product.productName" /></a>
																	</div>
																	<div class="order">
																		<span class="label">订单编号：<span class="oid"><s:property
																					value="#order.orderId" /></span></span> <span class="label">下单时间：<span
																			class="otime"><s:date
																					name="#order.orderCreateTime" format="yyyy-MM-dd" /></span></span>
																	</div>
																</div>
																<div class="price">
																	￥<span class="num"><s:property
																			value="#order.countPrice" /></span>
																</div>
																<div class="status">
																	<table>
																		<tr>
																			<td valign="middle" height="52"><span> <s:property
																						value="#order.orderStatusDic.dicCn" />
																			</span>&nbsp;</td>
																		</tr>
																	</table>
																</div>
																<div class="action">
																	<a href="" class="link_btn" name="goToPay"
																		data-classid="144281" target="_blank"
																		data-orderid="2954076">立即支付</a> <a
																		class="showOrderDetail"
																		href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html?order.id=<s:property value="#order.id"/>"
																		target="_blank">查看详情</a> <br /> <a
																		class="cancelOrder"
																		href="${pageContext.request.contextPath}/mycenter!cancelOrder.html?order.id=<s:property value="#order.id"/>"
																		name="cancelOrder" data-orderid="2954076"> 取消</a>

																</div>
															</li>
														</s:if>
													</s:iterator>
												</s:if>
												<s:else>
													<span>暂无订单</span>
												</s:else>
											</ul>
										</div>


									</div>
									<div class="tj_2 sp fn-clear">
										<div class="kc_tbl mt20 mb20" style="">

											<ul class="container">

												<s:iterator value="orderList" id="order">
													<s:if test="#order.orderStatusDic.dicCode==1">


														<br />
														<li class="row">
															<div class="photo">
																<a
																	href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>"
																	target="_blank"> <img
																	src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>"
																	class="lazy_image" data-original="" width="108px"
																	height="82px"
																	alt="<s:property value="#order.orderDetailList[0].product.productName"/>" /></a>
															</div>
															<div class="title">
																<div class="name">
																	<a href="" target="_blank"><s:property
																			value="#order.orderDetailList[0].product.productName" /></a>
																</div>
																<div class="order">
																	<span class="label">订单编号：<span class="oid"><s:property
																				value="#order.orderId" /></span></span> <span class="label">下单时间：<span
																		class="otime"><s:date
																				name="#order.orderCreateTime" format="yyyy-MM-dd" /></span></span>
																</div>
															</div>
															<div class="price">
																￥<span class="num"><s:property
																		value="#order.countPrice" /></span>
															</div>
															<div class="status">
																<table>
																	<tr>
																		<td valign="middle" height="52"><span> <s:property
																					value="#order.orderStatusDic.dicCn" />
																		</span>&nbsp;</td>
																	</tr>
																</table>
															</div>
															<div class="action">
																<a href="" class="link_btn" name="goToPay"
																	data-classid="144281" target="_blank"
																	data-orderid="2954076">立即支付</a> <a
																	class="showOrderDetail"
																	href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html?order.id=<s:property value="#order.id"/>"
																	target="_blank">查看详情</a> <br />
																                                <a class="cancelOrder" href="${pageContext.request.contextPath}/mycenter!cancelOrder.html?order.id=<s:property value="#order.id"/>" name="cancelOrder"  data-orderid="2954076"> 取消</a>

															</div>
														</li>
													</s:if>
												</s:iterator>

											</ul>
										</div>

									</div>
									<div class="tj_3 sp fn-clear">
										<div class="kc_tbl mt20 mb20" style="">

											<ul class="container">

												<s:iterator value="orderList" id="order">

													<br />
													<li class="row">
														<div class="photo">
															<a
																href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>"
																target="_blank"> <img
																src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>"
																class="lazy_image" data-original="" width="108px"
																height="82px"
																alt="<s:property value="#order.orderDetailList[0].product.productName"/>" /></a>
														</div>
														<div class="title">
															<div class="name">
																<a href="" target="_blank"><s:property
																		value="#order.orderDetailList[0].product.productName" /></a>
															</div>
															<div class="order">
																<span class="label">订单编号：<span class="oid"><s:property
																			value="#order.orderId" /></span></span> <span class="label">下单时间：<span
																	class="otime"><s:date
																			name="#order.orderCreateTime" format="yyyy-MM-dd" /></span></span>
															</div>
														</div>
														<div class="price">
															￥<span class="num"><s:property
																	value="#order.countPrice" /></span>
														</div>
														<div class="status">
															<table>
																<tr>
																	<td valign="middle" height="52"><span> <s:property
																				value="#order.orderStatusDic.dicCn" />
																	</span>&nbsp;</td>
																</tr>
															</table>
														</div>
														<div class="action">
															<s:if test="#order.orderStatusDic.dicCode==0">
																<a
																	href="pay!pay.html?id=<s:property value="#order.id"/>"
																	class="link_btn" name="goToPay" data-classid="144281"
																	target="_blank" data-orderid="2954076">立即支付</a>
															</s:if>
															<a class="showOrderDetail"
																href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html?order.id=<s:property value="#order.id"/>"
																target="_blank">查看详情</a> <br />
															<s:if test="#order.orderStatusDic.dicCode==0">
																<a class="cancelOrder"
																	href="${pageContext.request.contextPath}/mycenter!cancelOrder.html?order.id=<s:property value="#order.id"/>"
																	name="cancelOrder" data-orderid="2954076"> 取消</a>
															</s:if>
														</div>
													</li>

												</s:iterator>

											</ul>
										</div>
									</div>

								</div>
							</div>
						</div>
					<!-- </div> -->

				</div>
			</div>


		</div>




	</div>
 --%>

	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>