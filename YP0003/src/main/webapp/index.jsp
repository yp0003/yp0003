<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<!-- Le styles -->
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
	$(document).ready(function() {

	});
</script>
</head>
<body class="home-template">

  <a href="${pageContext.request.contextPath}/system!forwardIndex.html">主页</a>
  <br>
	<a href="${pageContext.request.contextPath}/system!forwardLogin.html">登录</a>
	<br>
	<a href="${pageContext.request.contextPath}/system!forwardRegister.html">注册</a>
	<br>
	<a href="${pageContext.request.contextPath}/system!updatePasswordUI.html">修改密码</a>
	<br>
	<a href="${pageContext.request.contextPath}/system!updateInfoUI.html">修改资料</a>
	<br><br>
	<p>OA</p>
	<a href="${pageContext.request.contextPath}/oasystem!forwardOAIndex.html">主页</a>
	<a href="${pageContext.request.contextPath}/employee!forwardLogin.html">登录</a>
	<br>
	<a href="${pageContext.request.contextPath}/employee!forwardRegister.html">注册</a>
	<br>
	<a href="${pageContext.request.contextPath}/employee!updatePasswordUI.html">修改密码</a>
	<br>
	<a href="${pageContext.request.contextPath}/employee!updateInfoUI.html">修改资料</a>
</body>
</html>
