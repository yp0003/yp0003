<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/test.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/right.css" rel="stylesheet">
<!-- link script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

<script>
	var _hmt = _hmt || [];
</script>
<title>订单管理</title>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="../common/commonHeader.jsp"%>

<br/>
<div class="container">
<%@ include file="common/commonRight.jsp"%>

 <div class="mymain-content l " style="margin-left: 20px;">
        <div class="myspace-list l " style="float: left;">
           <a href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html" class="myspace-course"><span>订单</span></a>
           <a href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html" class="myspace-plan"><span>课程</span></a>
           <a href="${pageContext.request.contextPath}/mycenter!forwardMyMessage.html" class="myspace-ques "><span>消息</span></a>
<%--            <a href="#" class="myspace-note "><span>设置</span></a> --%>
        </div>
        
		<div class="myspace-courselist myspace-bg r"> 
		
			  <div class="main-bd "><!-- clearfix -->
					    <div class="space-tabs-menu">
					                        <ul>
					    <li><a href="" class="curr">我的课程</a></li>	
					    </ul>
					    
							<div style="left:0px" class="dot-curr"></div>
					    </div>
				      <div class="uncode">
					      <div class="course-content course-content1">
				<div class="course-list">
				<div class="js-course-list">
					<ul>
						<s:iterator value="myProductList" id="myProduct">
							<li><a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#myProduct.product.id"/>">
								<div class="course-list-img">
									<img width="280" height="160"
										src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#myProduct.product.id"/>"
										alt="<s:property value="#myProduct.product.productName"/>"/>
								</div>
								<h5><span class="topicon"> <s:property value="#myProduct.product.productName"/> </span></h5>
								<div class="intro">
									<p><s:property value="#myProduct.product.productKnows"/></p>
									<span class="l">更新至<s:property value="#myProduct.product.updateBadge"/>-<s:property value="#myProduct.product.updateMatter"/></span> 
									<span class="r">课程时长：<s:property value="#myProduct.product.productLang"/></span>
								</div>
								<div class="tips">
									<span class="l"><s:date name="#pl.updateTime" format="yyyy-MM-dd" />更新</span> <span class="r"><s:property value="#myProduct.product.buyCount"/>人学习</span>
								</div>
						</a>
							<div class="shop">
								<span><a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#myProduct.product.id"/>">
									<button class="btn"  type="button">查看我的课程详情</button>
									</a>
									</span> 
<%--                                 <span><a href="${pageContext.request.contextPath}/order!forwardSureOrder.html?product.id=${pl.id}"> --%>
<!--                                 	<button class="btn" type="button">立即购买</button> -->
<%-- 										</a></span> --%>
							</div>
							</li>
						</s:iterator>

					</ul>
				</div>
			</div>
		</div>
				    </div>
			    
			  </div>
		</div>

    
  </div>
		
		
	</div>


	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>