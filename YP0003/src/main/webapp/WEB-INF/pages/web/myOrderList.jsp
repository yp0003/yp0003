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
<div class="r myspace-slider">
        <div class="myspace-bg">
           <img src='http://img.mukewang.com/user/545868550001f60202200220-220-220.jpg' width='220' height='220' />
            <div class="myspace-data">
              <h4 class="myname">Simon476879</h4>
              <p class="job-title"> 学生 </p>
              <div class="mysignature">
                  <div class="signWrap">
                    <p id="signed" class="signed"> 这位童鞋很懒，什么也没有留下～～！</p>
                    <em id="publishsign"></em>
                  </div>
                  <textarea id="signing" class="signing">这位童鞋很懒，什么也没有留下～～！</textarea>
                  <p id="rlf-tip-wrap" class="rlf-tip-wrap"></p>
              </div>
              <div class="mp-wrap clearfix">
                <div class="hd">
                  <ul>
                    <li class="mp-item">
                      <a class="mp-atag" href="/space/experience">
                        <p class="mp-title">经验</p>
                        <p class="mp-num">0</p>
                      </a>
                      <!-- <span class="line-iron"></span> -->
                    </li>
                    <!-- <li class="l mp-item">
                      <a class="mp-atag" href="#">
                        <p class="mp-title">徽章</p>
                        <p class="mp-num">8,769</p>
                      </a>
                    </li> -->
                  </ul>
                </div>
              <!-- <div class="bd">
                <a href="#" class="bedge"></a>
              </div> -->
              </div>
            </div>
        </div>
        <ul class="space-item bodybg">
            <li>
              <span class="icon-time icon" title="学习"></span>学习： 0分
            </li>
            <li>
              <span class="icon-course icon" title="报名"></span>已学：<a href="/space/course/uid/476879" class="countCourse"><em>4</em>门课程</a>
            </li>
            <li>
              <span class="icon-publish icon" title="发表"></span>提问：<a href="/space/question/t/ques">0条</a>
            </li>
            <li>
              <span class="icon-answer icon" title="回答"></span>回答：<a href="/space/question/t/reply">0条</a>
            </li>
            <li>
              <span class="icon-note icon" title="笔记"></span>笔记：<a href="/space/note/uid/476879" class="countNote"><em>0</em>条</a>
            </li>
            <li><span class="icon-code icon" title="代码"></span>代码：<a href="/space/code">0条</a></li>
        </ul>
        <div class="bodybg">
          <h3 class="main-hd">最近访客</h3>
          <ul class="space-visitors main-bd">
                                <li class="unvisitor"></li>
                  <li class="unvisitortex">暂无同学拜访此页面</li>
                      </ul>
      </div>
    </div>

 <div class="mymain-content l ">
        <div class="myspace-list l ">
           <a href="${pageContext.request.contextPath}/mycenter!forwardMyMessage.html" class="myspace-course courseactive"><span>订单</span></a>
           <a href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html" class="myspace-plan"><span>课程</span></a>
           <a href="${pageContext.request.contextPath}/mycenter!forwardMyMessage.html" class="myspace-ques "><span>消息</span></a>
<%--            <a href="#" class="myspace-note "><span>设置</span></a> --%>
        </div>
        
		<div class="myspace-courselist myspace-bg r"> 
		
			  <div class="main-bd "><!-- clearfix -->
					    <div class="space-tabs-menu">
					                        <ul>
					    <li><a href="" class="curr">课程订单</a></li>
<!-- 					    <li><a href="" class="curr">代码</a></li> -->
					  	</ul>
							<div style="left:0px" class="dot-curr"></div>
					    </div>
				      <div class="uncode">
					      <div class="course-content course-content1">
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
                                <a class="showOrderDetail" href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html?order.id=<s:property value="#order.id"/>" target="_blank">查看详情</a>
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
                                <a href="" class="link_btn" name="goToPay" data-classid="144281" target="_blank" data-orderid="2954076">立即支付</a>
                                <a class="showOrderDetail" href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html?order.id=<s:property value="#order.id"/>"  target="_blank">查看详情</a>
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
                                <a class="showOrderDetail" href="${pageContext.request.contextPath}/mycenter!forwardMyOrderDetail.html?order.id=<s:property value="#order.id"/>"  target="_blank">查看详情</a>
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
				    </div>
			    
			  </div>
		</div>

    
  </div>
		
		
	</div>


	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>