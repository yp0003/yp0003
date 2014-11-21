<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>课程详情</title>
<!-- Site CSS -->
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="http://static.bootcss.com/www/assets/css/site.min.css?v3"
	rel="stylesheet" />

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed"
	href="http://static.bootcss.com/www/assets/ico/apple-touch-icon-precomposed.png" />
<link rel="shortcut icon"
	href="http://static.bootcss.com/www/assets/ico/favicon.png" />


<script
	src="${pageContext.request.contextPath}/bootstarp/js/jquery.min.js"></script>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" />
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstrap.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js" />
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/jquery.unveil.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/jquery.scrollUp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/toc.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/site.min.js"></script>

<script>
	var _hmt = _hmt || [];
</script>
</head>
<body>
	<%@ include file="common/common.jsp"%>
	<%-- <div id="main" class="mt49">
		<div class="container1000" id="course_intro">
			<div class="course-title">
				<a href="list.html" class="back-btn">前端开发</a>
				<h1>${product.productName}</h1>
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
						<li><span>报名人数</span> <em>${product.buyCount}</em></li>
						<li class="course_hour"><span>课程时长</span> <em
							class="ft-adjust">${product.productLang}分</em></li>
						<li><span>课程难度</span> <em>中级</em></li>
					</ul>
				</div>

				<div class="course_intro">
					<h3 class="course_notes">课程须知</h3>
					<div class="course_description">${product.productKnows}</div>
					<div class="curse_btn">
						<a
							href="${pageContext.request.contextPath}/order!addBuyCar.html?product.id=${product.id}">加入购物车</a>
					</div>
				</div>
			</div>
			<div class="course_list">
				<div class="outline">
					<h3 class="chapter_introduces">课程介绍</h3>
					<div class="course_shortdecription">${product.productDesc}</div>
					<h3 class="chapter_introduces">授课老师</h3>
					<div>
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
					</div>

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
			</div>
			
		</div>
	</div> --%>





	<div class="container-fluid" style="width: 80%; margin-top: 50px;">
		<div class="row">
			<div class="col-lg-12">

				<div class="col-lg-5">
					<h1>课程类别>java</h1>
					<a href="#" class="thumbnail"> <img
						src="http://img.mukewang.com/5428f42e000179f006000338-590-330.jpg"
						alt="..."></a>
				</div>

				<div class="col-lg-7">
					<h1 class="page-header">课程名称</h1>

					<div class="row">
						<div class="col-lg-2">
							<h4>
								<span class="label label-default">课程分类</span>
							</h4>
						</div>
						<div class="col-lg-10">
							<h4>中级</h4>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-2">
							<h4>
								<span class="label label-default">课程难度</span>
							</h4>
						</div>
						<div class="col-lg-10">
							<h4>中级</h4>
						</div>
					</div>


					<div class="row">
						<div class="col-lg-2">
							<h4>
								<span class="label label-default">更新章节</span>
							</h4>
						</div>
						<div class="col-lg-10">
							<h4>1章2节</h4>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-2">
							<h4>
								<span class="label label-default">更新时间</span>
							</h4>
						</div>
						<div class="col-lg-10">
							<h4>2014-11-11 11:11:11</h4>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-2">
							<h4>
								<span class="label label-default">课程价格</span>
							</h4>
						</div>
						<div class="col-lg-10">
							<h4>￥100</h4>
						</div>
					</div>


					<div class="row">
						<div class="col-lg-2">
							<a
								href="${pageContext.request.contextPath}/order!addBuyCar.html?product.id=${pl.id}"><button
									type="button" class="btn btn-danger" style="float: left;">加入购物车</button>
							</a>
						</div>
						<div class="col-lg-2">
							<a
								href="${pageContext.request.contextPath}/order!payProductOnlyOne.html?product.id=${pl.id}"><button
									type="button" class="btn btn-danger" style="float: right;">直接结算</button></a>
						</div>
					</div>



				</div>



			</div>




		</div>


		<%-- <div class="row">

			<div class="col-lg-2 col-lg-offset-5">
				<a
					href="${pageContext.request.contextPath}/order!addBuyCar.html?product.id=${pl.id}"><button
						type="button" class="btn btn-danger" style="float: left;">加入购物车</button>
				</a> &nbsp; <a
					href="${pageContext.request.contextPath}/order!payProductOnlyOne.html?product.id=${pl.id}"><button
						type="button" class="btn btn-danger" style="float: right;">直接结算</button></a>
			</div>
		</div> --%>

		<div class="row">

			<div class="col-lg-9">
				<h1 class="page-header">课程简介</h1>
				<p>
					课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介
				</p>
				<h1 class="page-header">教师团队</h1>
				<p>
					课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介
				</p>
				<h1 class="page-header">课程精彩截图</h1>
				<p>
					课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介
					<a href="#" class="thumbnail"> <img
						src="http://img.mukewang.com/5428f42e000179f006000338-590-330.jpg"
						alt="..."></a> <a href="#" class="thumbnail"> <img
						src="http://img.mukewang.com/5428f42e000179f006000338-590-330.jpg"
						alt="..."></a> <a href="#" class="thumbnail"> <img
						src="http://img.mukewang.com/5428f42e000179f006000338-590-330.jpg"
						alt="..."></a>
				</p>

			</div>

			<div class="col-lg-3">
				<h1 class="page-header">我要评价</h1>
				<label class="radio-inline"> <input type="radio"
					name="inlineRadioOptions" id="inlineRadio1" value="option1">
						好评 </label> <label class="radio-inline"> <input type="radio"
					name="inlineRadioOptions" id="inlineRadio2" value="option2">
						中评 </label> <label class="radio-inline"> <input type="radio"
					name="inlineRadioOptions" id="inlineRadio3" value="option3">
						差评 </label>
				<textarea class="form-control" rows="5"></textarea>
				<h1 class="page-header">学员动态</h1>

			</div>
		</div>



	</div>
	</div>
	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>