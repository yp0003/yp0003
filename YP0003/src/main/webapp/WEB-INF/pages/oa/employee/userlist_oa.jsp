<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
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

<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div>
		<fieldset class="fieldset-self">
			<legend>客户查询</legend>
			<table align="center" width="100%" border="0">
			 <s:form action="oaEmp!selectUser.html" id="register">
			    <label for="passWord">&nbsp;&nbsp;&nbsp;&nbsp;客户账号:</label>
			    <s:textfield id="passWord"  name="user.userId" />
			    <label for="passWord">&nbsp;&nbsp;&nbsp;&nbsp;客户名称:</label>
			    <s:textfield id="passWord"  name="user.userName" />
			    <label for="passWord">&nbsp;&nbsp;&nbsp;&nbsp;角色:</label>
			    <s:select list="roleList" cssClass="SelectStyle1" listKey="roleId" listValue="name" headerKey="" headerValue="" name="rid"/>
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" value="">查询</button>
			  </s:form>
			</table>
		</fieldset>
		<br>
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
			员工列表
		</caption>
		<thead>
			<tr>
				<th data-sort="string">客户账号</th>
				<th data-sort="string">客户昵称</th>
				<th data-sort="string">客户姓名</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="userList" id="user1">
				<tr>
					<td align="center">${user1.userId}</td>
					<td align="center">${user1.nick}</td>
					<td align="center">${user1.userName}</td>
					<td align="center">
						<a href="oaEmp!toUserUpdate.html?id=${user1.id}">修改</a>&nbsp;&nbsp;
					</td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="10">
 					<s:if test="empList.size > 0"> 
						<div align="right">
							<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
 								pageSize="pageInfo.pageSize" count="pageInfo.count"
							includes="" />
						</div>
					</s:if> 
				</td>
			</tr>
		</tfoot>
	</table>
</div>
</body>
</html>
