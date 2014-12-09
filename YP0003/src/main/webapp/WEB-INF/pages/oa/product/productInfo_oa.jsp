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
function addFileInput(){
 	$("#imagesTable").append('<tr><td width="30%"><s:file name="images">选择图片:</s:file></td></tr>');
}
function forSubmit() {
	document.forms[0].action = "oaProduct!saveProductInfo.html";
	document.forms[0].submit();
}
</script>
</head>

<body>
	<s:form method="POST" enctype="multipart/form-data">
	<s:actionmessage cssStyle="color: green;" />
	<s:actionerror cssStyle="color: red;" />
	<div align="center" class="easyui-tabs">
		<s:hidden name="product.id"></s:hidden>
		<div title="课程基本信息">
			<table cellpadding="10px" width="100%">
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>基本信息</legend>
							<table align="left" width="100%" cellpadding="5px" border="0">
								<tr>
									
								
									<td align="right" width="100px">产品名称：</td>
									<td><s:textfield name="product.productName" /></td>
									<td align="right" width="100px">上线时间：</td>
									<td >
										<input style="width: 100px"
												name="product.onlineTime" type="text"
											class="easyui-datebox" id="d121"/>
					    			</td>
									<td align="right" width="100px">下线时间：</td>
									<td>
										<input style="width: 100px"
												name="product.offlineTime" type="text"
											class="easyui-datebox" id="d121" />
					    			</td>
					    			<td align="right" width="100px">课程难度：</td>
									<td>
									  	<s:select headerKey="" headerValue="--请选择--" 
											list="productLevelList" listKey="dicCode" listValue="dicCn"
											cssStyle="width:100px" />								
									</td>
								</tr>
								<tr>
									<td align="right" width="100px">产品价格：</td>
									<td><s:textfield name="product.productPrice" onkeyup="value=value.replace(/[^\d]/g,'')" /></td>
									<td align="right" width="100px">产品打折：</td>
									<td><s:textfield name="product.productSale" onkeyup="value=value.replace(/[^\d]/g,'')" /></td>
									<td  align="right" width="100px">课程时长：</td>
									<td><s:textfield name="product.productLang" /></td>
									<td align="right" width="100px">所属分类：</td>
									<td>
											<s:select headerKey="" headerValue="--请选择--"  name="product.productKindId"
											list="productKindList" listKey="id" listValue="productKind"
											cssStyle="width:100px" />
									</td>
								</tr>	
								<tr>
									<td align="right" width="100px">更新节数：</td>
									<td><s:textfield name="product.updateBadge" onkeyup="value=value.replace(/[^\d]/g,'')" /></td>
									<td align="right" width="100px">更新章数：</td>
									<td><s:textfield name="product.updateMatter" onkeyup="value=value.replace(/[^\d]/g,'')" /></td>
									<td align="right" width="100px"></td>
								</tr>
								<tr>
									<td align="right" width="100px">课程须知：</td>
									<td colspan="7"><s:textarea  cols="100" rows="3"  name="product.productKnows"/><s:actionerror/></td>
								</tr>
								<tr>
								<td align="right" width="100px">产品描述：</td>
								<td colspan="7"><s:textarea  cols="100" rows="3"  name="product.productDesc"/><s:actionerror/></td>
								</tr>					
						</table>
						</fieldset>
					</td>
				</tr>
			</table>
		</div>
		<div title="课程详情">
			<fieldset class="fieldset-self">
					<legend>产品缩略图信息</legend>
					<table align="left" width="100%" cellpadding="5px" border="0" >
						<tr>
							<td><s:file name="scan">选择图片:</s:file></td>
						</tr>
					</table>
					
			</fieldset>
			
		</div>
		<div title="课程精彩截图">
				<fieldset class="fieldset-self">
					<legend>截图信息</legend>
					<table align="left" width="100%" cellpadding="5px" border="0" id="imagesTable">
						<tr>
							<td width="30%"><s:file name="images">选择图片:</s:file></td>	
							<td><input type="button" value="增加" onclick="addFileInput()"></input></td>					
						</tr>
					</table>
			</fieldset>
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
