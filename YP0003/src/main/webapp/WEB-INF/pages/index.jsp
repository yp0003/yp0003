<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8" />
<title>365IT教育学院中文网</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="robots" content="index,follow" />
<meta name="application-name" content="bootcss.com" />
<meta property="qc:admins" content="1603466166416277433363757477167" />

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
<title>365ITEDU</title>
<script type="text/javascript">
	$(document).ready(function() {

	});
	function reImg() {
		$("#vertImg").attr(
				"src",
				"${pageContext.request.contextPath}/system!validateCode.html?time="
						+ new Date());
	}
</script>
</head>
<body>

	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>


	<div class="jumbotron masthead">
		<div class="container">
			<h1>365IT教育学院</h1>
			<h2>365IT教育学院让开发变得更迅速、简单。</h2>
			<p class="masthead-button-links">
				<a class="btn btn-lg btn-primary btn-shadow"
					href="${pageContext.request.contextPath}/product!forwardProductList.html" role="button"
					se_prerender_url="complete">立即选课</a>
			</p>
		</div>
	</div>

	<div class="bc-social">
		<div class="container">
			<ul class="bc-social-buttons">
				<li class="social-qq"><i class="fa fa-qq"></i>
					365IT教育学院技术交流群：378248068</li>
				<li class="social-forum"><a class=""
					href="http://wenda.bootcss.com/" title="Bootstrap问答社区"
					target="_blank"> <i class="fa fa-comments"></i> 365IT教育学院问答社区
				</a></li>
				<li class="social-weibo"><a href="http://weibo.com/bootcss"
					title="365IT教育学院官方微博" target="_blank" se_prerender_url="complete"><i
						class="fa fa-weibo"></i> 新浪微博：@365IT教育学院</a></li>
			</ul>
		</div>
	</div>




	<div class="container projects">
		<div class="projects-header page-header">
			<h2>优质课程推荐</h2>
			<p>让您的课余生活更加丰富，让您的知识更加完整</p>
		</div>

		<div class="row">

			<div class="col-sm-6 col-md-4 col-lg-4 ">
				<div class="thumbnail">
					<a href="http://codeguide.bootcss.com/" title="Bootstrap 编码规范"><img
						class="lazy" src="${pageContext.request.contextPath}/bootstarp/image/codeguide.png" width="300"
						height="150"
						data-src="http://static.bootcss.com/www/assets/img/codeguide.png"
						alt="Headroom.js"></a>
					<div class="caption">
						<h3>
							<a href="http://codeguide.bootcss.com/"
								title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。">Bootstrap
								编码规范<br><small>by @mdo</small>
							</a>
						</h3>
						<p>Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-4 ">
				<div class="thumbnail">
					<a href="http://job.bootcss.com/"
						title="Bootstrap中文网携手猎聘网共同为码农打造的高薪工作直达频道。好工作都在这里啦！"><img
						class="lazy" src="${pageContext.request.contextPath}/bootstarp/image/bootstrap-jobs.png"
						width="300" height="150"
						data-src="http://static.bootcss.com/www/assets/img/bootstrap-jobs.png"
						alt="招聘求职"></a>
					<div class="caption">
						<h3>
							<a href="http://job.bootcss.com/"
								title="Bootstrap中文网携手猎聘网共同为码农打造的高薪工作直达频道。好工作都在这里啦">招聘求职<br><small>高薪工作</small></a>
						</h3>
						<p>Bootstrap中文网携手猎聘网共同为码农打造的高薪工作直达频道。好工作都在这里啦！</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-4 ">
				<div class="thumbnail">
					<a href="http://www.bootcdn.cn/" title="PDO—数据库抽象层"><img
						class="lazy" src="${pageContext.request.contextPath}/bootstarp/image/opencdn.png" width="300"
						height="150"
						data-src="http://static.bootcss.com/www/assets/img/opencdn.png"
						alt="Open CDN"></a>
					<div class="caption">
						<h3>
							<a href="http://www.bootcdn.cn/" title="PDO—数据库抽象层">Open CDN<br><small>PDO—数据库抽象层</small></a>
						</h3>
						<p>PDO扩展为PHP访问数据库定义了一个轻量级的、一致性的接口</p>
					</div>
				</div>
			</div>	
		
		<!-- /.container -->
	<!-- 头部 -->
	<%@ include file="common/commonFooter.jsp"%>
</body>
</html>