<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
</head>
<body>
	<%@ include file="common/common.jsp"%>
	<div id="main" class="mt49">
		<div class="container1200" id="course_intro">
			<div class="cidnav">
				<ul>
					<li><span class="orther">3.付款</span></li>
					<li><span>></span></li>
					<li><span class="orther">2.确认订单信息</span></li>
					<li><span>></span></li>
					<li><span class="cidcolor">1.我的购物车</span></li>
				</ul>
			</div>

			<%--结算表单--%>
			<s:form>
				<div class="title">我的购物车</div>
				<div style='margin-bottom: 50px;'>
					<table class="table table-bordered table-striped table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" name="" class="check-g" /></th>
								<th>商品</th>
								<th>商品信息</th>
								<th>单价</th>
								<th>数量</th>
								<th>小计</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="buyCarList" id="bcl">
								<tr>
									<td><input type="checkbox" name="buyCarIds"
										value="<s:property value="#bcl.id"/>" /></td>
									<td><img alt=""
										src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${bcl.productId}"
										width="100" /></td>
									<td><s:property value="#bcl.productName"></s:property></td>
									<td><s:property value="#bcl.price"></s:property></td>
									<td class="num"><a href="${pageContext.request.contextPath}/order!subductionOneInBuyCar.html?buyCar.id=${bcl.id}"><span class="jian" pic="200">&nbsp;</span></a><label
										class="num-z"> <s:property value="#bcl.buyCount"></s:property>
									</label><a href="${pageContext.request.contextPath}/order!addOneInBuyCar.html?buyCar.id=${bcl.id}"><span class="jia" pic="200">&nbsp;</span></a></td>
									<td class="pic">200</td>
									<td><a href="${pageContext.request.contextPath}/order!deleteBuyCarById.html?buyCar.id=${bcl.id}">删除</a></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
				<div class="statistics fn-clear">
					<div class="fn-left qx">
						<input type="checkbox" name="" class="check-g" /> 全选
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/order!emptyBuyCar.html">清除购物车 </a>
					</div>
					<div class="fn-right">
						共计<span class="red-1"> 0 </span>件商品合计（不含运费）<label class="red-1">￥<span>20</span></label>&nbsp;&nbsp;&nbsp;
						<a href="order.html"><button class="btn">结算</button></a> <a
							href="${pageContext.request.contextPath}/product!productList.html"><button class="btn">继续购物</button></a>
					</div>
				</div>
			</s:form>
			<div class="tab">
				<div class="title">
					<ul class="fn-clear tab-ul">
						<li class="def tab-s" n="1">今日特价</li>
						<li class="tab-s" n="2">我的关注</li>
						<li class="tab-s" n="3">猜你喜欢</li>
						<li class="tab-s" n="4">最近浏览</li>
					</ul>
				</div>
				<div class="tj_1 sp fn-clear">
					<dl>
						<dt>
							<img
								src="${pageContext.request.contextPath}/image/53ec5a590001d85606000338-590-330.jpg" />
						</dt>
						<dd>java 眼中的 XML</dd>
						<dd>
							价格：<span class="red-1">￥20</span>
						</dd>
					</dl>
				</div>
				<div class="tj_2 sp fn-clear">
					<dl>
						<dt>
							<img
								src="${pageContext.request.contextPath}/image/54125edc0001ce6306000338-590-330.jpg" />
						</dt>
						<dd>java 眼中的 XML</dd>
						<dd>
							价格：<span class="red-1">￥20</span>
						</dd>
					</dl>
				</div>
				<div class="tj_3 sp fn-clear">
					<dl>
						<dt>
							<img
								src="${pageContext.request.contextPath}/image/542376b20001374c06000338-590-330.jpg" />
						</dt>
						<dd>java 眼中的 XML</dd>
						<dd>
							价格：<span class="red-1">￥20</span>
						</dd>
					</dl>
				</div>
				<div class="tj_4 sp fn-clear">
					<dl>
						<dt>
							<img
								src="${pageContext.request.contextPath}/image/541943720001c89206000338-590-330.jpg" />
						</dt>
						<dd>java 眼中的 XML</dd>
						<dd>
							价格：<span class="red-1">￥20</span>
						</dd>
					</dl>
				</div>
			</div>

		</div>

	</div>
</body>

</html>