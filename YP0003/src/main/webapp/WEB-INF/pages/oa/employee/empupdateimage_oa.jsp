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
	document.forms[0].action = "oaEmp!updateImage.html";
	document.forms[0].submit();
}

$(function() {
	
	//弹出图片
	$('.image-popup').magnificPopup({
		type : 'image',
		closeOnContentClick : true,
		closeBtnInside : false,
		image : {
			verticalFit : false
		}
	});
	
});


</script>
</head>

<body>
	<s:form method="POST" enctype="multipart/form-data">
	<s:hidden name="oaEmployee.id"></s:hidden>
	<s:actionmessage cssStyle="color: green;" />
	<s:actionerror cssStyle="color: red;" />
	<div align="center" class="easyui-tabs">
		<s:actionerror cssStyle="color: red" id="errorInfo"/>
		<div title="用户头像">
			<table cellpadding="10px" width="100%">
				<tr>
					<td>
						<fieldset class="fieldset-self">
							
							<legend>上传用户头像</legend>
							<table align="left" width="100%" cellpadding="5px" border="0">
								<tr>
									<td>  
										<input type='file' id='scan' name='scan' /> 
										<input  type="button" onclick="return forSubmit()" value="上传"/>
									</td>							
								</tr>
								<tr>
									<td align="center"><a class="image-popup"
													href="oaEmp!headImage.html?empId=<s:property value="oaEmployee.id"/>">
														<img
														src="oaEmp!headImage.html?empId=<s:property value="oaEmployee.id"/>"
														height="200px" width="320px" />
									</a></td>	
								</tr>
							
													
						</table>
						</fieldset>
					</td>
				</tr>
			</table>
		</div>
	
		
	</div>
	
	
<!-- 	<table cellpadding="10px" width="100%" -->
<!-- 		style="border-width: 0px 0px 0px 0px; border-spacing: 0; border-style: solid; border-color: #C1DAD7;"> -->
<!-- 		<tr align="center"> -->
<!-- 			<td> -->
<!-- 				<button type="button" onclick="return forSubmit()"> -->
<!-- 						<img src="images/apply2.png" alt="保存" /> 保存 -->
<!-- 					</button> &#160;&#160;&#160; -->

<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 	</table> -->
  </s:form>
</body>
</html>
