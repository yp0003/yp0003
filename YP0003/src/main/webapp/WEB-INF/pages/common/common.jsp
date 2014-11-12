<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!-- link css -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet"/>


<!-- link script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
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
	<!-- Navbar
    ================================================== -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<div class="nav-collapse collapse">
				<c:if test="${sessionScope.userInfo == null}">
					<a class="brand" href="#regist" class="hid" data-toggle="modal">注册</a>

					<a class="brand" href="#myModal" class="hid" data-toggle="modal">登录</a>
                </c:if>
				<c:if test="${sessionScope.userInfo != null}">
				
					<a class="brand" href="./index.html">我的订单</a> <a class="brand"
						href="${pageContext.request.contextPath}/order!buyCarList.html">购物车</a> <a class="brand" href="./index.html">个人中心</a>
						<a class="brand" href="#">尊敬的${sessionScope.userInfo.userId}您好</a>
				</c:if>
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
	<!-- login -->
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div id="signin" class="rl-modal in" aria-hidden="false">
			<div class="rl-modal-header">
				<h1>
					<span class="active-title hid" href="#myModal" data-toggle="modal">登录</span>
				</h1>
				<button type="button" class="rl-close" data-dismiss="modal"
					hidefocus="true" aria-hidden="true"></button>
			</div>
			<div class="rl-modal-body">
				<div class="clearfix">
					<div class="l-left-wrap l">
						<form id="signup-form" action="system!login.html" method="post">
							<div class="rlf-group">
								<input type="text" name="user.userId"
									autocomplete="off" class="rlf-input rlf-input-email"
									placeholder="请输入用户名" />
								<p class="rlf-tip-wrap"></p>
							</div>
							<div class="rlf-group">
								<input type="password" name="user.nowPassword" autocomplete="off"
									class="rlf-input rlf-input-pwd" placeholder="请输入密码" />
								<p class="rlf-tip-wrap" />
							</div>
							<div class="rlf-group rlf-appendix clearfix">
								<label for="auto-signin" class="l" hidefocus="true" /> <input
									type="checkbox" checked="checked" id="auto-signin" /> 自动登录 </label> <a
									href="/user/newforgot" class="rlf-forget r" target="_blank"
									hidefocus="true">忘记密码？ </a>
							</div>
							<div class="rlf-group clearfix">
								<p class="rlf-tip-wrap " id="signin-globle-error"></p>
								<input type="submit" id="signin-btn" value="登录" hidefocus="true"
									class="rlf-btn-green btn-full r" />
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="rl-model-footer">
				<div class="pop-login-sns">
					<a href="javascript:void(0)" hidefocus="true"
						data-login-sns="/user/loginqq" class="pop-sns-qq"> <i></i> QQ
						帐号直接登录
					</a> <a href="javascript:void(0)" hidefocus="true"
						data-login-sns="/user/loginweibo" class="pop-sns-weibo"> <i></i>
						新浪微博帐号登录
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- regist -->
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
				<s:form id="signup-form" action="system!register.html">
					<div class="rlf-group">
						<input type="text" id="registUserId" name="user.userId"
							class="rlf-input rlf-input-nick" placeholder="请输入用户名" />
						<p class="rlf-tip-wrap">请输入用户，2-18位英文、数字或下划线！</p>
					</div>
					<div class="rlf-group">
						<input type="password" id="registNowPassword1"
							name="user.nowPassword" class="rlf-input rlf-input-pwd"
							placeholder="请输入密码" />
						<p class="rlf-tip-wrap">请输入6-16位密码，区分大小写，不能使用空格</p>
					</div>
					<div class="rlf-group">
						<input type="password" id="registNowPassword2"
							name="user.nowPassword" class="rlf-input rlf-input-pwd"
							placeholder="请输入密码" />
						<p class="rlf-tip-wrap">请输入6-16位密码，区分大小写，不能使用空格</p>
					</div>
					<div class="rlf-group">
						<input type="text" id="registEmail" name="user.email"
							class="rlf-input rlf-input-email" autocomplete="off"
							placeholder="请输入登录邮箱" />
						<p class="rlf-tip-wrap">请输入有效的邮箱！</p>
					</div>
					<div class="rlf-group">
						<input type="text" id="registValidateCode"
							name="validateCode" class="rlf-input rlf-input-nick" /> <img
							id="vertImg"
							src="${pageContext.request.contextPath}/system!validateCode.html" />
						<a class="chgVertImg" href="javascript:void(0);" onclick="reImg()">看不清，换一张</a>
						<p class="rlf-tip-wrap">请输入验证码</p>
					</div>
					<div class="rlf-group clearfix">
						<input type="submit" id="signup-btn" value="注册" hidefocus="true"
							class="rlf-btn-green btn-full r" style="float: left;"/>
					</div>
				</s:form>
			</div>
		</div>
	</div>
	
</body>
</html>