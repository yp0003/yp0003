<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>回复消息</title>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>
	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li><a href="#">个人中心</a></li>
			<li><a href="#">消息管理</a></li>
			<li class="active"><a href="#">回复消息</a></li>
		</ol>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="common/mypageCommon.jsp"%>
			</div>
			<div class="col-lg-10">
				<h1 class="page-header">回复消息</h1>
				<div class="panel panel-default">
					<div class="panel-body">
						<form role="form" action="system!login.html" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">收信人</label> <input type="text"
									class="form-control" name="user.userId"
									placeholder="Enter userName" />
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">消息内容</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									name="user.nowPassword" placeholder="Password" />
							</div>
							<button type="submit" class="btn btn-primary">发送</button>
						</form>
					</div>
				</div>

			</div>

		</div>
	</div>


	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>

</body>
</html>