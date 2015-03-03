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

	<div class="container-fluid" style="width: 80%; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li><a href="#">个人中心</a></li>
			<li class="active">订单管理</li>
		</ol>
		</div>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="common/mypageCommon.jsp"%>
			</div>


			<div class="col-lg-10">
				<form role="form" action="system!modifyPassword.html" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">旧密码</label> <input type="text"
							class="form-control" name="user.oldPassword"
							placeholder="Enter userName" />
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">新密码</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							name="user.nowPassword" placeholder="Password" />
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">确认新密码</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							name="user.nowPassword" placeholder="Password" />
					</div>
					<button type="submit" class="btn btn-primary">确认修改</button>
				</form>
			</div>
		</div>
		<!-- 底部 -->
		<%@ include file="common/commonFooter.jsp"%>
</body>
</html>