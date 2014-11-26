<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
	<s:form action="oaMenu!add" id="signupForm" enctype="multipart/form-data">
        <!-- 表单内容显示 -->
        <div align="center">
            <div class="bbb">
				<table cellpadding="0" cellspacing="0">
			<tr><td height="18"></td></tr>
			<tr><td>ID：</td>
				<td><s:textfield name="oaMenu.menuId" /></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>菜单名称：</td>
				<td><s:textfield name="oaMenu.name"/><s:actionerror/></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr><td>说明：</td>
				<td><s:textfield name="oaMenu.des"/><s:actionerror/></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>URL：</td>
		    	<td><s:textfield name="oaMenu.url"/></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>父ID：</td>
		    	<td><s:textfield name="oaMenu.pid"/></td>
			</tr>
			<tr><td height="15"></td></tr>
                </table>
            </div>
        </div>
        <!-- 表单操作 -->
        <div id="InputDetailBar" align="center">
            <s:submit cssClass="but_b" name="add" method="add" value="保存"></s:submit>&nbsp;&nbsp;&nbsp;
            <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
        </div>
    </s:form >
</body>
</html>