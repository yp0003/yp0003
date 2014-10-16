<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>



<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body class="home-template">



  <div class="jumbotron masthead">
  <div class="container">
    <h1>365IT学院</h1>
    <h2>简洁、直观、强悍的前端开发框架，让web开发更迅速、简单。</h2>
    <p class="masthead-button-links">
      <a class="btn btn-lg btn-primary btn-shadow" role="button" href="#" target="_blank">立即选课</a>
    </p>
  </div>
</div>
  
  <div class="bc-social">
    <div class="container">
      <ul class="bc-social-buttons">
        <li class="social-qq">
          <i class="fa fa-qq"></i> 365IT学院技术交流群：xxxxxxxx
        </li>
        <li class="social-forum">
          <a title=" 365IT学院问答社区" href="#" target="_blank">
            <i class="fa fa-comments"></i>  365IT学院问答社区
          </a>
        </li>
        <li class="social-weibo">
          <a title=" 365IT学院中文网官方微博" href="#" target="_blank"><i class="fa fa-weibo"></i> 新浪微博：@ 365IT学院</a>
        </li>
      </ul>
    </div>
  </div>

  
	<a href="${pageContext.request.contextPath}/system!forwardLogin.html">登录</a>
	<br>
	<a href="${pageContext.request.contextPath}/system!forwardRegister.html">注册</a>
	<br>
	<a href="${pageContext.request.contextPath}/system!updatePasswordUI.html">修改密码</a>
	<br><br>
	<p>OA</p>
	<a href="${pageContext.request.contextPath}/employee!forwardLogin.html">登录</a>
	<br>
	<a href="${pageContext.request.contextPath}/employee!forwardRegister.html">注册</a>
	<br>
	<a href="${pageContext.request.contextPath}/employee!updatePasswordUI.html">修改密码</a>
</body>
</html>
