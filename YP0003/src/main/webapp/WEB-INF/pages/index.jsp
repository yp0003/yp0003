<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<!-- Styles -->
<style type="text/css">
.banner {
	position: relative;
	overflow: auto;
}

.banner li {
	list-style: none;
}

.banner ul li {
	height: 415px;
	float: left;
	background-size:100% 100%;
}
</style>
<script type="text/javascript">
	$(function() {
		$('.banner').unslider();
	});
</script>
</head>
<body class="home-template">

<%@include file="common/common.jsp"%>



  <div class="jumbotron masthead">
  <div class="container">
    <h1>365IT学院</h1>
    <h2>简洁、直观、强悍的开发框架，让web开发更迅速、简单。</h2>
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
  
  
  
  
  
  <div class="index_content container index_lr" id="index_picture">
                <div class="row">
                    <div class="col-md-6">
                        <div class="page-header picture_header">
                            <h2>免费与尽情</h2>
                            <p>平台提供大量免费的无背景图片、高质量的摄影照片以及多种字体供你选择，你可以自由使用这些素材进行创意设计，让一切变得随心所欲。</p>
                            <p>提供上传功能，你可以将自己的图片、元素上传至艺源酷，使用并完成你的设计，无论在何时何地，你的素材都是可用的。</p>
                        </div>
                    </div>
                    <div class="col-md-6 picture_image" style="height: 539px;">
                        <img class="image_picture" style="left: -34.5px; top: 0px; width: 624px; display: inline-block; opacity: 1;" src="${pageContext.request.contextPath}/loopImage/lop1.jpg"/>
                    </div>
                </div>
            </div>
  
  
  
<%-- 
  
	<a href="${pageContext.request.contextPath}/system!forwardLogin.html">登录</a>
	<br>
	<a href="${pageContext.request.contextPath}/system!forwardRegister.html">注册</a>
	
	<p>OA</p> 
	<a href="${pageContext.request.contextPath}/employee!forwardLogin.html">登录</a>
	<br>
	<a href="${pageContext.request.contextPath}/employee!forwardRegister.html">注册</a>
	<br>
	<a href="${pageContext.request.contextPath}/employee!forwardMypage.html">注册</a> --%>

</body>
</html>