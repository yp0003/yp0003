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

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" />
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstrap.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js" />
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
</head>

<body>
	<%-- 	<%@ include file="common/common.jsp"%>
	<div id="main" class="mt49">
		<div class="container">
			<div class="course-sidebar">
				<form action="#" method="post">
					<div class="control-group">
						<div class="controls">
							<div class="input-prepend" id="sub">
								<span class="add-on"><i class="icon-search"></i></span> <input
									class="span2" id="inputIcon" type="text" name="product.productName"/>
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
								<li><a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=${pl.id}">
										<div class="course-list-img">
											<img width="280" height="160"
												src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${pl.id}"
												alt=""></img>
										</div>
										<h5>
											<span class="topicon">${pl.productName}</span>
										</h5>
										<div class="intro">
											<p>${pl.productDesc}</p>
											<span class="l">更新至${pl.updateBadge}-${pl.updateMatter}</span>
											<span class="r">课程时长:${pl.productSale}分</span>
										</div>
										<div class="tips">
											<span class="l"><s:date name="#pl.updateTime" format="yyyy-MM-dd hh:mm:ss"/>更新</span> <span class="r">${pl.buyCount}人学习</span>
										</div>
								</a>
									<div class="shop">
										<span><a
											href="${pageContext.request.contextPath}/order!addBuyCar.html?product.id=${pl.id}"><button
													class="btn " type="button">加入购物车</button></a></span> <span><a
											href="${pageContext.request.contextPath}/order!payProductOnlyOne.html?product.id=${pl.id}"><button
													class="btn" type="button">立即购买</button></a></span>
									</div></li>
							</s:iterator>
						</ul>

					</div>

				</div>
				<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
					pageSize="pageInfo.pageSize" count="pageInfo.count" includes="product.productName" />
			</div>
		</div>
	</div>
	<%@ include file="common/commonFooter.jsp"%> --%>

	<%@ include file="common/common.jsp"%>
	<div class="container-fluid" style="width: 1300px">
		<div class="row">
			<div class="col-lg-4">
				<form action="product!forwardProductList.html" method="post">
					<h3>课程搜索</h3>
					<div class="input-group">

						<input type="text" class="form-control" name="product.productName">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit">搜索课程</button>
						</span> </input>

					</div>
				</form>
				<h3>课程标签</h3>
				<ul class="nav nav-pills nav-stacked" role="tablist">
					<li class="nav-header">课程</li>
<!-- 					<li class="active"><a href="#">MVC框架</a></li> -->
<!-- 					<li><a href="#">数据库</a></li> -->
<!-- 					<li><a href="#">DAO框架</a></li> -->
					<s:iterator value="productKindList" id="kind">
						<s:if test="#kind.selected==true">
							<li class="active">
								<a href="${pageContext.request.contextPath}/product!forwardProductList.html?pkind.id=${kind.id}">
									${kind.productKind}
								</a>
							</li>
						</s:if>
						<s:else>
							<li>
								<a href="${pageContext.request.contextPath}/product!forwardProductList.html?pkind.id=${kind.id}">
									${kind.productKind}
								</a>
								</li>
						</s:else>
					</s:iterator>
					<li class="nav-header">功能列表</li>
					<li><a href="#">资料</a></li>
					<li><a href="#">设置</a></li>
					<li class="divider"></li>
					<li><a href="#">帮助</a></li>
				</ul>


			</div>
			<div class="col-lg-8">
				</br>
				<div class="row">
					<s:iterator value="productList" id="pl">
						<div class="col-lg-4">
							<div class="thumbnail">
								<a
									href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=${pl.id}"
									title="${pl.productName}">
									<img class="lazy" width="300" height="150"
									src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${pl.id}"									
									data-src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${pl.id}"
									alt=""/>
								</a>
								<div class="caption">
									<h3>
										<a
											href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=${pl.id}"
											title="${pl.productName}">${pl.productName}</a>
									</h3>
									<p>${pl.productDesc}</p>
									<p>￥${pl.productPrice}元</p>
									<p>
										<a
											href="${pageContext.request.contextPath}/order!addBuyCar.html?product.id=${pl.id}"><button
												type="button" class="btn btn-danger" style="float: left;">加入购物车</button>
										</a> &nbsp; <a
											href="${pageContext.request.contextPath}/order!payProductOnlyOne.html?product.id=${pl.id}"><button
												type="button" class="btn btn-danger" style="float: right;">直接结算</button></a>
									</p>
								</div>
							</div>
						</div>
					</s:iterator>
				</div>
				<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
					pageSize="pageInfo.pageSize" count="pageInfo.count"
					includes="product.productName" />
			</div>
		</div>
	</div>






	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>
