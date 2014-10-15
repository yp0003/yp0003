<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>365ITEDU</title>
<!-- Styles -->
<style type="text/css">
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
	<%-- <%@include file="common/common.jsp"%> --%>
<%-- 			<div class="banner"
				style="width: 1474px; height: 500px; overflow: hidden;">
				<ul>
					<li
						style="background-image: url('${pageContext.request.contextPath}/loopImage/lop1.jpg');">1111111111</li>
					<li
						style="background-image: url('${pageContext.request.contextPath}/loopImage/lop2.jpg');">22222222222</li>
					<li
						style="background-image: url('${pageContext.request.contextPath}/loopImage/lop3.jpg');">33333333333</li>
				</ul>
			</div> --%>
			<table width="100%" align="center" border="1">
		<tbody>
			<s:iterator value="buyCarList" id="buyCar" status="status">
				<tr align="center">
					<td align="left"><s:property value="#buyCar.id" /></td>
					<td align="left"><s:property value="#buyCar.productId" /></td>
					<td align="left"><s:property value="#buyCar.productName" /></td>
					<td><s:property value="#buyCar.userId" /></td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4"><s:if test="buyCarList.size > 0">
						<div align="center">
							<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total" pageSize="pageInfo.pageSize"
								count="pageInfo.count"
								includes="" />
						</div>
					</s:if></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>