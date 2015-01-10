<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/itedu.js"></script>
<link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(function() {

	});
	function formCommit() {
		var flag = document.getElementById("remPass").checked;
		if (flag) {
			return true;
		} else {
			alert("接受协议才可注册");
			return false;
		}
	}
	function reImg() {
		$("#vertImg").attr(
				"src",
				"${pageContext.request.contextPath}/system!validateCode.html?time="
						+ new Date());
	}
</script>
</head>
<body id="admin">
<div id="wrap_form">
 <div id="admin_login_form">
 <div id="logo">
  <img id="logoImg" src="${pageContext.request.contextPath}/images/img_logo2.png" alt="" />
  <img id="oaImg" src="${pageContext.request.contextPath}/images/img_oaTXT.png"/>
  <div class="clear"></div>
 </div>
 <img src="${pageContext.request.contextPath}/images/hr_admin.png" alt="" />
 
 <!-- 表单 -->
  <s:form action="oalogin!register.html" id="register">
    <ul>
    <li>
    <label for="memberID">会员ID:</label>
    <s:textfield id="memberID" placeHolder="请输入6个以上的字符作为密码" name="oaEmployee.employeeId" />
    <span class="redStar">*</span>
     <s:if test="oaRegisterMessage.employeeIdMessage != null">
      <span class="redStar"><s:property	value="oaRegisterMessage.employeeIdMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">密码:</label>
    <s:textfield id="passWord" placeHolder="英文、数字或字符，6-20位区分大小写" name="oaEmployee.nowPassword" />
    <span class="redStar">*</span>
     <s:if test="oaRegisterMessage.passwordMessage != null">
      <span class="redStar"><s:property	value="oaRegisterMessage.passwordMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">确认密码:</label>
    <s:textfield id="passWord" type="password" name="oaEmployee.nowPassword" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">电子邮箱:</label>
    <s:textfield id="passWord" placeHolder="请使用常用邮箱地址作为登录账号" name="oaEmployee.email" />
    <span class="redStar">*</span>
     <s:if test="oaRegisterMessage.emailMessage != null">
      <span class="redStar"><s:property	value="oaRegisterMessage.emailMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="vertCode">验证码:</label>
    <s:textfield id="vertCode" name="validateCode" />
    <img id="vertImg" src="${pageContext.request.contextPath}/oalogin!validateCode.html" />
    <a class="chgVertImg" href="javascript:void(0);" onclick="reImg()">看不清，换一张</a>
     <s:if test="oaRegisterMessage.valiCodeMessage != null">
      <span class="redStar"><s:property	value="oaRegisterMessage.valiCodeMessage" /></span>
     </s:if>
    </li>
   
    <li>
    <button id="btn_register" type="submit" value=""></button>
    <a class="chgForm" href="${pageContext.request.contextPath}/oalogin!forwardLogin.html">登录</a>
    <div class="clear"></div>
    </li>
    </ul>
  </s:form>
 </div>
</div>

</body>
</html>