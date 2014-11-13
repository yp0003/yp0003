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
	<!-- 程序包含结束 -->
	<div class="content">
		<div class="cidnav">
			<ul>
				<li><span class="orther">3.付款</span></li>
				<li><span>></span></li>
				<li><span class="cidcolor">2.确认订单信息</span></li>
				<li><span>></span></li>
				<li><span class="orther">1.我的购物车</span></li>
			</ul>
		</div>
		<div style="clear:both"></div>
		<div class="line"></div>
		<s:form>
		<div>
			<div class="queren">核对商品信息</div>
			<div class="contable">
				<table class="table table-bordered table-striped table-hover">
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
								<td><s:property value="#bcl.productName" /><s:hidden name="#bcl.id" cssClass="buyCarId"></s:hidden></td>
								<td><img alt=""
									src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${bcl.productId}"
									width="100" /></td>
								<td><s:property value="#bcl.product.productDesc"></s:property></td>
								<td>无优惠</td>
								<td><s:property value="#bcl.buyCount"></s:property></td>
								<td><span class="cidcolor">￥<span><s:property value="#bcl.countPrice"></s:property></span>元
								</span></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
			<div class="queren">给卖家留言</div>
			<div class="ly">
				<textarea rows="7" class="text"></textarea>
			</div>
			<div class="cart_total">
				<div class="cart_left">
					<a href=""><< 返回修改购物车</a>
				</div>
				<div class="cart_right">
					<ul>
						<li style="text-align: right">
							<p>
								3件商品总金额：<b class="cidcolor">￥<span>24.00</span>元
								</b>
							</p>
							<p>
								优惠金额：<b class="cidcolor">￥<span>24.00</span>元
								</b>
							</p>
							<p>
								应付金额：<b class="cidcolor">￥<span>24.00</span>元
								</b>
							</p>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
				<div class="ordersub">
					<button class="btn  btn-large  btn-danger" type="button"
						placeholder="nihao" onclick="selectBuyCarId()">提交订单</button>
				</div>
			</div>
		</div>
		</s:form>
	</div>
	<%@ include file="common/commonFooter.jsp"%>
	<script type="text/javascript">
	
	function selectBuyCarId() {
		var url = "${pageContext.request.contextPath}/order!createOrder.html?abc=5";
		$(".buyCarId").each(function(){
			url = url + "&buyCarIds=" + $(this).val();
		});
		document.forms[0].action = url;
		document.forms[0].submit();
	}
	
	</script>
</body>
</html>