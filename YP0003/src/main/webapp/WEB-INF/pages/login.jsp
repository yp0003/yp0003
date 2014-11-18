<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- link css -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">


<!-- link script -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>登陆</title>
</head>
  <body>
  
  
  <!---网页内容 start-->
<div id="content">
 <div id="page_path">
  <span class="currLocation">当前位置：</span>
  <a class="path_item" href="#">&gt;&nbsp;登录</a>
 </div>
 
 <div id="con_show">
 <h2 class="pageTitle">
  会员登录
 </h2>
 <img class="hr_conTitle" src="${pageContext.request.contextPath}/image/login/hr_content1.png" alt="" />
 
 <div id="login_form">
 <form id="login" action="system!login.html" method="post">
   <ul>
    <li>
    <label for="memberID">用户名:</label>
    <input id="memberID" type="text" />
    </li>
    <li>
    <label for="passWord">密&nbsp;码:</label>
    <input id="passWord" type="password" />
    </li>
    <li>
    <input id="remPass" type="checkbox" />
    <label id="lblRemPass" for="remPass">记住密码，两周内自动登录</label>
    <a id="forgetPW" href="#">忘记密码</a>
    <div class="clear"></div>
    </li>
    <li>
    <button id="btn_passwd" type="submit" value=""></button>
    <div class="clear"></div>
    </li>
  </ul>
  </form>
  
  <div id="commAccount">
  <span class="lbl_commAcc">合作账号登录：</span>
  <div id="accountList">
  <a id="acc_qq" href="#"><img src="${pageContext.request.contextPath}/image/login/login/acc_qq.png" alt=""></a> 
  <a id="acc_xnwb" href="#"><img src="${pageContext.request.contextPath}/image/login/acc_xnwb.png" alt=""></a>
  <a id="acc_rr" href="#"><img src="${pageContext.request.contextPath}/image/login/acc_rr.png" alt=""></a>
  <a id="acc_zfb" href="#"><img src="${pageContext.request.contextPath}/image/login/acc_zfb.png" alt=""></a>
  <div class="clear"></div>
  </div>
  <a id="acc_chg" href="#"><img src="${pageContext.request.contextPath}/image/login/icon_chgAcc.png" alt=""></a>
  <div class="clear"></div>
  </div>
 
 </div>
 
 <img id="split_LR" src="${pageContext.request.contextPath}/image/login/split_LR.png" alt="" />
 <div id="login_rightC">
   <img id="img_right" src="${pageContext.request.contextPath}/image/login/img_loginC1.jpg" />
   <span class="lblImgInfo">还没有学习账号？</span>
   <a class="linkImgAction"  href="${pageContext.request.contextPath}/system!forwardRegister.html">立即去免费注册 &gt;&gt;</a>
 </div>
 <div class="clear"></div>
 
</div>

</div>
<!---网页内容 end-->
  
  
  
  
  </body>
</html>
