<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<!-- Styles -->
<link type="text/css"
	href="${pageContext.request.contextPath}/bootcss/custom-theme/jquery-ui-1.9.2.custom.css"
	rel="stylesheet" />

<link type="text/css"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/bootcss/demo.css"
	rel="stylesheet">

<!--scripts-->
<script type="text/javascript" src="${pageContext.request.contextPath}/bootjs/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootjs/jquery-ui-1.9.2.custom.min.js"></script>
<!--init for this page-->
<script type="text/javascript" src="${pageContext.request.contextPath}/bootjs/demo.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<a href="${pageContext.request.contextPath}/system!forwardLogin.html">登录</a>
	<br>
	<a href="${pageContext.request.contextPath}/system!forwardRegister.html">注册</a>
	<a href="${pageContext.request.contextPath}/system!forwardIndex.html">主页</a>
	
</body>
</html>