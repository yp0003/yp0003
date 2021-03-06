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
	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<div class="row">
			<div class="col-lg-12">
				<ul class="nav nav-pills" role="tablist">
					<li role="presentation" class="active"><a href="#">1.我的购物车</a></li>
					<li role="presentation"><a href="#">2.确认订单信息</a></li>
					<li role="presentation"><a href="#">3.付款</a></li>
				</ul>
			</div>
		</div>
		<s:form action="/order!forwardSureOrder.html">
			<div class="row">
				<div class="col-lg-12">
					<%--订单确认表单--%>

					<div style='margin-bottom: 50px;'>
					<h1 class="page-header">购物车列表</h1>
						<table class="table table-striped">
							<thead>
								<tr>
									<th><input type="checkbox" id="selectAll" class="check-g"
										checked="true" /></th>
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


										<td class="num"><span class="jian" pic="${bcl.price}">-&nbsp;</span>
											<s:hidden id="flagHidden" name="#bcl.id"></s:hidden><label
											class="num-z"> <s:property value="#bcl.buyCount"></s:property></label><span
											class="jia" pic="${bcl.price}">&nbsp;+</span></td>
										<td class="pic-01"><span class="red-1">￥</span><span
											class="pic red-1"><s:property value="#bcl.countPrice"></s:property></span><span
											class="red-1">元</span></td>
										<td><a
											href="${pageContext.request.contextPath}/order!deleteBuyCarById.html?buyCar.id=${bcl.id}">删除</a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>

				</div>





			</div>


			<div class="row">

				<div class="col-lg-12">
					<a href="${pageContext.request.contextPath}/order!emptyBuyCar.html">清除购物车
					</a>
				</div>




				<div class="col-lg-12">

					<div class="fn-right">
						共计<span class="red-1"> 0 </span>件商品合计（不含运费）<label class="red-1">￥<span>20</span></label>&nbsp;&nbsp;&nbsp;
						<button class="btn" type="submit">结算</button>
						<a
							href="${pageContext.request.contextPath}/product!forwardProductList.html">继续购物>></a>
					</div>

				</div>

			</div>
		</s:form>
	</div>










	<%-- 
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

	</div> --%>
	<%@ include file="common/commonFooter.jsp"%>
	<script type="text/javascript">
		/**
		 * 购物车商品加减
		 * **/
		$('.jian')
				.click(
						function() {
							var num = $(this).nextAll('.num-z').text();
							var pic = $(this).attr('pic');
							var tempObj = $(this);
							if (num == 1) {
								alert('请至少选择一项');
							} else {
								$
										.ajax({
											type : "POST",
											url : "${pageContext.request.contextPath}/order!subOneInBuyCar.html?buyCar.id="
													+ $(this).next(
															"#flagHidden")
															.val(),
											success : function(data) {
												tempObj.parent()
														.next('.pic-01').find(
																'.pic').text(
																data * pic);
												tempObj.nextAll('.num-z').text(
														data);

											}
										});
							}
						});

		$('.jia')
				.click(
						function() {
							//var num = $(this).parent().find('.num-z').text();
							var pic = $(this).attr('pic');
							var tempObj = $(this);
							$
									.ajax({
										type : "POST",
										url : "${pageContext.request.contextPath}/order!addOneInBuyCar.html?buyCar.id="
												+ $(this)
														.prevAll("#flagHidden")
														.val(),
										success : function(data) {
											tempObj.parent().next('.pic-01')
													.find('.pic')
													.text(parseInt(data * pic));
											tempObj.parent().find('.num-z')
													.text(data);
										}
									});
						});

		$('#selectAll').click(function() {
			if ($(this).attr("checked") == "true") {
				alert($(this).attr("checked", "flase"));
				$(this)
			}
		});

		function submitForm() {
			document.forms[0].action = "product!productList.html";
			document.forms[0].submit();
		}
	</script>
</body>

</html>