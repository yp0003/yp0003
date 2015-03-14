<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/itedu.js"></script>
<link href="${pageContext.request.contextPath}/css/index.css"
	type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript">
	$(document).ready(function() {

	});
	function reImg() {
		$("#vertImg").attr(
				"src",
				"${pageContext.request.contextPath}/oalogin!validateCode.html?time="
						+ new Date());
	}
</script>
<body id="admin">
	<div id="wrap_form">
		<div id="admin_login_form">
			<div id="logo">
				<img id="logoImg"
					src="${pageContext.request.contextPath}/images/img_logo2.png"
					alt="" /> <img id="oaImg"
					src="${pageContext.request.contextPath}/images/img_oaTXT.png" />
				<div class="clear"></div>
			</div>
			<img src="${pageContext.request.contextPath}/images/hr_admin.png"
				alt="" />

			<!-- 表单 -->
			<!--   <form id="login"> -->
			<s:form id="login" action="oalogin!validateLoginInfo.html">
				<table>

					<tr>
						<td><label for="memberID">会员ID:</label></td>
						<td><input id="memberID" type="text"
							name="oaEmployee.employeeId" /></td>
					</tr>




					<tr>
						<td><label for="passWord">密码:</label></td>
						<td><input id="passWord" type="password"
							name="oaEmployee.nowPassword" /></td>
					</tr>




					<tr>
						<td><label for="vertCode">验证码:</label></td>
						<td><input id="vertCode" type="text" name="validateCode" /><img
							id="vertImg"
							src="${pageContext.request.contextPath}/oalogin!validateCode.html" />
							<a class="chgVertImg" href="javascript:void(0);"
							onclick="reImg()">看不清，换一张</a></td>
					</tr>
				</table>





				<button id="btn_login" type="submit" value=""></button>
				<br />
				<br />
				<br />
				<br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="oalogin!forwardRegister.html">注册</a>
				<a href="oalogin!toFindPassword.html">忘记密码</a>
























			</s:form>

		</div>
	</div>

</body>
</html>