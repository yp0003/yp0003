<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>365IT学院</title>
</head>
<body>
	<ul class="nav nav-pills nav-stacked" role="tablist">
		<li><a
			href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html">我的课程</a></li>
		<li><a
			href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">订单管理</a></li>
		<li><a href="${pageContext.request.contextPath}/mycenter!forwardMyMessage.html">消息列表<span
				class="red">(1)</span></a></li>
		<li><a
			href="${pageContext.request.contextPath}/mycenter!forwardUpdateInfo.html">我的信息</a></li>
		<li><a href="ord.html">修改密码</a></li>
	</ul>
</body>
</html>