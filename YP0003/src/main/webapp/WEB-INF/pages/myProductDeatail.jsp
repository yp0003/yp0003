<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>课程详情</title>
</head>
<body>
<!-- 头部 -->
	<%@ include file="common/common.jsp"%>
	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li><a href="#">个人中心</a></li>
			<li><a href="#">订单管理</a></li>
			<li class="active"><a href="#">订单详情</a></li>
		</ol>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="common/mypageCommon.jsp"%>
			</div>
			<div class="col-lg-10">
				<h1 class="page-header">课程详情</h1>
				<p>
				<strong>订单号:</strong>${order.orderId}<br>
				<strong>订单创建时间:</strong><s:date name="order.orderCreateTime"
										format="yyyy-MM-dd hh:mm:ss" /><br>
				<strong>订单状态:</strong>${order.orderStatusDic.dicCn}<br>
				<strong>订单支付时间:</strong>${order.orderId}<br>
				<strong>订单支付方式:</strong>${order.orderStatusDic.dicCn}<br>
				<strong>订单总价:</strong>${order.countPrice}<br>
				</p>
				
				<h1 class="page-header">订单商品详细列表</h1>
				<table class="table table-striped">
					<th>商品</th>
					<th>商品信息</th>
					<th>商品描述</th>
					<th>单价</th>
					<tbody>
						<s:iterator value="order.orderDetailList" id="odl">
							<tr>
								<td><img alt=""
									src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${odl.productId}"
									width="100" /></td>
								<td><s:property value="#odl.product.productName"></s:property></td>
								<td><s:property value="#odl.product.productDesc"></s:property></td>
								<td><s:property value="#odl.price"></s:property></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>

		</div>
	</div>


	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>

</body>
</html>