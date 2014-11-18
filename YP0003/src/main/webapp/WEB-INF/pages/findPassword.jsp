<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>密码找回</title>
<!-- link css -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">


<!-- link script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<!---网页内容 start-->
<div id="content" class="content-r">
 <div id="page_path">
  <span class="currLocation">当前位置：</span>
  <a class="path_item" href="#">&gt;&nbsp;忘记密码</a>
 </div>
 
 <div id="con_show">
 <h2 class="pageTitle">
忘记密码
 </h2>
 <img class="hr_conTitle" src="image/login/hr_content1.png" alt="" />
 
 <div id="passwd_form" style="margin-top: 100px;">
 <form id="login" action="system!findPassword.html">
   <ul class="passwd">
    <li>
    <label for="memberID">用户名:</label>
    <input id="memberID" type="text" placeHolder="请输入你要找回的用户名" name="user.userId"/>
    </li>
    <li>
    <label for="passWord">邮&nbsp;箱:</label>
    <input id="passWord" type="text" placeHolder="请输入你要找回的账户绑定的邮箱" name="user.email"/>
    </li>
    <li>
    <li style="width:100%;  margin-top: 30px;">
    <button id="btn_passwd1"  type="submit" value="">发送到邮箱</button>
    </li>
    <div class="clear"></div>
  </ul>
  </form>
  

 
 </div>
 
 <div class="clear"></div>
 
</div>
<script type="text/javascript">
	$(function(){
		var h = $(window).height();
		var h1 = h-270;
		$('.content-r').css('min-height',h1);
		
	});
</script>
</body>
</html>