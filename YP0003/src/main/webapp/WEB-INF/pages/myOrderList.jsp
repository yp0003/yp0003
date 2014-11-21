<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Site CSS -->
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="http://static.bootcss.com/www/assets/css/site.min.css?v3"
	rel="stylesheet" />

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed"
	href="http://static.bootcss.com/www/assets/ico/apple-touch-icon-precomposed.png" />
<link rel="shortcut icon"
	href="http://static.bootcss.com/www/assets/ico/favicon.png" />
<script
	src="${pageContext.request.contextPath}/bootstarp/js/jquery.min.js"></script>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstrap.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/jquery.unveil.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/jquery.scrollUp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/toc.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/site.min.js"></script>

<script>
	var _hmt = _hmt || [];
</script>
<title>订单管理</title>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>



	<div class="container-fluid" style="width: 80%; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li><a href="#">个人中心</a></li>
			<li class="active">订单管理</li>
		</ol>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="common/mypageCommon.jsp"%>
			</div>
			<div class="col-lg-10">
				<table class="table table-striped">
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
								<td><s:date name="#ol.orderCreateTime"
										format="yyyy-MM-dd hh:mm:ss" /></td>
								<td><a href="${pageContext.request.contextPath}/order!cancelOrder.html?order.id=${ol.id}">取消订单</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/order!orderDetail.html?order.id=${ol.id}">订单详情</a>&nbsp;&nbsp;<a
									href="#">去结算</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>


				<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
					pageSize="pageInfo.pageSize" count="pageInfo.count" includes="" />
			</div>

		</div>
	</div>


	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>