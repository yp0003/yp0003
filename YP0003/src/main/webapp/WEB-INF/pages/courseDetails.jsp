<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<html lang="en">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Bootstrap</title> <!-- Le styles -->
		<link
			href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
			rel="stylesheet"/>
			<link
				href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
				rel="stylesheet"/>
				<link
					href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
					rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/info.css" rel="stylesheet"/>
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

		<div class="container1000" id="course_intro">
			<div class="course-title">
				<a href="list.html" class="back-btn"> 前端开发</a>
				<h1>案例：jQM Web App –列车时刻表</h1>
				<a href="javascript:void(0)" data-id="207"
					class="btn-add-collection js-btn-collection">关注此课程</a>
			</div>
			<div class="course_info">
				<div class="course_video">
					<div id="VideoCover">
						<img id="VideoCoverPic" width="600" height="338" alt=""
							src="http://img.mukewang.com/5428f42e000179f006000338-590-330.jpg" />


					</div>
					<div class="video" style="display: none">
						<div class="video_box" id="J_Video"></div>
					</div>
				</div>
				<div class="course_state">
					<ul>
						<li><span>报名人数</span> <em>3570</em></li>
						<li class="course_hour"><span>课程时长</span> <em
							class="ft-adjust"><span> 1</span>小时<span>32</span>分</em></li>
						<li><span>课程难度</span> <em>中级</em></li>
					</ul>
				</div>

				<div class="course_intro">
					<h3 class="course_notes">课程须知</h3>
					<div class="course_description">希望您了解jQuery
						Mobile的基本知识，或者具备jQuery知识，这样对课程学习会有很大帮助。</div>
					<div class="curse_btn">
						<a href="#">体验学习</a>
					</div>
				</div>
			</div>
			<div class="course_list">
				<div class="outline">
					<h3 class="chapter_introduces">课程介绍</h3>
					<div class="course_shortdecription">jQuery Mobile
						是创建移动WEB应用程序的框架，使用广泛。本课程通过一个列车时刻表的简单案例，讲解了jQMobile的页面、事件、按钮、图标、导航栏、网格、列表、表单、Ajax等主要组件的使用方法，通过案例学习，举一反三，基本上可以开发简单的Web
						App应用。</div>

					<h3 class="chapter_catalog">课程提纲</h3>
					<ul id="couList">
						<li class="clearfix open"><a href="#">
								<div class="openicon"></div>
								<div class="outline_list l">
									<!-- <em class="outline_zt"></em> -->
									<h5 class="outline_name">第1章 课程介绍</h5>
									<p class="outline_descr">jQuery Mobile 是创建移动 web
										应用程序的框架，使用广泛。本课程通过一个列车时刻表的简单案例，讲解了jQMobile的页面、事件、按钮、图标、导航栏、网格、列表、表单、Ajax等主要组件的使用方法，通过案例学习，举一反三，基本上可以开发简单的Web
										App应用。...</p>
								</div>
						</a></li>
						<li class="clearfix open"><a href="#">
								<div class="openicon"></div>
								<div class="outline_list l">
									<!-- <em class="outline_zt"></em> -->
									<h5 class="outline_name">第2章 jQuery Mobile 简介</h5>
									<p class="outline_descr">简单介绍jQuery Mobile框架</p>
								</div>
						</a></li>
						<li class="clearfix open"><a href="#">
								<div class="openicon"></div>
								<div class="outline_list l">
									<!-- <em class="outline_zt"></em> -->
									<h5 class="outline_name">第3章 jQuery Mobile 页面</h5>
									<p class="outline_descr">jQuery Mobile 依赖 HTML5 data-*
										属性来支持各种 UI 元素、过渡和页面结构。介绍页面结构和元素的解释、定义多个页面、页面导航和跳转。</p>
								</div>
						</a></li>
						<li class="clearfix open"><a href="#">
								<div class="openicon"></div>
								<div class="outline_list l">
									<!-- <em class="outline_zt"></em> -->
									<h5 class="outline_name">第4章 jQuery Mobile 组件</h5>
									<p class="outline_descr">讲解jQuery Mobile
										按钮、导航栏、列表、表单、事件使用及调整。</p>
								</div>
						</a></li>
						<li class="clearfix open"><a href="#">
								<div class="openicon"></div>
								<div class="outline_list l">
									<!-- <em class="outline_zt"></em> -->
									<h5 class="outline_name">第5章 jQuery Mobile Ajax</h5>
									<p class="outline_descr">介绍jQuery
										Mobile的Ajax使用，常见的跨域解决方式和简单的解决方式。</p>
								</div>
						</a></li>
						<li class="clearfix open"><a href="#">
								<div class="openicon"></div>
								<div class="outline_list l">
									<!-- <em class="outline_zt"></em> -->
									<h5 class="outline_name">第6章 页面逻辑连通</h5>
									<p class="outline_descr">介绍如何将前面的功能串联起来，使页面逻辑连联，实现app应用。</p>
								</div>
						</a></li>
					</ul>
				</div>
				<div class="course_right">
					<dl>
						<dt>授课老师</dt>
						<dd>
							<div class="course_teacher">
								<a href="#" class="teacer_pic"><img
									src='http://img.mukewang.com/user/544a17d60001434101400140-80-80.jpg'
									width='80' height='80' /></a>
								<h3>
									<a href="#">WayneJiang</a> <span class="teacher_icon"></span>
								</h3>
								<p>Web前端工程师</p>
								<br class="clear" />
								<div class="discrip autowrap">资深UI+前端+架构，Woorich联合创始人、CTO，Veizen创始人，前后端开发、敏捷过程、项目管理经验丰富；爱技术，爱创业，爱一切新事物，玩过乐队，喜欢折腾！</div>
							</div>
						</dd>
					</dl>
					<dl>
						<dt>老师告诉你能学到什么？</dt>
						<dd>
							<pre class="wrd_break">通过案例的学习，让您对jQuery Mobile有整体的了解，及页面、事件、按钮、图标、导航栏、网格、列表、表单、Ajax等主要组件的使用方法。</pre>
						</dd>
					</dl>
					<!-- <dl>
          <dt>课程须知</dt>
          <dd><pre class="wrd_break">希望您了解jQuery Mobile的基本知识，或者具备jQuery知识，这样对课程学习会有很大帮助。</pre></dd>
        </dl> -->
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
			<a href="#">Glyphicons Free</a> licensed under <a href="#">CC BY
			</a>.
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