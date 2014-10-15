<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
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
  <img id="oaImg" src="${pageContext.request.contextPath}/images/img_oaTXT.png">
  <div class="clear"></div>
 </div>
 <img src="${pageContext.request.contextPath}/images/hr_admin.png" alt="" />
  <s:form action="employee!register.html" id="register">
    <ul>
    <li>
    <label for="memberID">会员ID:</label>
    <s:textfield id="memberID" placeHolder="请输入6个以上的字符作为密码" name="employee.empId" />
    <span class="redStar">*</span>
     <s:if test="registerMessage.userIdMessage != null">
      <span class="redStar"><s:property	value="registerMessage.userIdMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">密码:</label>
    <input id="passWord" type="password" placeHolder="英文、数字或字符，6-20位区分大小写" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">确认密码:</label>
    <input id="passWord" type="password" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">电子邮箱:</label>
    <input id="passWord" type="password" placeHolder="请使用常用邮箱地址作为登录账号" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="vertCode">验证码:</label>
    <input id="vertCode" type="text" />
    <img id="vertImg" src="${pageContext.request.contextPath}/images/vetiCode.jpg" />
    <a class="chgVertImg" href="#" >看不清，换一张</a>
    </li>
   
    <li>
    <button id="btn_register" type="submit" value=""></button>
    <a class="chgForm" href="#">登录</a>
    <div class="clear"></div>
    </li>
    </ul>
  </s:form>
 </div>
</div>

</body>
</html>