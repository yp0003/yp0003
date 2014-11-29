<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}easyui/jquery.easyui.min.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body class="easyui-layout">
	<s:form action="oaProduct!add" id="signupForm" enctype="multipart/form-data">
		<s:hidden name="product.id"></s:hidden>
        <!-- 表单内容显示 -->
        <div align="center">
            <div class="bbb">
				<table cellpadding="0" cellspacing="0">
			<tr><td height="18"></td></tr>
			<tr><td>产品ID：</td>
				<td><s:textfield name="product.productId" /></td>
				<td>产品名称：</td>
				<td><s:textfield name="product.productName" /></td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr><td>产品价格：</td>
				<td><s:textfield name="product.productPrice" onkeyup="value=value.replace(/[^\d]/g,'')" /></td>
				<td>产品打折：</td>
				<td><s:textfield name="product.productSale" onkeyup="value=value.replace(/[^\d]/g,'')" /></td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr><td>上线时间：</td>
				<td>
    <s:textfield id="d121" name="onlineTime1" readonly="true" onfocus="WdatePicker({isShowWeek:true})"/>
    			</td>
				<td>下线时间：</td>
				<td>
    <s:textfield id="d121" name="offlineTime1" readonly="true" onfocus="WdatePicker({isShowWeek:true})"/>
    			</td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr><td>讲师ID：</td>
				<td><s:textfield name="product.teacherId" /></td>
				<td>课程时长：</td>
				<td><s:textfield name="product.productLang" /></td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr><td>上下线状态：</td>
				<td><s:textfield name="product.onlineStatus" /></td>
				<td>产品状态：</td>
				<td><s:textfield name="product.productStatus" /></td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr><td>更新章数：</td>
				<td><s:textfield name="product.updateBadge" /></td>
				<td>更新节数：</td>
				<td><s:textfield name="product.updateMatter" /></td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr><td>所属分类：</td>
				<td><s:textfield name="product.productKindId" /></td>
			</tr>
			<tr><td height="15"></td></tr>
		    <tr ><td>产品描述：</td>
				<td colspan="3"><s:textarea  cols="50" rows="12"  name="product.productDesc"/><s:actionerror/></td>
			</tr>
			<tr><td height="15"></td></tr>
                </table>
            </div>
        </div>
        <!-- 表单操作 -->
        <div id="InputDetailBar" align="center">
            <s:submit cssClass="but_b" name="add" method="add" value="保存"></s:submit>&nbsp;&nbsp;&nbsp;
            <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
        </div>
    </s:form >
</body>
</html>