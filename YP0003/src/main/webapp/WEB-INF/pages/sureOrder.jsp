<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>确认订单</title>
</head>
<body>
	<%@ include file="common/common.jsp"%>
<s:form>
	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<div class="row">
			<div class="col-lg-12">
				<ul class="nav nav-pills" role="tablist">
					<li role="presentation"><a href="#">1.我的购物车</a></li>
					<li role="presentation" class="active"><a href="#">2.确认订单信息</a></li>
					<li role="presentation"><a href="#">3.付款</a></li>
				</ul>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">核对订单信息</h1>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>商品图标</th>
							<th>商品描述</th>
							<th>优惠方式</th>
							<th>购买数量</th>
							<th>总价格</th>
						</tr>

					</thead>
					<tbody>


						<s:iterator value="buyCarList" id="bcl">
							<tr>
								<td><s:property value="#bcl.productName" /> <s:hidden
										name="#bcl.id" cssClass="buyCarId"></s:hidden></td>
								<td><img alt=""
									src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${bcl.productId}"
									width="100" /></td>
								<td><s:property value="#bcl.product.productDesc"></s:property></td>
								<td>无优惠</td>
								<td><s:property value="#bcl.buyCount"></s:property></td>
								<td><span class="cidcolor">￥<span><s:property
												value="#bcl.countPrice"></s:property></span>元
								</span></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>




		<div class="row">

			<div class="col-lg-2">
				<a href=""><< 返回修改购物车</a>
			</div>

			<div class="col-lg-1 col-lg-offset-11">
				<button class="btn  btn-large  btn-danger" type="button"
					onclick="selectBuyCarId()">提交订单</button>
			</div>
		</div>
	</div>
</s:form>
	<%@ include file="common/commonFooter.jsp"%>
	<script type="text/javascript">
		function selectBuyCarId() {
			var url = "${pageContext.request.contextPath}/order!createOrder.html?abc=5";
			$(".buyCarId").each(function() {
				url = url + "&buyCarIds=" + $(this).val();
			});
			document.forms[0].action = url;
			document.forms[0].submit();
		}
	</script>
</body>
</html>