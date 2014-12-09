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
						<input type="button" value=" 新增申请" onclick="window.location.href='oaApply!toApplyAdd.html'" />
					</td>
				</tr>
				<tr>
					<th height="30px">序号</th>
					<th>申请者</th>
					<th>重要度</th>
					<th>申请种别</th>
					<th>目标种别</th>
					<th>申请状态</th>
					<th>支付状态</th>
					<th>金额</th>
					<th>审批者</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="applylist" status="s" id="list">
					<tr>
						<td align="center"><s:property value="#s.count" /></td>
						<td height="30px" align="center">${list.apply.employeeName}</td>
						<td height="30px" align="center">${list.importanceDic.dicCn}</td>
						<td height="30px" align="center">${list.applyKindDic.dicCn}</td>
						<td height="30px" align="center">${list.targetKindDic.dicCn}</td>
						<td height="30px" align="center">${list.applyStatusDic.dicCn}</td>
						<td height="30px" align="center">${list.payStatusDic.dicCn}</td>
						<td height="30px" align="center">${list.money}</td>
						<td height="30px" align="center">${list.authorize.employeeName}</td>
						<td align="center">
						<a href="oaApply!viewApply.html?id=${id}">查看</a>&nbsp;&nbsp;
						<s:if test="applyStatus=='006'">
						<a href="oaApply!removeApply.html?id=${id}">删除</a>
						</s:if>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
	
</body>
</html>
