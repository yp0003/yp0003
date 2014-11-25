<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>提交机器码</title>
</head>
<body>
<!-- 头部 -->
	<%@ include file="common/common.jsp"%>
	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li><a href="#">个人中心</a></li>
			<li><a href="#">课程管理</a></li>
			<li class="active"><a href="#">提交机器码</a></li>
		</ol>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="common/mypageCommon.jsp"%>
			</div>
			<div class="col-lg-10">
				<form role="form" action="system!login.html" method="post">
				<h3>${myProduct}</h3>
						<div class="form-group">
							<label for="exampleInputPassword1">密码</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								name="user.nowPassword" placeholder="Password" />
						</div>
						<button type="submit" class="btn btn-primary">登录</button>
					</form>
			</div>
		</div>
	</div>
	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>


</body>
</html>