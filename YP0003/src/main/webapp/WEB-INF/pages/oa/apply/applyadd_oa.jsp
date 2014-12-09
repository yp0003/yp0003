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
	<s:form action="oaApply!addApply.html" id="signupForm" enctype="multipart/form-data">
		<s:hidden name="applyMoney.id"/> 
		<s:hidden name="applyMoney.applyId"/> 
		<s:hidden name="applyMoney.applyUserId"/> 
		<s:hidden name="applyMoney.authorizeUserId"/> 
		<s:hidden name="applyMoney.applyStatus"/> 
		<s:hidden name="applyMoney.payStatus"/> 
        <!-- 表单内容显示 -->
        <div align="center">
            <div class="bbb">
				<table cellpadding="0" cellspacing="0">
			<tr><td height="15"></td></tr>
		    <tr ><td>申请者：</td>
				<td><s:property value="applyMoney.apply.employeeName" /></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>重要度：</td>
		    <td><s:select list="importanceList" listKey="id" listValue="dicCn" name="applyMoney.importance"/></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>申请种别：</td>
		    <td><s:select list="kindList" listKey="id" listValue="dicCn" name="applyMoney.applyKind"/></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>目标种别：</td>
		    <td><s:select list="tagerList" listKey="id" listValue="dicCn" name="applyMoney.targetKind"/></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr><td>金额：</td>
				<td><s:textfield name="applyMoney.money"/><s:actionerror/></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>备注：</td>
		    	<td><s:textarea rows="8" name="applyMoney.expenditureRemark"/></td>
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