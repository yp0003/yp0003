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

<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div>
		<fieldset class="fieldset-self">
			<legend>新增角色</legend>
			<table align="center" width="100%" border="0">
				<tr >
					<td colspan="6" style="border: 0px;padding-right: 210px;height: 20px" align="right">
						<input type="button" value=" 新增角色" onclick="window.location.href='oaRole!toAdd.html'" />
					</td>
				</tr>
			</table>
		</fieldset>
		<br>
		<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
			角色列表
		</caption>
			<thead>
				<tr>
					<th data-sort="int">序号</th>
					<th data-sort="string">角色名称</th>
					<th data-sort="string">状态</th>
					<th data-sort="string">说明</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="roleList" id="oaRole" status="status" >
					<tr onmouseover="this.bgColor='#EAF2FF'"
					onmouseout="this.bgColor='#FFFFFF'" align="center">
						<th><s:property	value="#status.index+1"/></th>
						<td align="center">${oaRole.name}</td>
						<td align="center">${oaRole.status}</td>
						<td align="center">${oaRole.remark}</td>
						<td align="center">
						<a href="oaRole!toUpdate.html?id=${oaRole.roleId}">修改</a>&nbsp;&nbsp;
						<a href="oaRole!del.html?id=${oaRole.roleId}">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
</body>
</html>
