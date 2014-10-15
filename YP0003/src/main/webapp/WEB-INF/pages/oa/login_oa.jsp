<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/itedu.js"></script>
<link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet" />
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
  <form id="login">
    <ul>
    <li>
    <label for="memberID">会员ID:</label>
    <input id="memberID" type="text" />
    </li>
    <li>
    <label for="passWord">密码:</label>
    <input id="passWord" type="text" />
    </li>
    <li>
    <label for="vertCode">验证码:</label>
    <input id="vertCode" type="text" />
    <img id="vertImg" src="${pageContext.request.contextPath}/images/vetiCode.jpg" />
    <a class="chgVertImg" href="#" >看不清，换一张</a>
    </li>
    <li>
    <input id="remPass" type="checkbox" />
    <label id="lblRemPass" for="remPass">记住密码？</label>
    <div class="clear"></div>
    </li>
    <li>
    <button id="btn_login" type="submit" value=""></button>
    <a class="chgForm" href="#">注册</a>
    <div class="clear"></div>
    </li>
    </ul>
  </form>
 </div>
</div>

</body>
</html>