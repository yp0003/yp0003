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
<body>
        <!-- 表单内容显示 -->
			<table cellpadding="10px" width="60%" align="center">
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>基本信息</legend>
			<table align="left" width="100%" cellpadding="5px" border="0">
			<tr ><td>申请者：</td>
				<td><s:property value="applyMoney.apply.employeeName" /></td>
			</tr>
			<s:if test="authorizeUserId!=null">
		    <tr ><td>审批者：</td>
				<td><s:property value="applyMoney.authorize.employeeName" /></td>
			</tr>
			</s:if>
		    <tr ><td>重要度：</td>
				<td><s:property value="applyMoney.importanceDic.dicCn" /></td>
			</tr>
		    <tr ><td>申请种别：</td>
				<td><s:property value="applyMoney.applyKindDic.dicCn" /></td>
			</tr>
		    <tr ><td>目标种别：</td>
				<td><s:property value="applyMoney.targetKindDic.dicCn" /></td>
			</tr>
		    <tr><td>金额：</td>
				<td><s:property value="applyMoney.money" /></td>
			</tr>
		    <tr ><td>备注：</td>
				<td><pre><s:property value="applyMoney.expenditureRemark" /></pre></td>
			</tr>
                </table>
        </div>
        <!-- 表单操作 -->
        <div id="InputDetailBar" align="center">
            <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
        </div>
        </fieldset>
        </td></tr></table>
</body>
</html>