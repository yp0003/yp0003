<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Bootstrap</title>
<!-- Le styles -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/base.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" />


<!-- link script -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="common/common.jsp"%>
	<div id="main" class="mt49">

		<div class="container1000" id="course_intro">
			<div class="course-title">
				<a href="list.html" class="back-btn"> 前端开发</a>
				<h1>${product.productName}</h1>
				<a href="javascript:void(0)" data-id="207"
					class="btn-add-collection js-btn-collection">关注此课程</a>
			</div>
			<div class="course_info">
				<div class="course_video">
					<div id="VideoCover">
						<img id="VideoCoverPic" width="600" height="338" alt=""
							src="http://img.mukewang.com/5428f42e000179f006000338-590-330.jpg" />


					</div>
					<div class="video" style="display:none">
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
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home"
							role="tab" data-toggle="tab">课程详情</a></li>
						<li role="presentation"><a href="#profile" role="tab"
							data-toggle="tab">课程截图</a></li>
						<li role="presentation"><a href="#messages" role="tab"
							data-toggle="tab">课程评论</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="home">11111111111111111111111111111</div>
						<div role="tabpanel" class="tab-pane" id="profile">222222222222222222222222</div>
						<div role="tabpanel" class="tab-pane" id="messages">333333333333333333333333</div>
					</div>

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
					<dl>
						<dt>课程须知</dt>
						<dd>
							<pre class="wrd_break">希望您了解jQuery Mobile的基本知识，或者具备jQuery知识，这样对课程学习会有很大帮助。</pre>
						</dd>
					</dl>
				</div>
			</div>
		</div>

	</div>
</body>
</html>