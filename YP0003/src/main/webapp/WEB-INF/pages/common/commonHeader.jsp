
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<div class="nav-collapse collapse">

				<c:if test="${sessionScope.userInfo == null}">
					
						<a class="brand" href="#login" class="hid"
							data-toggle="modal">登录</a>
						<a class="brand" href="${pageContext.request.contextPath}/system!forwardRegister.html" class="hid"
							data-toggle="modal">注册</a>
					
				</c:if>
				<c:if test="${sessionScope.userInfo != null}">
					
						<a class="brand" >尊敬的${sessionScope.userInfo.userId}您好</a>
<!-- 						<a class="brand"  -->
<%-- 							href="${pageContext.request.contextPath}/order!buyCarList.html">购物车</a> --%>
						<a class="brand" href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html">个人信息设置</a>
						<a class="brand" 
							href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">个人中心</a>
					
				</c:if>

				<ul class="nav">
					<li><a class="brand"
					href="./Bootstrap中文网_files/Bootstrap中文网.htm">365IT学院</a></li>
					<li><a href="${pageContext.request.contextPath}/product!forwardProductList.html">课程</a></li>
					<li><a href="javascript:void(0)">问答</a></li>
					<li><a href="http://www.bootcss.com/p/lesscss/">求课</a></li>
				</ul>
					
			</div>
		</div>
	</div>
</div>



<div class="jumbotron masthead">
	<div class="container">
		<h1>365IT学院</h1>
		<p>365IT学院让学习变得更迅速、简单。</p>
		<p class="masthead-button-links">
			<a class="btn btn-lg btn-primary btn-shadow"
					href="${pageContext.request.contextPath}/product!forwardProductList.html"
					role="button" se_prerender_url="complete">立即选课</a>
		</p>
	</div>
</div>


<s:if test="sessionScope.userInfo == null">
<!-- regist -->
<div id="register" class="modal hide fade" tabindex="-1" role="dialog"
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
	</div>
</div>

<div id="login" class="modal hide fade" tabindex="-1" role="dialog"
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
				<div class="l-left-wrap l" id="login_form">
					<form id="login"  action="system!login.html" method="post">
						<div class="rlf-group">
							<label for="exampleInputEmail1">用户名：</label> <input type="text"
								class="form-control" name="user.userId"
								placeholder="用户名或者邮箱" />
<!-- 							<p class="rlf-tip-wrap"></p> -->
						</div>
						<div class="rlf-group">
							<label for="exampleInputPassword1">密码</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								name="user.nowPassword" placeholder="密码" />
						</div>
						<div class="rlf-group rlf-appendix clearfix">
							<input type="checkbox" checked="checked" id="auto-signin" /> <label id="lblRemPass" for="auto-signin">记住密码，两周内自动登录</label>
							<a href="${pageContext.request.contextPath}/system!forwardFindPassword.html" class="rlf-forget r" target="_blank"
								hidefocus="true">忘记密码？ </a>
						</div>
						<div class="rlf-group clearfix">
							<p class="rlf-tip-wrap " id="signin-globle-error"></p>
							<input type="submit" id="btn_login" value="" hidefocus="true"
								class="rlf-btn-green btn-full r">
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</div>
</div>
</s:if>
