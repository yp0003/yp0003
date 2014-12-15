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
		<div class="course-sidebar">
			<div class="course-sidebar-type lf-center">
				<a href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html">我的课程</a>
			</div>
			<div class="course-sidebar-type lf-center lf-default">
				<a href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">订单管理</a>
			</div>
			
			<div class="course-sidebar-type lf-center">
				<a href="certificate.html">我的证书</a>
			</div>
			<div class="course-sidebar-type lf-center">
				<a href="xxlist.html">消息列表<span class="red">(1)</span></a>
			</div>
		</div>
		<div class="course-content">
			<div class="tab">
			<div class="title">
				<ul class="fn-clear tab-ul">
					<li class="def tab-s" n="1">待付款</li>
					<li class="tab-s" n="2">已付款</li>
					<li class="tab-s" n="3">全部</li>

				</ul>
			</div>
			<div class="tj_1 sp fn-clear">
				
				  <div class="kc_tbl mt20 mb20" style="">
                    <ul class="container">
                    	<s:if test="orderList.size>0">
						<s:iterator value="orderList" id="order">
							<s:if test="#order.orderStatusDic.dicCode==0">							
							
							 <br/>
							  <li class="row">
                            <div class="photo">
                                <a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>" target="_blank">
                                    <img src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>" 
                                    	class="lazy_image"  data-original="" width="108px" height="82px" alt="<s:property value="#order.orderDetailList[0].product.productName"/>"/></a>
                            </div>
                            <div class="title">
                                <div class="name">
                                    <a href="/144281/intro" target="_blank"><s:property value="#order.orderDetailList[0].product.productName"/></a>
                                </div>
                                <div class="order">
                                    <span class="label">订单编号：<span class="oid"><s:property value="#order.orderId"/></span></span>
                                    <span class="label">下单时间：<span class="otime"><s:date name="#order.orderCreateTime"  format="yyyy-MM-dd"/></span></span>
                                </div>
                            </div>
                            <div class="price">
                                	￥<span class="num"><s:property value="#order.countPrice"/></span>
                            </div>
                            <div class="status">
                                <table>
                                    <tr>
                                        <td valign="middle" height="52"><span>  <s:property value="#order.orderStatusDic.dicCn"/> </span>&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="action">
                                <a href="" class="link_btn" name="goToPay" data-classid="144281" target="_blank" data-orderid="2954076">立即支付</a>
                                <a class="showOrderDetail" href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html" target="_blank">查看详情</a>
                                <br />
                                <a class="cancelOrder" href="${pageContext.request.contextPath}/mycenter!cancelOrder.html?order.id=<s:property value="#order.id"/>" name="cancelOrder"  data-orderid="2954076"> 取消</a>
                             
                            </div>
                        </li>
                        </s:if>
						</s:iterator>
 						</s:if>
 						<s:else>
 							    <span>暂无订单</span>
 						</s:else>
                    </ul>
                </div>
				
				
			</div>
			<div class="tj_2 sp fn-clear">
				   <div class="kc_tbl mt20 mb20" style="">
                    
                    <ul class="container">
						
                       <s:iterator value="orderList" id="order">
							<s:if test="#order.orderStatusDic.dicCode==1">
							
							
							 <br/>
							  <li class="row">
                            <div class="photo">
                                <a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>" target="_blank">
                                    <img src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>" 
                                    	class="lazy_image"  data-original="" width="108px" height="82px" alt="<s:property value="#order.orderDetailList[0].product.productName"/>"/></a>
                            </div>
                            <div class="title">
                                <div class="name">
                                    <a href="/144281/intro" target="_blank"><s:property value="#order.orderDetailList[0].product.productName"/></a>
                                </div>
                                <div class="order">
                                    <span class="label">订单编号：<span class="oid"><s:property value="#order.orderId"/></span></span>
                                    <span class="label">下单时间：<span class="otime"><s:date name="#order.orderCreateTime"  format="yyyy-MM-dd"/></span></span>
                                </div>
                            </div>
                            <div class="price">
                                	￥<span class="num"><s:property value="#order.countPrice"/></span>
                            </div>
                            <div class="status">
                                <table>
                                    <tr>
                                        <td valign="middle" height="52"><span>  <s:property value="#order.orderStatusDic.dicCn"/> </span>&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="action">
                                <a href="" class="link_btn" name="goToPay" data-classid="144281" target="_blank" data-orderid="2954076">立即支付</a>
                                <a class="showOrderDetail" href="" target="_blank">查看详情</a>
                                <br />
<%--                                 <a class="cancelOrder" href="${pageContext.request.contextPath}/mycenter!cancelOrder.html?order.id=<s:property value="#order.id"/>" name="cancelOrder"  data-orderid="2954076"> 取消</a> --%>
                                
                            </div>
                        </li>
                        </s:if>
						</s:iterator>
                        
                    </ul>
                </div>
				
			</div>
			<div class="tj_3 sp fn-clear">
				  <div class="kc_tbl mt20 mb20" style="">
                    
                    <ul class="container">

                       <s:iterator value="orderList" id="order">	
							
							 <br/>
							  <li class="row">
                            <div class="photo">
                                <a href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>" target="_blank">
                                    <img src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#order.orderDetailList[0].product.id"/>" 
                                    	class="lazy_image"  data-original="" width="108px" height="82px" alt="<s:property value="#order.orderDetailList[0].product.productName"/>"/></a>
                            </div>
                            <div class="title">
                                <div class="name">
                                    <a href="" target="_blank"><s:property value="#order.orderDetailList[0].product.productName"/></a>
                                </div>
                                <div class="order">
                                    <span class="label">订单编号：<span class="oid"><s:property value="#order.orderId"/></span></span>
                                    <span class="label">下单时间：<span class="otime"><s:date name="#order.orderCreateTime"  format="yyyy-MM-dd"/></span></span>
                                </div>
                            </div>
                            <div class="price">
                                	￥<span class="num"><s:property value="#order.countPrice"/></span>
                            </div>
                            <div class="status">
                                <table>
                                    <tr>
                                        <td valign="middle" height="52"><span>  <s:property value="#order.orderStatusDic.dicCn"/> </span>&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="action">
                            	 <s:if test="#order.orderStatusDic.dicCode==0">
                                	<a href="" class="link_btn" name="goToPay" data-classid="144281" target="_blank" data-orderid="2954076">立即支付</a>
                                  </s:if>
                                <a class="showOrderDetail" href="" target="_blank">查看详情</a>
                                <br />
                                <s:if test="#order.orderStatusDic.dicCode==0">
                                <a class="cancelOrder" href="${pageContext.request.contextPath}/mycenter!cancelOrder.html?order.id=<s:property value="#order.id"/>" name="cancelOrder"  data-orderid="2954076"> 取消</a>
                                </s:if>
                            </div>
                        </li>
                       
						</s:iterator>
                        
                    </ul>
                </div>
			</div>
		
		</div>		
		</div>
	</div>


	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>