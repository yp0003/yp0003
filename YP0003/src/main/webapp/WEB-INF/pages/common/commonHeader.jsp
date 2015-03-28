<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.bootcss.com">365IT学院</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav navbar-right hidden-sm">
				<c:if test="${sessionScope.userInfo == null}">
					<li><a class="brand"
						href="${pageContext.request.contextPath}/system!forwardLogin.html"
						class="hid" data-toggle="modal">登录</a></li>
					<li><a class="brand"
						href="${pageContext.request.contextPath}/system!forwardRegister.html"
						class="hid" data-toggle="modal">注册</a></li>

				</c:if>



				<c:if test="${sessionScope.userInfo != null}">

					<li><a class="brand">尊敬的${sessionScope.userInfo.userId}您好</a></li>
					<li><a class="brand"
						href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html">个人信息设置</a></li>
					<li><a class="brand"
						href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">个人中心</a></li>
				</c:if>


			</ul>
		</div>
	</div>
</div>
<img src="./image/banner1.gif"
	style="min-width: 100%; height: 400px; padding-top: 49px;" />
