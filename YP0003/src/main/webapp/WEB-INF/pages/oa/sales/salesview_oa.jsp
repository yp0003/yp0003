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
	document.forms[0].action = "oaSales!add.html";
	document.forms[0].submit();
}

function forSubmit() {
	document.forms[0].action = "oaSales!upLoad.html";
	document.forms[0].submit();
}
</script>
</head>
<body>
	<s:form method="POST" enctype="multipart/form-data">
		<s:hidden name="oaSales.id"></s:hidden>
        <!-- 表单内容显示 -->
        <div align="center" class="easyui-tabs">
		
		<div title="销售信息信息">
		<table align="center" cellpadding="10px" width="100%">
		<tr>
		<td>
		<fieldset class="fieldset-self">
		<legend>销售信息</legend>
		<table align="center" width="80%" cellpadding="5px" border="0">
		    <tr align="center"><td>客户账号：</td>
				<td>${oaSales.userId }</td>
			</tr>
		    <tr align="center"><td>销售码：</td>
				<td>${oaSales.salesCode }</td>
			</tr>
                <s:iterator value="oaSalesPicList" id="pic">
            		<tr align="center">
            		<td>&nbsp;</td>
					<td><a class="image-popup" href="oaSales!showImage.html?id=${pic.id}" target="view_window">
						<img src="oaSales!showImage.html?id=${pic.id}" width="320px" />
					</a></td>	
					</tr>
				</s:iterator>
				</table>
            </div>
        </div>
        <!-- 表单操作 -->
<!--         <div id="InputDetailBar" align="center"> -->
<%--             <s:submit cssClass="but_b" name="add" method="add" value="保存"></s:submit>&nbsp;&nbsp;&nbsp; --%>
<!--             <input type="button" value="返回" onclick="javascript:history.go(-1);"/> -->
<!--         </div> -->
        	<table cellpadding="10px" width="100%"
		style="border-width: 0px 0px 0px 0px; border-spacing: 0; border-style: solid; border-color: #C1DAD7;">
		<tr align="center">
			<td>
				<button type="button" onclick="return history.back();">
					<img src="images/cross.png" alt="返回" />返回
				</button>
			</td>
		</tr>
	</table>
    </s:form >
</body>
</html>