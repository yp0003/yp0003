<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>

<link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet" />

</head>
<body>
  <s:form action="oaPlayCode!update.html" id="register">
    <ul>
    <li>
    <label for="passWord">学员账号:</label>
    <s:textfield id="passWord"  name="myProduct.userId" readonly="true"/>
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">课程名称:</label>
    <s:textfield id="passWord"  name="myProduct.product.productName" readonly="true"/>
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">机器码:</label>
    <s:textfield id="passWord"  name="myProduct.smartCode" readonly="true" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">播放码:</label>
    <s:textfield id="passWord"  name="myProduct.playerCode" />
    <span class="redStar">*</span>
    </li>
    <li>
    <s:hidden name="myProduct.id"></s:hidden>
    <button type="submit" value="">保存</button>
    <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
    </li>
    </ul>
  </s:form>
</body>
</html>