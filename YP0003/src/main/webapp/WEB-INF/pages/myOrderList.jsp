<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- link css -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">


<!-- link script -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>我的订单</title>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>

	<div id="main" class="mt49">
		<div class="banner">&nbsp;</div>
		<div class="mb">
			<ul class="breadcrumb">
				<li><a href="index.html">首页</a> <span class="divider">/</span></li>
				<li><a href="center.html">个人中心</a> <span class="divider">/</span></li>
				<li class="active">订单管理</li>
			</ul>
		</div>
		<div class="container">
			<%@ include file="common/mypageCommon.jsp"%>
			<div class="course-content">
			
				<div class="course-list">
					<table class="table table-bordered table-striped table-hover">
						<thead>
							<tr>
								<th>订单号</th>
								<th>订单物品</th>
								<th>价格</th>
								<th>订单状态</th>
								<th>订单创建时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="orderList" id="ol">
								<tr>
									<td>${ol.orderId}</td>
									<td><s:iterator value="#ol.orderDetailList" id="odl">
									${odl.product.productName}</br>
										</s:iterator></td>
									<td>${ol.countPrice}</td>
									<td>${ol.orderStatusDic.dicCn}</td>
									<td><s:date name="#ol.orderCreateTime" format="yyyy-MM-dd hh:mm:ss"/>  </td>
									<td><a href="#">取消订单</a>&nbsp;&nbsp;<a href="#">订单详情</a>&nbsp;&nbsp;<a href="#">去结算</a></td>
								</tr>
							</s:iterator>
						</tbody>

					</table>
				</div>

				<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
					pageSize="pageInfo.pageSize" count="pageInfo.count" includes="" />
			</div>
		</div>
	</div>


	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>