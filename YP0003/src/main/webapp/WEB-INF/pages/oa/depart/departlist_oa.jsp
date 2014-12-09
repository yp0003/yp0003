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
						<input type="button" value=" 新增菜单" onclick="window.location.href='oaDepart!toAdd.html'" />
					</td>
				</tr>
				<tr>
					<th height="30px">序号</th>
					<th>名称</th>
					<th>说明</th>
					<th>层级</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="departmentList" status="s" id="depart">
					<tr>
						<td align="center"><s:property value="#s.count" /></td>
						<td >
						<s:iterator begin="1" end="#depart.level">&nbsp;&nbsp;&nbsp;</s:iterator>
						${depart.departName}</td>
						<td align="center">${depart.remark}</td>
						<td height="30px" align="center">${depart.level}</td>
						<td align="center">
						<a href="oaDepart!toUpdate.html?id=${depart.id}">修改</a>&nbsp;&nbsp;
						<a href="oaDepart!del.html?id=${depart.id}">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
	
</body>
</html>
