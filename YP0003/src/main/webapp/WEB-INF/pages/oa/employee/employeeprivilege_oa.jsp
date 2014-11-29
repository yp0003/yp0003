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
<div class="col-lg-10" align="center">
	<s:form action="oaEmp!updatePrivilegeByEmp.html" id="signupForm" enctype="multipart/form-data">
		<s:hidden name="oaEmployee.id"/>
        <!-- 表单内容显示 -->
        <div>
            <div class="bbb">
				<table cellpadding="0" cellspacing="0" class="mainForm">
			<tr><td height="18"></td></tr>
			<tr class="InputStyle"><td>姓名：</td>
				<td>&nbsp;&nbsp;&nbsp;<s:property value="oaEmployee.employeeName" /></td>
			</tr>
			<tr><td height="10"></td></tr>
		    <tr class="InputStyle"><td>账号：</td>
				<td>&nbsp;&nbsp;&nbsp;<s:property value="oaEmployee.employeeId" /><s:actionerror/></td>
			</tr>
            <tr><td height="15"></td></tr>
		    <tr class="InputStyle"><td>角色：</td>
            	<td ><s:select list="roleList" cssClass="SelectStyle1" listKey="roleId" listValue="name" multiple="true" size="18" name="rids"/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按住Ctrl键可以对角色进行复选</td>
            </tr> 
            <tr><td height="15"></td></tr>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <s:submit cssClass="but_b" name="update" method="update" value="保存"></s:submit>&nbsp;&nbsp;&nbsp;
            <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
        </div>
    </s:form >
</body>
</html>
