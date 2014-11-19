<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>365IT学院</title>
</head>
<body>
	<div class="course-sidebar">
		<div class="course-sidebar-type lf-center">
			<a href="center.html">我的课程</a>
		</div>
		<div class="course-sidebar-type lf-center  lf-default">
			<a href="${pageContext.request.contextPath}/mycenter!forwardMyOrder.html">订单管理</a>
		</div>
		<div class="course-sidebar-type lf-center">
			<a href="xxlist.html">消息列表<span class="red">(1)</span></a>
		</div>
		<div class="course-sidebar-type lf-center">
			<a href="${pageContext.request.contextPath}/mycenter!forwardUpdateInfo.html">我的信息</a>
		</div>
		<div class="course-sidebar-type lf-center">
			<a href="ord.html">修改密码</a>
		</div>
	</div>
</body>
</html>