<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/bootstrap/js/google-code-prettify/prettify.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/login_regist.css" rel="stylesheet" />
<link
	href="http://cdn.bootcss.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="http://static.bootcss.com/www/assets/css/site.min.css"
	rel="stylesheet" />

<!-- link script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Navbar
    ================================================== -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<div class="nav-collapse collapse">

					<a class="brand" href="#regist" class="hid" data-toggle="modal">注册</a>

					<a class="brand" href="#myModal" class="hid" data-toggle="modal">登录</a>

					<!--<a class="brand" href="./index.html">我的订单</a> <a class="brand"
						href="./index.html">购物车</a> <a class="brand" href="./index.html">个人中心</a>-->
					<ul class="nav">
						<li class="active"><a href="./index.html">课程</a></li>
						<li class=""><a href="#">问答</a></li>
						<li class=""><a href="#">求课</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 程序包含结束 -->

	<div id="regist" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div id="signup" class="rl-modal  in" aria-hidden="false">
			<div class="rl-modal-header">
				<button type="button" class="rl-close" data-dismiss="modal"
					aria-hidden="true"></button>
				<h1>
					<span class="active-title hid" href="#regist" data-toggle="modal">注册</span>
				</h1>
			</div>
			<div class="rl-modal-body">
				<form id="signup-form">
					<div class="rlf-group">
						<input type="text" name="email" data-validate="email"
							class="rlf-input rlf-input-email" autocomplete="off"
							placeholder="请输入登录邮箱">
							<p class="rlf-tip-wrap">请输入有效的邮箱！</p>
					</div>
					<div class="rlf-group">
						<input type="password" name="password" data-validate="password"
							class="rlf-input rlf-input-pwd" placeholder="请输入密码">
							<p class="rlf-tip-wrap">请输入6-16位密码，区分大小写，不能使用空格</p>
					</div>
					<div class="rlf-group">
						<input type="text" name="nick" data-validate="nick"
							class="rlf-input rlf-input-nick" placeholder="请输入用户昵称">
							<p class="rlf-tip-wrap">请输入昵称，2-18位中英文、数字或下划线！</p>
					</div>
					<div class="rlf-group clearfix">
						<p class="rlf-tip-wrap" id="signup-globle-error"></p>
						<input type="button" id="signup-btn" value="注册" hidefocus="true"
							class="rlf-btn-green btn-full r">
					</div>
				</form>
			</div>
			<!-- login -->
			<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div id="signin" class="rl-modal in" aria-hidden="false">
					<div class="rl-modal-header">
						<h1>
							<span class="active-title hid" href="#myModal"
								data-toggle="modal">登录</span>
						</h1>
						<button type="button" class="rl-close" data-dismiss="modal"
							hidefocus="true" aria-hidden="true"></button>
					</div>
					<div class="rl-modal-body">
						<div class="clearfix">
							<div class="l-left-wrap l">
								<form id="signup-form">
									<div class="rlf-group">
										<input type="text" name="email" data-validate="email"
											autocomplete="off" class="rlf-input rlf-input-email"
											placeholder="请输入登录邮箱">
											<p class="rlf-tip-wrap"></p>
									</div>
									<div class="rlf-group">
										<input type="password" name="password" autocomplete="off"
											class="rlf-input rlf-input-pwd" placeholder="请输入密码">
											<p class="rlf-tip-wrap"></p>
									</div>
									<div class="rlf-group rlf-appendix clearfix">
										<label for="auto-signin" class="l" hidefocus="true"> <input
											type="checkbox" checked="checked" id="auto-signin">
												自动登录 </label> <a href="/user/newforgot" class="rlf-forget r"
											target="_blank" hidefocus="true">忘记密码？ </a>
									</div>
									<div class="rlf-group clearfix">
										<p class="rlf-tip-wrap " id="signin-globle-error"></p>
										<input type="button" id="signin-btn" value="登录"
											hidefocus="true" class="rlf-btn-green btn-full r">
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="rl-model-footer">
						<div class="pop-login-sns">
							<a href="javascript:void(0)" hidefocus="true"
								data-login-sns="/user/loginqq" class="pop-sns-qq"> <i></i>
								QQ 帐号直接登录
							</a> <a href="javascript:void(0)" hidefocus="true"
								data-login-sns="/user/loginweibo" class="pop-sns-weibo"> <i></i>
								新浪微博帐号登录
							</a>
						</div>
					</div>
				</div>
			</div>
</body>
</html>