<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 程序包含开始 -->
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>365ITEDU网</title>
<!-- link css -->
<%-- <link href="${pageContext.request.contextPath}/css/mycustomer.css" rel="stylesheet" type="text/css" /> --%>
<%-- <link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">


<!-- link script -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
<![endif]-->

<!-- Le fav and touch icons --> --%>


<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<!-- Navbar
    ================================================== -->
<%@ include file="../common/commonHeader.jsp"%>
<!-- 程序包含结束 -->

<%-- <div id="main" class="mt49">

	<div class="container">
		<div class="course-sidebar">
			<div class="course-sidebar-type">
				<div class="course-sidebar-menu">
					<ul>
						<li><a class="curr" href="javascript:void(0)">课程库</a></li>
						<li><a href="javascript:void(0)"></a></li>
					</ul>
					<div class="dot-curr"></div>
				</div>
				<div class="course-sidebar-tabs">
					<ul class="js-sidebar-lang">
<!-- 						<li><a data-id="0" class="curr" href="javascript:void(0)">全部</a></li> -->
						<s:iterator value="productKindList" id="kind">
							<li>
								<s:if test="#kind.selected==true" >
									<a data-id="${kind.id}"  class="curr"
									href="${pageContext.request.contextPath}/product!forwardProductList.html?pkind.id=${kind.id}">
									${kind.productKind}</a>
								</s:if>
								<s:else>
									<a data-id="${kind.id}" 
									href="${pageContext.request.contextPath}/product!forwardProductList.html?pkind.id=${kind.id}">
									${kind.productKind}</a>
								</s:else>
							</li>
						</s:iterator>


					</ul>
					<ul class="course-sidebar-job js-sidebar-job" style="display: none">
						<li><a data-id="0" class="curr" href="javascript:void(0)">全部</a></li>
						<li><a data-id="6" href="javascript:void(0)">Android<br>开发工程师
						</a></li>
						<li><a data-id="2" href="javascript:void(0)">前端开发<br>工程师
						</a></li>
						<li><a data-id="1" href="javascript:void(0)">PHP<br>开发工程师
						</a></li>
						<li><a data-id="5" href="javascript:void(0)">JAVA<br>开发工程师
						</a></li>
						<li><a data-id="8" href="javascript:void(0)">iOS<br>开发工程师
						</a></li>
						<li><a data-id="10" href="javascript:void(0)">多媒体<br>设计师
						</a></li>

					</ul>
					<div style="clear: both"></div>
				</div>
			</div>
			<form action="${pageContext.request.contextPath}/product!forwardProductList.html" method="post">
				<div class="control-group">
					<div class="controls">
						<div class="input-prepend" id="sub">
							<span class="add-on"><i class="icon-search"></i></span> 
							<input class="span2" id="inputIcon" type="text" name="product.productName" value="${product.productName}">
						</div>
						<span
							style="height: 45px; display: inline-block; margin-bottom: 10px;">
							<button class="btn btn-success" type="submit">搜索</button>
						</span>
					</div>
				</div>

			</form>
			<a href="#" class="course-sidebar-program"> 学习计划 </a>
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
						<s:iterator value="productList" id="pl">
							<li><a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=${pl.id}">
								<div class="course-list-img">
									<img width="280" height="160"
										src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${pl.id}"
										alt="${pl.productName}"/>
								</div>
								<h5><span class="topicon"> ${pl.productName} </span></h5>
								<div class="intro">
									<p>${pl.productKnows}</p>
									<span class="l">更新至${pl.updateBadge}-${pl.updateMatter}</span> 
									<span class="r">课程时长：${pl.productLang}</span>
								</div>
								<div class="tips">
									<span class="l"><s:date name="#pl.updateTime" format="yyyy-MM-dd" />更新</span> <span class="r">${pl.buyCount}人学习</span>
								</div>
						</a>
							<div class="shop">
								<span><a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=${pl.id}">
									<button class="btn" >查看课程详情</button>
									</a>
									</span> 
                                <span><a href="${pageContext.request.contextPath}/order!forwardSureOrder.html?product.id=${pl.id}">
                                	<button class="btn" type="button">立即购买</button>
										</a></span>
							</div></li>
						</s:iterator>

					</ul>
				</div>
			</div>
		
		</div>
	</div>
</div> --%>









<div class="container" style="padding-top: 50px;">

	<div class="row">

































		<div class="col-md-4">

			<div class="row">
				<div class="col-md-12">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">课程分类</h3>
						</div>
						<div class="panel-body">
							<div class="list-group">
								<a href="#" class="list-group-item active">全部分类</a>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<div class="col-md-8">

			<div class="row">

				<div class="col-md-12">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">课程列表</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<s:iterator value="productList" id="pl">
									<div class="col-md-4">


										<div class="thumbnail">
											<img data-src="holder.js/100%x200" alt="100%x200"
												style="height: 200px; width: 100%; display: block;"
												src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${pl.id}"
												data-holder-rendered="true">
											<div class="caption">
												<h3 id="thumbnail-label">
													${pl.productName}<a class="anchorjs-link"
														href="#thumbnail-label"><span class="anchorjs-icon"></span></a>
												</h3>


												<p>${pl.productKnows}</p>


												<p>
													<a
														href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=${pl.id}"
														class="btn btn-default" role="button">查看详情</a> <a
														href="${pageContext.request.contextPath}/order!forwardSureOrder.html?product.id=${pl.id}"
														class="btn btn-primary" role="button">立即购买</a>
												</p>
											</div>
										</div>

									</div>

								</s:iterator>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>



</div>










<!-- Footer -->
<%-- <%@ include file="../common/commonFooter.jsp"%> --%>


<div id="footer">
	<nav class="navbar navbar-default navbar-bottom">
		<div class="navbar-inner navbar-content-center">
			<p class="text-muted credit" style="padding: 10px;">
			<div class="container">
				<p>
					<a href="#">365IT学院欢迎您的到来</a>
				</p>
				<ul class="footer-links">
					<li class="muted"><a href="#">关于我们|</a></li>
					<li><a href="#">广告合作|</a></li>
					<li><a
						href="${pageContext.request.contextPath}/oalogin!forwardLogin.html">后台入口|</a></li>
					<li><a href="#" title="365IT学院官方微博" target="_blank">新浪微博|</a></li>
					<li><a href="#">电子邮件|</a></li>
				</ul>
				<p>沪ICP备13043409号-1</p>
			</div>
			</p>
		</div>
	</nav>
	</body>
</html>
