<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- link css -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">


<!-- link script -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>我的订单</title>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>

	<div id="main" class="mt49">
		<div class="banner">&nbsp;</div>
		<div class="mb">
			<ul class="breadcrumb">
				<li><a href="index.html">首页</a> <span class="divider">/</span></li>
				<li><a href="center.html">个人中心</a> <span class="divider">/</span></li>
				<li class="active">订单管理</li>
			</ul>
		</div>
		<div class="container">
			<%@ include file="common/mypageCommon.jsp"%>
			<div class="course-content">
				<div class="course-list">
					<div class="del">
						<button class="btn check-t">全选</button>
						<button class="btn">删除</button>
					</div>
					<table class="table table-bordered table-striped table-hover">
						<thead>
							<tr>
								<th>选择</th>
								<th>课程图标</th>
								<th>课程名称</th>
								<th>价格</th>
								<th>数量</th>
								<th>小计</th>
								<th>订单状态</th>
								<th>订单状态</th>
								<th>订单状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="ids[]"></td>
								<td><img alt=""
									src="${pageContext.request.contextPath}/image/53e4ba4c0001f2d206000338-590-330.jpg"
									width="100" /></td>
								<td>PHP工程师</td>
								<td>200</td>
								<td>1</td>
								<td>200</td>
								<td>未支付</td>
								<td><a href="#">订单详情</a></td>
								<td><a href="#">订单详情</a></td>
								<td><a href="#">订单详情</a></td>
								<td><a href="#">订单详情</a></td>
							</tr>
						</tbody>

					</table>
				</div>
				<div class="pagination pagination-centered">
					<ul>
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>