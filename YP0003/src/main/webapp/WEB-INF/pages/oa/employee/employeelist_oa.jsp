<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/demo.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
</head>
<body>
<div align="center">
 <s:form action="oaEmp!selectEmp.html" id="register">
    <label for="passWord">用户账号:</label>
    <s:textfield id="passWord"  name="oaEmployee.employeeId" />
    <label for="passWord">用户名称:</label>
    <s:textfield id="passWord"  name="oaEmployee.employeeName" />
    <label for="passWord">角色:</label>
    <s:select list="roleList" cssClass="SelectStyle1" listKey="roleId" listValue="name" headerKey="" headerValue="" name="rid"/>
    <button type="submit" value="">查询</button>
  </s:form>
</div>

<div class="col-lg-10" align="center">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>讲师账号</th>
				<th>讲师昵称</th>
				<th>讲师姓名</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="empList" id="emp">
				<tr>
					<td>${emp.employeeId}</td>
					<td>${emp.nick}</td>
					<td>${emp.employeeName}</td>
					<td>
						<a href="oaEmp!toUpdate.html?id=${emp.id}">修改</a>&nbsp;&nbsp;
						<a href="oaEmp!toUpdatePE.html?id=${emp.id}">分配角色</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</div>
</body>
</html>
