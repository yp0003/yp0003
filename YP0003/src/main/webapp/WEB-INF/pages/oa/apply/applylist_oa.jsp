<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico"
	type="image/x-icon" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/jquery.last.min.js">
	//
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/stupidtable.min.js">
	//
</script>
<link
	href="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/themes/default/easyui.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/themes/icon.css"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/jquery.easyui.min.js">
	//
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">
	//
</script>
<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

</script>
</head>
<body>
	<s:form >
		<fieldset class="fieldset-self">
			<legend>查询条件</legend>
			<table align="center" width="100%" border="0">
				<tr>														
					<td  style="border: 0px;padding-right: 210px;height: 50px" align="right">
						<input type="button" value=" 新增申请" onclick="window.location.href='oaApply!toApplyAdd.html'" />
					</td>
				</tr>
			</table>
		</fieldset>
	</s:form>
	<s:actionmessage cssStyle="color: green" />
	<s:actionerror cssStyle="color: red" />
	<br />
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
			费用申请
		</caption>
		<thead>
			<tr>
				<th data-sort="int">序号</th>
				<th data-sort="string">申请者</th>
				<th data-sort="string">重要度</th>
				<th data-sort="string">申请种别</th>
				<th data-sort="string">目标种别</th>
				<th data-sort="string">申请状态</th>
				<th data-sort="string">支付状态</th>
				<th data-sort="string">金额</th>
				<th data-sort="string">审批者</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="applylist" id="apply" status="status" >
					<tr onmouseover="this.bgColor='#EAF2FF'"
					onmouseout="this.bgColor='#FFFFFF'" align="center">
						<th><s:property
							value="%{(#request.pageInfo.pageNo - 1) * #request.pageInfo.pageSize + #status.index + 1}" />
						</th>
						<td align="center"><s:property value="#apply.apply.employeeName"></s:property></td>
						<td align="center"><s:property value="#apply.importanceDic.dicCn"></s:property></td>
						<td align="center"><s:property value="#apply.applyKindDic.dicCn"></s:property></td>
						<td align="center"><s:property value="#apply.targetKindDic.dicCn"></s:property></td>
						<td align="center"><s:property value="#apply.applyStatusDic.dicCn"></s:property></td>
						<td align="center"><s:property value="#apply.payStatusDic.dicCn"></s:property></td>
						<td align="center"><s:property value="#apply.money"></s:property></td>
						<td align="center"><s:property value="#apply.authorize.employeeName"></s:property></td>
						
						<td align="center">
						<a href="oaApply!viewApply.html?apply.id=<s:property value="#apply.id"></s:property>">修改</a>&nbsp;&nbsp;
						<a href="oaApply!removeApply.html?apply.id=<s:property value="#apply.id"></s:property>">删除</a>
						</td>
					</tr>
				</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="10">
 					<s:if test="applylist.size > 0"> 
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
</body>
</html>
