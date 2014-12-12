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

<script type="text/javascript">
function forSubmit() {
	document.forms[0].action = "oaMenu!update.html";
	document.forms[0].submit();
}
</script>
</head>
<body >
	<s:form method="POST" enctype="multipart/form-data">
        <!-- 表单内容显示 -->
        <div align="center" class="easyui-tabs">
		
		<div title="菜单信息">
		<table align="center" cellpadding="10px" width="100%">
		<tr>
		<td>
		<fieldset class="fieldset-self">
		<legend>基本信息</legend>
		<table align="center" width="100%" cellpadding="5px" border="0">
		    <tr ><td>ID：</td>
				<td><s:textfield name="oaMenu.menuId" /></td>
			</tr>
		    <tr ><td>菜单名称：</td>
				<td><s:textfield name="oaMenu.name"/><s:actionerror/></td>
			</tr>
		    <tr><td>说明：</td>
				<td><s:textfield name="oaMenu.des"/><s:actionerror/></td>
			</tr>
		    <tr ><td>URL：</td>
		    	<td><s:textfield name="oaMenu.url"/></td>
			</tr>
		    <tr ><td>父ID：</td>
		    	<td><s:textfield name="oaMenu.pid"/></td>
			</tr>
                </table>
            </div>
        </div>
        <!-- 表单操作 -->
<!--         <div id="InputDetailBar" align="center"> -->
<%--             <s:submit cssClass="but_b" name="update" method="update" value="保存"></s:submit>&nbsp;&nbsp;&nbsp; --%>
<!--             <input type="button" value="返回" onclick="javascript:history.go(-1);"/> -->
<!--         </div> -->
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
    </s:form >
</body>
</html>