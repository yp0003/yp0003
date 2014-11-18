<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新密码</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/itedu.js"></script>
<link href="${pageContext.request.contextPath}/css/index.css"
	type="text/css" rel="stylesheet" />

</head>
<body>
	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>
	<s:form action="system!updatePassword.html" id="register">
		<ul>
			<li><label for="passWord">当前密码:</label> <s:textfield
					id="passWord" placeHolder="请输入当前密码" name="user.oldPassword" class="rlf-input rlf-input-email"/> <span
				class="redStar">*</span> <s:if
					test="registerMessage.oldPasswordMessage != null">
					<span class="redStar"><s:property
							value="registerMessage.oldPasswordMessage" /></span>
				</s:if></li>
			<li><label for="passWord">新密码:</label> <s:textfield
					id="passWord" placeHolder="英文、数字或字符，6-20位区分大小写"
					name="user.nowPassword" class="rlf-input rlf-input-email"/> <span class="redStar">*</span> <s:if
					test="registerMessage.passwordMessage != null">
					<span class="redStar"><s:property
							value="registerMessage.passwordMessage" /></span>
				</s:if></li>
			<li><label for="passWord">确认新密码:</label> <s:textfield
					id="passWord" type="password" placeHolder="重复新密码"
					name="user.nowPassword" class="rlf-input rlf-input-email"/> <span class="redStar">*</span></li>


			<li>
			<s:hidden name="user.id"></s:hidden>
				<button type="submit" value="">更新密码</button>
				<div class="clear"></div>
			</li>
		</ul>
	</s:form>

	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>