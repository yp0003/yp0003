<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
<br>
	<div>
		<table  width="80%" border="0" align="center" cellpadding="0" cellspacing="1" >
			<thead>
				<tr >
					<td colspan="6" style="border: 0px;padding-right: 210px;height: 50px" align="right">
						<input type="button" value="新增产品" onclick="window.location.href='oaProduct!toAdd.html'" />
					</td>
				</tr>
				<tr>
					<th>产品ID</th>
					<th>产品名称</th>
					<th>讲师ID</th>
					<th>产品价格</th>
					<th>产品打折</th>
					<th>产品状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="productList" id="pl">
					<tr>
						<td height="30px" align="center">${pl.productId}</td>
						<td height="30px" align="center">${pl.productName}</td>
						<td height="30px" align="center">${pl.teacherId}</td>
						<td height="30px" align="center">${pl.productPrice}</td>
						<td height="30px" align="center">${pl.productSale}</td>
						<td height="30px" align="center">${pl.productStatus}</td>
						<td align="center">
						<a href="oaProduct!toUpdate.html?id=${pl.id}">修改</a>&nbsp;&nbsp;
						<a href="oaProduct!del.html?id=${pl.id}">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
	
</body>
</html>
