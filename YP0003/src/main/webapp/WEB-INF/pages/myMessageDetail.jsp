<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>课程详情</title>
</head>
<body>
<!-- 头部 -->
	<%@ include file="common/common.jsp"%>
	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li><a href="#">个人中心</a></li>
			<li><a href="#">课程管理</a></li>
			<li class="active"><a href="#">消息详情</a></li>
		</ol>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="common/mypageCommon.jsp"%>
			</div>
			<div class="col-lg-10">
				<h1 class="page-header">消息详情</h1>
				<p>
				<strong>标题:</strong>${message.messTitle}<br>
				<strong>发送人:</strong>${message.sendUser.userName}<br>
				<strong>发送时间:</strong><s:date name="#message.sendTime"
										format="yyyy-MM-dd hh:mm:ss" /><br>
				<strong>内容:</strong>${message.sendContent}<br>
<%-- 				<strong>播放码:</strong>${myProduct.playerCode}<br> --%>
				</p>
			</div>
		</div>
	</div>


	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>

</body>
</html>