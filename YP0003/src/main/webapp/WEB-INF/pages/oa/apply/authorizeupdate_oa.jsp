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
<script type="text/javascript">
     function submit1(){
        f1.action="oaApply!authorizeSuccess.html";
        f1.submit();
     }
     function submit2(){
    	 f1.action="oaApply!authorizeFail.html";
    	 f1.submit();
     }
</script>
<body class="easyui-layout">
	<s:form name="f1" id="signupForm" enctype="multipart/form-data">
		<s:hidden name="applyMoney.id"/> 
        <!-- 表单内容显示 -->
        <div align="center">
            <div class="bbb">
				<table cellpadding="0" cellspacing="0">
			<tr><td height="15"></td></tr>
		    <tr ><td>申请者：</td>
				<td><s:property value="applyMoney.apply.employeeName" /></td>
			</tr>
			<tr><td height="15"></td></tr>
			<s:if test="applyMoney.authorizeUserId!=null">
		    <tr ><td>审批者：</td>
				<td><s:property value="applyMoney.authorize.employeeName" /></td>
			</tr>
			<tr><td height="15"></td></tr>
			</s:if>
		    <tr ><td>重要度：</td>
				<td><s:property value="applyMoney.importanceDic.dicCn" /></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>申请种别：</td>
				<td><s:property value="applyMoney.applyKindDic.dicCn" /></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>目标种别：</td>
				<td><s:property value="applyMoney.targetKindDic.dicCn" /></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr><td>金额：</td>
				<td><s:property value="applyMoney.money" /></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>备注：</td>
				<td><pre>
				<s:property value="applyMoney.expenditureRemark" />
				</pre></td>
			</tr>
			<tr><td height="15"></td></tr>
                </table>
            </div>
        </div>
        <!-- 表单操作 -->
        <div id="InputDetailBar" align="center">
            <input type="button" value="批准" onclick="return submit1();"/>
            <input type="button" value="否决" onclick="return submit2();"/>
            <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
        </div>
    </s:form >
</body>
</html>
