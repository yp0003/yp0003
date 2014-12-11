<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
<title>登陆</title>
</head>
<body>
	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li class="active">登录</li>
		</ol>
		<div class="row">
			<div class="col-lg-3">
				<form id="login" action="system!login.html" method="post">
					<ul>
						<li><label for="memberID">用户名:</label> <input id="memberID"
							type="text" name="user.userId" /></li>
						<li><label for="passWord">密&nbsp;码:</label> <input
							id="passWord" type="password" name="user.nowPassword" /></li>
						<li><input id="remPass" type="checkbox" /> <label
							id="lblRemPass" for="remPass">记住密码，两周内自动登录</label> <a
							id="forgetPW"
							href="${pageContext.request.contextPath}/system!forwardFindPassword.html">忘记密码</a>
							<div class="clear"></div></li>
						<li>
							<button id="btn_passwd" type="submit" value="">登陆</button>
							<div class="clear"></div>
						</li>
					</ul>
				</form>
			</div>
			<div class="col-lg-3">
				<img id="split_LR"
				src="${pageContext.request.contextPath}/image/login/split_LR.png"
				alt="" />
				<img id="img_right"
					src="${pageContext.request.contextPath}/image/login/img_loginC1.jpg" />
				<span class="lblImgInfo">还没有学习账号？</span> <a class="linkImgAction"
					href="${pageContext.request.contextPath}/system!forwardRegister.html">立即去免费注册
					&gt;&gt;</a>
			</div>

		</div>
	</div>


	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>

</body>
</html>
