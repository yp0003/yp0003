<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Site CSS -->
<!-- <link -->
<!-- 	href="http://cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" /> -->

<!-- <link -->
<!-- 	href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" -->
<!-- 	rel="stylesheet" /> -->
<!-- <link href="http://static.bootcss.com/www/assets/css/site.min.css?v3" -->
<!-- 	rel="stylesheet" /> -->

<link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
<link href="bootstrap/css/docs.css" rel="stylesheet"/>
<link href="css/base.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed"
	href="http://static.bootcss.com/www/assets/ico/apple-touch-icon-precomposed.png" />
<link rel="shortcut icon"
	href="http://static.bootcss.com/www/assets/ico/favicon.png" />


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
	<script
	src="${pageContext.request.contextPath}/bootstarp/js/custom.js"></script>

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
	
		<div class="jumbotron masthead">
		<div class="container">
			<h1>365IT教育学院</h1>
			<h2>365IT教育学院让开发变得更迅速、简单。</h2>
			<p class="masthead-button-links">
				<a class="btn btn-lg btn-primary btn-shadow"
					href="${pageContext.request.contextPath}/product!forwardProductList.html"
					role="button" se_prerender_url="complete">立即选课</a>
			</p>
		</div>
	</div>
	<!-- 程序包含结束 -->






	<!-- login（Modal） -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">登陆</h4>
				</div>
				<div class="modal-body">
					<form role="form" action="system!login.html" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">用户名</label> <input type="text"
								class="form-control" name="user.userId"
								placeholder="Enter userName" />
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">密码</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								name="user.nowPassword" placeholder="Password" />
						</div>
						<button type="submit" class="btn btn-primary">登录</button>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->





	<!-- 注册（Modal） -->
	<div class="modal fade" id="register" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">注册</h4>
				</div>
				<div class="modal-body">
					<form role="form" action="system!register.html" method="post">
						<div class="form-group">
							<label>用户名</label> <input type="text" id="registUserId"
								name="user.userId" class="form-control" placeholder="请输入用户名" />
							<p>请输入用户，2-18位英文、数字或下划线！</p>
						</div>
						<div class="form-group">
							<label>密码</label> <input type="password" id="registNowPassword1"
								name="user.nowPassword" class="form-control" placeholder="请输入密码" />
							<p>请输入6-16位密码，区分大小写，不能使用空格</p>
						</div>
						<div class="form-group">
							<label>确认密码</label> <input type="password"
								id="registNowPassword2" name="user.nowPassword"
								class="form-control" placeholder="请输入密码" />
							<p>请输入6-16位密码，区分大小写，不能使用空格</p>
						</div>

						<div class="form-group">
							<label>邮箱</label> <input type="text" id="registEmail"
								name="user.email" class="form-control" autocomplete="off"
								placeholder="请输入登录邮箱" />
							<p>请输入有效的邮箱！</p>
						</div>
						<div class="form-group">
							<label>验证码</label> <input type="text" id="registValidateCode"
								name="validateCode" class="form-control" /> <img id="vertImg"
								src="${pageContext.request.contextPath}/system!validateCode.html" />
							<a class="chgVertImg" href="javascript:void(0);"
								onclick="reImg()">看不清，换一张</a>
							<p>请输入验证码</p>
						</div>
						<button type="submit" class="btn btn-primary">注册</button>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
</html>