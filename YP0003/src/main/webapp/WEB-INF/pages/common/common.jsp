<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Site CSS -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="bootstrap/css/docs.css" rel="stylesheet" />
<link href="css/base.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed"
	href="http://static.bootcss.com/www/assets/ico/apple-touch-icon-precomposed.png" />
<link rel="shortcut icon"
	href="http://static.bootcss.com/www/assets/ico/favicon.png" />
	<link href="${pageContext.request.contextPath}/css/mycustomer.css" rel="stylesheet" type="text/css" />

<script
	src="${pageContext.request.contextPath}/bootstarp/js/jquery.min.js"></script>


<%-- <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" /> --%>
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
<script src="${pageContext.request.contextPath}/bootstarp/js/custom.js"></script>

<script>
	var _hmt = _hmt || [];
</script>

<script type="text/javascript">
	function reImg() {
		$("#vertImg").attr(
				"src",
				"${pageContext.request.contextPath}/system!validateCode.html?time="
						+ new Date());
	}
</script>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-sm"
					href="./Bootstrap中文网_files/Bootstrap中文网.htm">365IT教育学院中文网</a>
			</div>
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li><a href="javascript:void(0)">课程</a></li>
					<li><a href="javascript:void(0)">问答</a></li>
					<li><a href="http://www.bootcss.com/p/lesscss/">求课</a></li>
				</ul>
				<c:if test="${sessionScope.userInfo == null}">
					<ul class="nav navbar-nav navbar-right hidden-sm">
						<li><a class="brand" href="#login" class="hid"
							data-toggle="modal">登录</a></li>
						<li><a class="brand" href="#register" class="hid"
							data-toggle="modal">注册</a></li>
					</ul>
				</c:if>
				<c:if test="${sessionScope.userInfo != null}">
					<ul class="nav navbar-nav navbar-right hidden-sm">
						<li><a>尊敬的${sessionScope.userInfo.userId}您好</a></li>
						<li><a
							href="${pageContext.request.contextPath}/order!buyCarList.html">购物车</a></li>
						<li><a
							href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">我的订单</a></li>
					</ul>
				</c:if>

			</div>
		</div>
	</div>

<%-- 	<div class="jumbotron masthead">
		<div class="container">
			<h1>365IT教育学院</h1>
			<h2>365IT教育学院让开发变得更迅速、简单。</h2>
			<p class="masthead-button-links">
				<a class="btn btn-lg btn-primary btn-shadow"
					href="${pageContext.request.contextPath}/product!forwardProductList.html"
					role="button" se_prerender_url="complete">立即选课</a>
			</p>
		</div>
	</div> --%>


	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="./image/banner1.gif" alt="First slide" />
			</div>
			<div class="item">
				<img src="./image/banner2.gif" alt="Second slide" />
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- 程序包含结束 -->
</body>
</html>