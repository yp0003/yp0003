<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" />
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link
	href="http://cdn.bootcss.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="http://static.bootcss.com/www/assets/css/site.min.css"
	rel="stylesheet" />
</head>
<body class="home-template">
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">365IT学院</a>
		</div>

		<ul class="nav navbar-nav">
			<li><a href="#">365IT学院</a></li>
		</ul>

		<s:if test="${sessionScope.userInfo} == null">
			<form action="" class="navbar-form navbar-right">
				<div class="form-group">
					<input type="text" class="form-control" name="user.userName" /> <input
						type="password" class="form-control" name="user.nowPassword" />
					<button type="submit" class="btn btn-default">登录</button>
				</div>
			</form>
			<ul class="nav navbar-nav">
				<li><a href="#">免费注册</a></li>
			</ul>

		</s:if>

		<s:if test="${sessionScope.userInfo} != null">
			<ul class="nav navbar-nav">
				<li><a href="#">尊敬的客户欢迎您</a></li>
				<li><a href="#">个人中心</a></li>
				<li><a href="#">购物车</a></li>
				<li><a href="#">安全退出</a></li>
			</ul>
		</s:if>
	</div>
</body>
</html>