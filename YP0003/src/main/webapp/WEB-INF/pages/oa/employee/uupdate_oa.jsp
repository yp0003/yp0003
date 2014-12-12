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
	document.forms[0].action = "oaEmp!updateUser.html";
	document.forms[0].submit();
}
</script>
</head>

<body>
	<s:form method="POST" enctype="multipart/form-data"  >
<%-- 	<s:actionmessage cssStyle="color: green;" /> --%>
	<s:actionerror cssStyle="color: red;" />
	<div align="center" class="easyui-tabs">
	
		<div title="课程基本信息">
			<table cellpadding="10px" width="100%">
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>基本信息</legend>
							<table align="left" width="100%" cellpadding="5px" border="0">
								<tr>
									
								
									<td align="right" width="100px">员工ID:</td>
									<td><s:textfield name="user.userId" /></td>
									<td align="right" width="100px">昵称:</td>
									<td >

										<s:textfield name="user.nick" />
					    			</td>
									<td align="right" width="100px">员工名称:</td>
									<td>
											<s:textfield name="user.userName" />
					    			</td>
					    			<td align="right" width="100px">生日:</td>
									<td>
									  	<input id="dd1" style="width: 100px"
											name="birthday" type="text"
											class="easyui-datebox" />
									</td>
								</tr>
								<tr>
									<td align="right" width="100px">性别:</td>
									<td>
										<s:radio name="user.sex" list="#{'0':'男','1':'女'}" value="0"/>
									</td>
									<td align="right" width="100px">身份证号:</td>
									<td>
										 <s:textfield id="passWord"  name="user.idcardNumber" />
									</td>
									<td  align="right" width="100px">学历:</td>
									<td>  <s:select id="passWord" list="#{0:'高中',1:'大专',2:'本科',3:'研究生',4:'博士'}" name="user.education" /></td>
									<td align="right" width="100px">留学国家:</td>
									<td>
											<s:textfield id="passWord"  name="user.graduateSchool" />
									</td>
								</tr>	
								<tr>
									<td align="right" width="100px">手机:</td>
									<td>
										<s:textfield name="user.phoneNumber" onkeyup="value=value.replace(/[^\d]/g,'')" />
									</td>
									<td align="right" width="100px">国家:</td>
									<td><s:textfield name="user.countrie" onkeyup="value=value.replace(/[^\d]/g,'')" /></td>
									<td align="right" width="100px">省/市:</td>
									<td><s:textfield name="user.provinceAndCity"></s:textfield></td>
								</tr>
								<tr>
									<td align="right" width="100px">邮箱:</td>	
									<td><s:textfield  name="user.email" /></td>		
									<td align="right" width="100px" >QQ:</td>
									<td><s:textfield name="user.qq" /></td>
									<td align="right" width="100px">邮编:</td>
									<td><s:textfield name="user.zipCode"></s:textfield></td>
								</tr>
								<tr>
									<td align="right" width="100px">地址:</td>
									<td colspan="7"><s:textarea  cols="100" rows="1"  name="product.address"/><s:actionerror/></td>
						
								</tr>		
								    <s:hidden name="user.id"/>
											
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
				
			</td>
		</tr>
	</table>
  </s:form>
</body>
</html>
