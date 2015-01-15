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
<%-- <link href="${pageContext.request.contextPath}/css/test.css" rel="stylesheet"> --%>
<link href="${pageContext.request.contextPath}/css/right.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/msg.css" rel="stylesheet">
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
 <div class="mymain-content l ">
        <div class="myspace-list l ">
             <a href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html" class="myspace-course"><span>订单</span></a>
           	 <a href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html" class="myspace-plan"><span>课程</span></a>
            <a href="${pageContext.request.contextPath}/mycenter!forwardMyMessage.html" class="myspace-ques  courseactive"><span>消息</span></a>
<%--            <a href="#" class="myspace-note "><span>设置</span></a> --%>
        </div>
        
		<div class="myspace-courselist myspace-bg r"> 
		
			  <div class="main-bd "><!-- clearfix -->
					    <div class="space-tabs-menu">
					    <ul>
					   <li><a href="" class="curr">我的消息</a></li>	
					   	</ul>
							<div style="left:0px" class="dot-curr"></div>
					    </div>
		 <div class="uncode">
			<div class="course-content course-content1">
				<div class="course-content">
					
					<div class="wenda-list">
						
						
						<s:iterator value="myMessageList" id="msg">
						<!-- 开始 -->
						<div class="wenda-listcon clearfix">
						
						    <div class="headslider fl">
						      <a href="#" class="wenda-head" target="_blank" title="<s:property value="#msg.sendUser.userName"/>">
						      	<img src='${pageContext.request.contextPath}/mycenter!showUserHeader.html?user.id=<s:property value="#msg.sendUser.id"/>' width='40' height='40' /></a>
						        <a href="#" target="_blank" title="<s:property value="#msg.sendUser.userName"/>" class="wenda-nickname"><s:property value="#msg.sendUser.userName"/></a>
						    </div>
						    
						    <div class="wendaslider fl">
<!-- 						          <a href="/wenda/detail/240196" target="_blank" class="replynumber hasanswernum"> -->
<!-- 						          <div class="ys"> -->
<!-- 						            <div class="number padAjust"> -->
<!-- 						              <b class="numShow">1</b> -->
<!-- 						            </div> -->
<!-- 						            <div class="number">回答</div> -->
<!-- 						          </div> -->
<!-- 						          <div class="browsenum"> -->
<!-- 						            <div class="number padAjust"> -->
<!-- 						              <b class="numShow">8</b> -->
<!-- 						            </div> -->
<!-- 						            <div class="number">浏览</div> -->
<!-- 						          </div><div class="ck"><div class="number">查看</div><div class="number">回答</div></div> -->
<!-- 						        </a> -->
						       
						      <h2 class="wendaquetitle">
						           <i class="nofinish"></i>
						                                    
						        <div class="wendatitlecon">
						             <a href="" target="_blank" class="wendatitle"><s:property value="#msg.messTitle"/></a>
						        </div>
						      </h2>
						      
<!-- 						      <div class="replycont clearfix"> -->
<!-- 						        <i class="replyicon fl"></i> -->
<!-- 						                  <div class="fl replydes"> -->
<%-- 						            <span class="replysign praise">[最新回答]</span> --%>
<!-- 						            <a href="/space/u/uid/1008219" target="_blank" title="晚安sp" class="replyuserhead"><img src='http://img.mukewang.com/user/5333a0aa000121d702000200-40-40.jpg' width='20' height='20' /> </a> -->
<!-- 						            <a href="/space/u/uid/1008219" target="_blank" title="晚安sp" class="nickname">晚安sp: </a> -->
<%-- 						            <span class="replydet">下面是post提交，上面是Get接受，能显示才怪了</span> --%>
<!-- 						          </div> -->
<!-- 						      </div> -->
						      <div class="replymegfooter">
						        <div class="wenda-time">
						               <em>提问时间：<s:date name="#msg.sendTime"  format="yyyy-MM-dd"/></em>
						               <em>消息状态：<s:property value="#msg.msgStatusDic.dicCn"/></em>
						        </div>
<!-- 						                  <div class="keyword-list"> -->
<!-- 						                      <a href="/wenda/tag/tagId/2" target="_blank" class="list-tag">PHP</a> -->
<!-- 						                      <a href="/wenda/tag/tagId/5" target="_blank" class="list-tag">Html/CSS</a> -->
<!-- 						                      <a href="/wenda/tag/tagId/14" target="_blank" class="list-tag">Html5</a> -->
<!-- 						                    </div>  -->
						        
						        </div>
						    </div>
						    
						  </div>
					 <!-- 结束 -->
						</s:iterator>
						
						
							
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