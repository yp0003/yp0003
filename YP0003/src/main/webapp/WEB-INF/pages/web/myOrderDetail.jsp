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
<link href="${pageContext.request.contextPath}/css/orderDetail.css" rel="stylesheet">
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
<!-- 		<div class="course-sidebar"> -->
<!-- 			<div class="course-sidebar-type lf-center"> -->
<%-- 				<a href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html">我的课程</a> --%>
<!-- 			</div> -->
<!-- 			<div class="course-sidebar-type lf-center lf-default"> -->
<%-- 				<a href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">订单管理</a> --%>
<!-- 			</div> -->
			
<!-- 			<div class="course-sidebar-type lf-center"> -->
<!-- 				<a href="certificate.html">我的证书</a> -->
<!-- 			</div> -->
<!-- 			<div class="course-sidebar-type lf-center"> -->
<%-- 				<a href="xxlist.html">消息列表<span class="red">(1)</span></a> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="black"></div>
		<div class="course-content course-content2">
			 <div class="order_detail">
                    <div class="child_tab">
                        <a href="/xb/classorder/">课程订单</a> &gt; <a class="selected">订单详情</a>
                    </div>
                    <div class="order_info">
                        <div class="order">
                            <span class="label1">订单编号：<span class="oid"><s:property value="order.orderId"/></span></span><br />
                            <span class="label1">下单时间：<span class="otime"><s:date name="order.orderCreateTime"  format="yyyy-MM-dd hh:mm:ss"/></span></span>
                        </div>
                        <div class="price">
                            <span class="label1">订单金额：<span style="font-size: 13px;">￥</span><span class="num"><s:property value="order.countPrice"/></span><span> </span></span>
                        </div>
                        <div class="status">
                            <span class="label1">订单状态：
                                
                                <span><s:property value="order.orderStatusDic.dicCn"/></span>
                                
                        </div>
                        <div class="action">
                            <s:if test="order.orderStatusDic.dicCode==0"><!-- 未支付 -->
                              <a class="link_btn" target="_blank" href="/pay!pay.html?id=<s:property value="order.id"/>">立即支付</a>
                            </s:if>
                          	<s:elseif test="order.orderStatusDic.dicCode==2">
                          	 <a class="link_btn" target="_blank" href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html?order.id=<s:property value="order.id"/>">再次购买</a>
                          	</s:elseif>
                            <s:else>
                            	<span class="label1">交易成功</span>
                            </s:else>
                        </div>
                        <hr class="clearfix" />
                    </div>
                    <div class="kc_info">
                        <h2 class="title">课程信息</h2>
                        <div class="content1">
                            <div class="thead">
                                <span class="base">课程信息</span> <span class="num">&nbsp;</span> <span class="orign_price">课程单价</span>
                            </div>
                            <div class="tbody">
                                <div class="base">
                                    <div class="photo">
                                        <a href="/144281/intro" target="_blank">
                                            <img alt="" width="168px" height="108px" src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="order.orderDetailList[0].product.id"/>" /></a>
                                    </div>
                                    <div class="detail">
                                        <h3 class="name"><a href="/144281/intro" target="_blank"><s:property value="order.orderDetailList[0].product.productName"/></a></h3>
                                        <div class="list">
                                            <div class="label1">课时：<span class="hour"><s:property value="order.orderDetailList[0].product.productLang"/></span> 课时</div>
                                            <div class="label1">老师：<span class="teacher"><s:property value="teacher.employeeName"/></span> </div>
<!--                                             <div class="label1"> -->
<%--                                                 	时间：<span class="date">2014.12.16-2016.04.22</span> --%>
<!--                                             </div> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="count">
                                    <span class="num">&nbsp;</span>
                                </div>
                                <div class="orign_price">
                                    <span class="detailpricehead">￥</span><span><b class="num"><s:property value="order.countPrice"/></b> </span>
                                </div>
                            </div>

                        </div>
                        <hr class="clearfix" />
                    </div>
                    <div class="zf_info">
                        <h2 class="title">支付信息</h2>
                        <div class="list">

                            
                            <div class="row1">
                                <span class="label1">折扣</span>
                                <span class="content1"><span class="dkpricehead">-￥</span><span class="num">-00</span> </span>
                            </div>
                            
                        </div>
                        <div class="sum">
                            <span class="label1">订单金额：</span> <span class="ordersuretip fl">￥</span><span class="num"><s:property value="order.countPrice"/></span> <span class="yuan"></span>
                        </div>
                    </div>
                    <hr class="clearfix" />
                    
                </div>
                
            </div>
            <div class="black"></div>
        </div>
   


	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>