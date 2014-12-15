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
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">


<!-- link script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
</head>
<!-- Navbar
    ================================================== -->
<%@ include file="../common/commonHeader.jsp"%>
<!-- 程序包含结束 -->

<div id="main" class="mt49">

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
<!-- 				<dl class="course-sidebar-level js-sidebar-level"> -->
<!-- 					<dt>难度</dt> -->
<!-- 						<dd> -->
<!-- 								<a data-id="" class="curr" href="javascript:void(0)">全部</a> -->
<!-- 						</dd> -->
<%-- 						<s:iterator value="productLevelList" id="level"> --%>
<!-- 							<dd> -->
<%-- 								<a data-id="${level.id}"  --%>
<%-- 									href="${pageContext.request.contextPath}/product!forwardProductList.html?product.id=${kind.id}">初级</a> --%>
<!-- 							</dd> -->
<%-- 						</s:iterator> --%>

<!-- 				</dl> -->
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
</div>
<!-- Footer -->
<%@ include file="../common/commonFooter.jsp"%>



</body>
</html>
