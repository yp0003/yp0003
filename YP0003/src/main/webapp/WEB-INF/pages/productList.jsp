<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>课程列表</title>
<!-- Le styles -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/base.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" />


<!-- link script -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	/* 添加到购物车 */
	function addBuyCar() {
		document.forms[0].action = "order!orderList.html";
		document.forms[0].submit();
	}
	/* 直接结算 */
	function pay() {
		document.forms[0].action = "order!orderList.html";
		document.forms[0].submit();
	}
</script>

</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar">
	<%@ include file="common/common.jsp"%>
	<div id="main" class="mt49">
		<div class="container">
			<div class="course-sidebar">
				<form action="#" method="post">
					<div class="control-group">
						<div class="controls">
							<div class="input-prepend" id="sub">
								<span class="add-on"><i class="icon-search"></i></span> <input
									class="span2" id="inputIcon" type="text">
							</div>
							<span
								style="height: 45px; display: inline-block; margin-bottom: 10px;">
								<button class="btn btn-success" type="submit">搜索</button>
							</span>
						</div>
					</div>

				</form>
				<div class="course-sidebar-type">
					<div class="course-sidebar-menu">
						<ul>
							<li><a class="curr" href="javascript:void(0)">课程库</a></li>
							<li><a href="javascript:void(0)">职位</a></li>
						</ul>
						<div class="dot-curr"></div>
					</div>
					<div class="course-sidebar-tabs">
						<ul class="js-sidebar-lang">
							<li><a data-id="0" class="curr" href="javascript:void(0)">全部</a></li>
							<s:iterator value="productKindList" var="pkl">
								<li><a href="javascript:void(0)">${pkl.productKind}</a></li>
							</s:iterator>
						</ul>
						<div style="clear: both"></div>
					</div>
				</div>

				<!-- <a href="#" class="course-sidebar-program"> 学习计划 </a> -->
			</div>
			<div class="course-content">
				<div class="course-tools">
					<h2>全部课程</h2>
				</div>
				<div class="course-list">
					<div class="js-course-list">
						<ul>
							<s:iterator value="productList" id="pl">
									<li><a href="info.html">
											<div class="course-list-img">
												<img width="280" height="160"
													src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${pl.id}"
													alt=""></img>
											</div>
											<h5>
												<span class="topicon">${pl.productName}</span>
											</h5>
											<div class="intro">
												<p>${pl.projectDesc}</p>
												<span class="l">更新至${pl.updateBadge}-${pl.updateMatter}</span>
												<span class="r">课程时长:${pl.productSale}分</span>
											</div>
											<div class="tips">
												<span class="l">${pl.updateTime}更新</span> <span class="r">${pl.buyCount}人学习</span>
											</div>
									</a>
										<div class="shop">
											<span><a href="${pageContext.request.contextPath}/order!addBuyCar.html?product.id=${pl.id}"><button class="btn " type="button"
														>加入购物车</button></a></span> <span><button
														class="btn" type="button">立即购买</button></span>
										</div></li>
							</s:iterator>
						</ul>

					</div>

				</div>
				<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
					pageSize="pageInfo.pageSize" count="pageInfo.count" includes="" />
			</div>
		</div>
	</div>



	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>
