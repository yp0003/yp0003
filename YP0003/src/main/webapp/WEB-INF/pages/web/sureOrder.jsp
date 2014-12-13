<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>确认订单</title>
</head>
<body>
<%@ include file="../common/commonHeader.jsp"%>

<div class="content">
   <div class="cidnav">
   		    <ul>                
                <li><span class="orther">付款</span></li>     
                 <li><span>></span></li>                
                <li><span class="cidcolor">确认订单信息</span></li> 
 			    <li><span>></span></li>                
                <li><span class="orther">选课</span></li>
            </ul>
   </div>
   <div style="clear:both"></div>
   <div class="line"></div>
   <div>
       <div class="queren">
            核对商品信息
       </div>
         <div id="class_info" class="class_info" data-classid="146555" data-orgnprice="13200.0" data-price="9240.0" data-activity="true" data-isdiscount="True">
                        <div class="class_summary">
                            <div class="class_img">
                                <a target="_blank" class="title" href="/146555/intro/">
                                    <img class="photo" src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${product.id}" alt="" /></a>
                            </div>
                            <div class="class_des">
                                <h3 class="class_tit">
                                    <a target="_blank" class="title" href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=${product.id}">${product.productName}</a>
                                </h3>
                                <p class="row">时长：<span class="text">${product.productLang}</span></p>
                                <p class="row">老师：<span class="text">${employee.employeeName}</span></p>
                                <p class="row">
                                 	   时间：<span class="text"><s:date name="#product.onlineTime" format="yyyy-MM-dd" />-<s:date name="#product.offlineTime" format="yyyy-MM-dd" /></span>
                                </p>
                            </div>
                        </div>

                
                        <hr class="clearfix" />
                    </div>
        <div class="contable">
         
        </div>
<!--     	 <div class="queren"> -->
<!--             给卖家留言 -->
<!--        </div> -->
<!--        <div class="ly"> -->
<!--        		<textarea rows="7" class="text" ></textarea> -->
<!--        </div> -->
       <div class="cart_total">
           <div class="cart_left"><a href="trolley" href="${pageContext.request.contextPath}/product!forwardProductList.html"><< 重新选课</a></div>
           <div class="cart_right">
               <ul>
                   <li style="text-align: right">
                       <p>总金额：<b class="cidcolor">￥<span>${product.productPrice}</span>元</b></p>
                       <p>优惠金额：<b class="cidcolor">￥<span>0.00</span>元</b></p>
                       <p>应付金额：<b class="cidcolor">￥<span>${product.productPrice}</span>元</b></p>
                   </li>
               </ul>
           </div>
       <div class="clear"></div>
		<div class="ordersub"><a href="${pageContext.request.contextPath}/order!payProductOnlyOne.html"><button class="btn  btn-large btn-info" type="button" placeholder="nihao">提交订单</button></a></div>
</div>
</div>
</div>
 

	<%@ include file="../common/commonFooter.jsp"%>

</body>
</html>