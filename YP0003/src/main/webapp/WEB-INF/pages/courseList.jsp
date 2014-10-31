<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Bootstrap</title>
<!-- Le styles -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet"/>
</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar">

	<!-- Navbar
    ================================================== -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<div class="nav-collapse collapse">
					<!--
           <a class="brand" href="./index.html">注册</a> |
           <a class="brand" href="./index.html">登录</a>
	-->
					<a class="brand" href="./index.html">我的订单</a> <a class="brand"
						href="./index.html">购物车</a> <a class="brand" href="./index.html">个人中心</a>
					<ul class="nav">
						<li class="active"><a href="./index.html">课程</a></li>
						<li class=""><a href="#">问答</a></li>
						<li class=""><a href="#">求课</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 程序包含结束 -->


<div id="main">

    <div class="container">
        <div class="course-sidebar">
            <div class="course-sidebar-type">
                <div class="course-sidebar-menu">
                    <ul>
                        <li><a class="curr" href="javascript:void(0)">课程库</a></li>
                        <li><a href="javascript:void(0)">职位</a></li>
                    </ul>
                    <div class="dot-curr"></div>
                </div>
                <div class="course-sidebar-tabs">
                    <ul class="js-sidebar-lang">
                        <li><a data-id="0" class="curr" href="javascript:void(0)">全部</a></li>
                                                      <li><a data-id="1" href="javascript:void(0)">PHP</a></li>
                                                      <li><a data-id="223" href="javascript:void(0)">Android</a></li>
                                                      <li><a data-id="957" href="javascript:void(0)">Swift</a></li>
                                                      <li><a data-id="1118" href="javascript:void(0)">Python</a></li>
                                                      <li><a data-id="221" href="javascript:void(0)">Html5</a></li>
                                                      <li><a data-id="220" href="javascript:void(0)">JAVA</a></li>
                                                      <li><a data-id="222" href="javascript:void(0)">Node.js</a></li>
                                                      <li><a data-id="955" href="javascript:void(0)">iOS</a></li>
                                                      <li><a data-id="56" href="javascript:void(0)">CSS</a></li>
                                                      <li><a data-id="7" href="javascript:void(0)">HTML</a></li>
                                                      <li><a data-id="44" href="javascript:void(0)">JavaScript</a></li>
                                                      <li><a data-id="219" href="javascript:void(0)">jQuery</a></li>
                                                      <li><a data-id="952" href="javascript:void(0)">MySQL</a></li>
                                                      <li><a data-id="468" href="javascript:void(0)">Linux</a></li>
                                                      <li><a data-id="958" href="javascript:void(0)">MongoDB</a></li>
                                                      <li><a data-id="953" href="javascript:void(0)">Photoshop</a></li>
                                                      <li><a data-id="956" href="javascript:void(0)">Maya</a></li>
                                                      <li><a data-id="954" href="javascript:void(0)">Premiere</a></li>
                                                  
                    </ul>
                    <ul class="course-sidebar-job js-sidebar-job" style="display:none">
                        <li><a data-id="0" class="curr" href="javascript:void(0)">全部</a></li>
                                                                   <li><a data-id="6" href="javascript:void(0)">Android<br>开发工程师</a></li>
                                              <li><a data-id="2" href="javascript:void(0)">前端开发<br>工程师</a></li>
                                              <li><a data-id="1" href="javascript:void(0)">PHP<br>开发工程师</a></li>
                                              <li><a data-id="5" href="javascript:void(0)">JAVA<br>开发工程师</a></li>
                                              <li><a data-id="8" href="javascript:void(0)">iOS<br>开发工程师</a></li>
                                              <li><a data-id="10" href="javascript:void(0)">多媒体<br>设计师</a></li>
                                          
                    </ul>
					<div style="clear:both"></div>
				</div>
                <dl class="course-sidebar-level js-sidebar-level">
                    <dt>难度</dt>
                    <dd><a data-id="0" class="curr" href="javascript:void(0)">全部</a></dd>
                                              <dd><a data-id="1" href="javascript:void(0)">初级</a></dd>
                                              <dd><a data-id="2" href="javascript:void(0)">中级</a></dd>
                                              <dd><a data-id="3" href="javascript:void(0)">高级</a></dd>
                                          
                </dl>
            </div>
			<form action="#" method="post">
			<div class="control-group">
				<div class="controls">
					<div class="input-prepend" id="sub">
						<span class="add-on"><i class="icon-search"></i></span>
						<input class="span2" id="inputIcon" type="text">
					</div>
					<span style="height:45px; display:inline-block; margin-bottom:10px;">
					<button class="btn btn-success" type="submit" >搜索</button>
					</span>
				</div>
			</div>
			
			</form>
            <a href="#" class="course-sidebar-program">
                学习计划
            </a>
        </div>
        <div class="course-content">
            <div class="course-tools">
                <h2>全部课程</h2>
                                <ul class="js-tool-sort">
                    <li><a class="curr" data-id="last" href="javascript:void(0)">最新</a></li>
                    <li><a href="javascript:void(0)" data-id="pop">最热</a></li>
                </ul>
                <div class="dot-tool-curr"></div>
            </div>
            <div class="course-list">
                <div class="js-course-list">
					<ul>
					
						<li>
							<div class="course-list-img">
								<img width="280" height="160" src="image/53e4ba4c0001f2d206000338-590-330.jpg" alt="案例：文件传输基础——Java IO流"></img>
							</div>
							<h5>
								<span class="topicon">
									案例：文件传输基础——Java I..
								</span>
							</h5>
							<div class="intro">
								<p>通过大量的案例为您介绍JAVA中的IO流的使用。</p>
								<span class="l">更新至6-3</span>
								<span class="r">课程时长：2小时0分</span>
							</div>
							<div class="tips">
								<span class="l">2014-09-16更新</span>
								<span class="r">4022人学习</span>							
							</div>
							</a>
						</li>
					</ul>
				</div>
            </div>
        </div>
    </div>
  </div>
  <!-- Footer -->
	<footer class="footer">
		<div class="container">
			<p>
				<a href="#">求课网欢迎您的到来</a>
			</p>
			<p>
				<a href="#">求课网欢迎您的到来求课网欢迎您的到来求课网欢迎您的到来</a>
			</p>
			
			<p>
				<a href="#">Glyphicons Free</a> licensed under <a
					href="#">CC BY </a>.
			</p>
			<ul class="footer-links">
				<li>求课网欢迎您的到来</li>
				<li class="muted">求课网欢迎您的到来</li>
				<li>求课网欢迎您的到来</li>
				<li>求课网欢迎您的到来</li>
			</ul>
		</div>
	</footer>
</body>
</html>
