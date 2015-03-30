<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap3/bootstrap.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap3/bootstrap-theme.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${pageContext.request.contextPath}/bootstrap3/jquery-1.11.1.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/bootstrap3/bootstrap.js"></script>
<title>订单管理</title>
</head>
<body style="background-color: #EEEEEE">
	<!-- 头部 -->
	<%@ include file="../common/commonHeader.jsp"%>
	<div class="container-fluid" style="width: 80%; padding-top: 40px;">

		<div class="row">
			<%@ include file="../common/mySetCommon.jsp"%>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-body">
						<form
							action="${pageContext.request.contextPath}/mycenter!modifyPassword.html"
							class="form-horizontal">
							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">旧密码：</label>
								<div class="col-md-4">
									<input type="email" class="form-control" id="userName"
										name="user.oldPassword" placeholder="请输入旧密码">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">新密码：</label>
								<div class="col-md-4">
									<input type="email" class="form-control" id="userName"
										name="user.nowPassword" placeholder="请输入新密码">
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">确认新密码：</label>
								<div class="col-md-4">
									<input type="email" class="form-control" id="userName"
										name="user.repassword" placeholder="请确认新密码">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-4 col-md-offset-3">
									<button type="submit" class="btn  btn-md btn-success">保存</button>
								</div>
							</div>
							<form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('#myInfo').removeClass("active");
			$('#changePwd').addClass("active");
		});
	</script>
</body>
</html>