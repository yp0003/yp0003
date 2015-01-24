
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<div class="nav-collapse collapse">

				<c:if test="${sessionScope.userInfo == null}">

					<a class="brand"
						href="${pageContext.request.contextPath}/system!forwardLogin.html"
						class="hid" data-toggle="modal">登录</a>
					<a class="brand"
						href="${pageContext.request.contextPath}/system!forwardRegister.html"
						class="hid" data-toggle="modal">注册</a>

				</c:if>
				<c:if test="${sessionScope.userInfo != null}">

					<a class="brand">尊敬的${sessionScope.userInfo.userId}您好</a>
					<!-- 						<a class="brand"  -->
					<%-- 							href="${pageContext.request.contextPath}/order!buyCarList.html">购物车</a> --%>
					<a class="brand"
						href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html">个人信息设置</a>
					<a class="brand"
						href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">个人中心</a>

				</c:if>

				<ul class="nav">
					<li><a class="brand" href="${pageContext.request.contextPath}">365IT学院</a></li>
					<li><a
						href="${pageContext.request.contextPath}/product!forwardProductList.html">课程</a></li>
					<li><a href="javascript:void(0)">问答</a></li>
					<li><a href="http://www.bootcss.com/p/lesscss/">求课</a></li>
				</ul>

			</div>
		</div>
	</div>
</div>



<%-- <div class="jumbotron masthead">
	<div class="container">
		<h1>365IT学院</h1>
		<p>365IT学院让学习变得更迅速、简单。</p>
		<p class="masthead-button-links">
			<a class="btn btn-lg btn-primary btn-shadow"
					href="${pageContext.request.contextPath}/product!forwardProductList.html"
					role="button" se_prerender_url="complete">立即选课</a>
		</p>
	</div>
</div>  --%>
<img src="./image/banner1.gif" style="min-width: 100%;height: 400px;padding-top: 49px;"/>
