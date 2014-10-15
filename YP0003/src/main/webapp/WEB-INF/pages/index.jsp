<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<!-- Styles -->
<script src="//code.jquery.com/jquery-latest.min.js"></script>
<script src="//unslider.com/unslider.js"></script>

<style type="text/css">
div.top_loop {
	height: 500px
}

div.top_nva {
	height: 50px
}

div#left_div {
	background-color: yellow;
	width: 20%;
	float: left;
	margin: 10px 0px 0px 10px;
}

div#center_div {
	background-color: blue;
	width: 40%;
	float: left;
	margin: 10px 0px 0px 10px;
}

div#right_div {
	background-color: red;
	width: 20%;
	float: left;
	margin: 10px 0px 0px 10px;
}

.banner {
	position: relative;
	overflow: auto;
}

.banner li {
	list-style: none;
}

.banner ul li {
	height: 415px;
	float: left;
	background-size:100% 100%;
}
</style>
<script type="text/javascript">
	$(function() {
		$('.banner').unslider();
	});
</script>
</head>
<body>
	<%@include file="common/common.jsp"%>



	<div id="main_centers">
		<div class="top_nva">
			<div id="header_nav">
				<a class="nav_item selected" href="#">首页</a> <a class="nav_item "
					href="#">精品课程</a> <a class="nav_item " href="#">名师简介</a> <a
					class="nav_item " href="#">版权专利</a> <a class="nav_item " href="#">加入我们</a>
				<a class="nav_item " href="#">联系我们</a>
			</div>
		</div>
		<div class="top_loop">
			<div class="banner"
				style="width: 1474px; height: 500px; overflow: hidden;">
				<ul>
					<li
						style="background-image: url('${pageContext.request.contextPath}/loopImage/lop1.jpg');">1111111111</li>
					<li
						style="background-image: url('${pageContext.request.contextPath}/loopImage/lop2.jpg');">22222222222</li>
					<li
						style="background-image: url('${pageContext.request.contextPath}/loopImage/lop3.jpg');">33333333333</li>
				</ul>
			</div>
		</div>
		<!-- 下层内容 -->
		<div class="clear">

			<div id="left_div">
				<div>左侧菜单</div>
			</div>
			<div id="center_div">
				<div>表格</div>
			</div>
			<div id="right_div">
				<div>学员心声</div>
				<div>学员动态</div>
			</div>
		</div>
	</div>
	<div id="footer">我是底部（下）</div>
</body>
</html>