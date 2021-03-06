<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>

<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
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

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/oa_js/jquery/magnific-popup/magnific-popup.css" />
<script type="text/javascript" language="javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/magnific-popup/jquery.magnific-popup.js">
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/oa_js/common.js">
	//
</script>
<script type="text/javascript">
function forSubmit() {
	document.forms[0].action = "oaApply!addApply.html";
	document.forms[0].submit();
}
</script>
</head>

<body>
	<s:form method="POST" enctype="multipart/form-data">
	<s:actionmessage cssStyle="color: green;" />
	<s:actionerror cssStyle="color: red;" />
	<s:hidden name="applyMoney.id"/> 
		<s:hidden name="applyMoney.applyId"/> 
		<s:hidden name="applyMoney.applyUserId"/> 
		<s:hidden name="applyMoney.authorizeUserId"/> 
		<s:hidden name="applyMoney.applyStatus"/> 
		<s:hidden name="applyMoney.payStatus"/> 
	<div align="center" class="easyui-tabs">
		
		<div title="费用申请基本信息">
			<table cellpadding="10px" width="100%">
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>基本信息</legend>
							<table align="left" width="100%" cellpadding="5px" border="0">
								<tr>
									
								
									<td align="right" width="100px">申请者：</td>
									<td><s:property value="applyMoney.apply.employeeName" /></td>
									<td align="right" width="100px">重要度：</td>
									<td >
										<s:select list="importanceList" listKey="id" listValue="dicCn" name="applyMoney.importance"/>
					    			</td>
									<td align="right" width="100px">申请种别：</td>
									<td>
										<s:select list="kindList" listKey="id" listValue="dicCn" name="applyMoney.applyKind"/>
					    			</td>
					    			<td align="right" width="100px">目标种别：</td>
									<td>
									  	<s:select list="tagerList" listKey="id" listValue="dicCn" name="applyMoney.targetKind"/>							
									</td>
								</tr>
								<tr>
									<td align="right" width="100px">金额：</td>
									<td><s:textfield name="applyMoney.money"/><s:actionerror/></td>
									
								</tr>
								<tr>
									<td align="right" width="100px" >备注：</td>
									<td colspan="7">
										<s:textarea  rows="3" name="applyMoney.expenditureRemark"></s:textarea>
									</td>
								</tr>
											
						</table>
						</fieldset>
					</td>
				</tr>
			</table>
		</div>
		
	</div>
	
	
	<table cellpadding="10px" width="100%"
		style="border-width: 0px 0px 0px 0px; border-spacing: 0; border-style: solid; border-color: #C1DAD7;">
		<tr align="center">
			<td>
				<button type="button" onclick="return forSubmit()">
						<img src="images/apply2.png" alt="保存" /> 保存
					</button> &#160;&#160;&#160;
				<button type="button" onclick="return history.back();">
					<img src="images/cross.png" alt="返回" />返回
				</button>
			</td>
		</tr>
	</table>
  </s:form>
</body>
</html>
