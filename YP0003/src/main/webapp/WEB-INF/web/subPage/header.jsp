<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- <div class="content"> -->
<!-- 	<a href="#" target="_blank"> -->
<%-- 	<div style="width:100%; height:150px;background:url(${pageContext.request.contextPath}/image/banner.jpg) repeat top center;"></div> --%>
<!-- 	</a> -->
<!-- </div> -->
<div class="head">
	<div class="head_main">
		<div class="top_menu">
				<ul class="fast_menuone">
    	<li style="width:auto">您好，欢迎来到365ITEDU！请 <a href="${pageContext.request.contextPath}/system!forwardLogin.html" target="_blank" class="blue">登录</a></li>
		<li><a href="${pageContext.request.contextPath}/system!forwardLogin.html" class="blue" target="_parent" style="line-height:auto;">免费注册</a></li>
<!--         <li><a href="#" class="blue" target="_blank" style="line-height:auto;">网校</a></li> -->
<!--          <li><a href="#" class="blue" style="line-height:31px;">上传资源</a></li> -->
<!--         <li style="height:31px;"><a href="http://weibo.com/ibeif" class="blue" target="_blank"> -->
<!--         	<img src="http://http://weibo.com/ibeif/themes/default/images/sina.jpg" alt="新浪微博" class="weibo_icon"></a> -->
<!--         </li> -->
   
    </ul>
	<ul class="fast_menu">
		<li><a href="#" class="gwc" target="_blank">购物车<span id="gwc_num">0</span>件</a></li>
			<li><a href="./Bootstrap中文网_files/Bootstrap中文网.htm" target="_blank">365IT学院</a></li>
			<li><a href="javascript:void(0)" target="_blank">课程</a></li>
			<li><a href="javascript:void(0)" target="_blank">问答</a></li>
			<li><a href="http://www.bootcss.com/p/lesscss/" target="_blank">求课</a></li>
<!-- 		<li><a href="appdown.html" class="kfd red" target="_blank">客户端下载</a></li> -->
<!-- 		<li><a href="/contact.html" target="_blank">联系我们</a></li> -->
<!-- 		<li><a href="/help.html" target="_blank">帮助中心</a></li> -->
	</ul>
    

		</div>
		
		<div class="head_con clearfix">
			<div class="logo"><a href="/index.html"><img src="${pageContext.request.contextPath}/images/logo1.png" /></a></div>
			<div class="search">
				<form name="searchForm" id="searchForm" action="/search.php" method="post">
					<input type="text" name="keywords" id="keyword" value="" class="s_text" /><input type="submit" value="" name="search_bnt" class="s_bnt">
				</form>				
				<div class="s_hot">
				    热门搜索：
<!-- 					<a href="tc_java2.html" target="_blank">J2EE套餐</a> -->
<!-- 					<a href="androidcourse.html" target="_blank">安卓套餐</a> -->
<!-- 					<a href="netcourse.html" target="_blank">.Net套餐</a> -->
<!-- 					<a href="search.php?encode=YToyOntzOjg6ImtleXdvcmRzIjtzOjY6ImhhZG9vcCI7czoxODoic2VhcmNoX2VuY29kZV90aW1lIjtpOjEzODQ5MzY5NTE7fQ==" target="_blank">Hadoop</a> -->
<!-- 					<a href="goods-348.html" target="_blank">VIP5</a> -->
<!-- 					<a href="search.php?encode=YToyOntzOjM6InRpZCI7czoyOiIyNiI7czoxODoic2VhcmNoX2VuY29kZV90aW1lIjtpOjEzODUwOTI3MTg7fQ==" target="_blank">风舞烟</a> -->
			    </div>
			</div>
           <!-- <div class="weixinsys"><a href="lecturer.html" target="_blank" title="高薪招聘讲师"><img src="image/teacher_img.jpg" alt="高薪招聘讲师"></a></div>-->
		</div>
	</div>
	
	<div class="nav">
		<div class="nav_main">
			<a href="/class.html" class="class_all">所有课程分类</a>
			<div class="nav_list clearfix">
				<a href="/" class="one">首页</a>
				<a href="${pageContext.request.contextPath}/product!forwardProductList.html" class="two">课程</a>
<!--                 <a href="http://edu.ibeifeng.com" target="_blank" class="bfkt">北风课堂<br><img src="http:///themes/default/images/navhot.gif" class="icon_new" alt="new"></a> -->
<!--                 <a href="http://bbs.ibeifeng.com" class="eight" target="_blank">论坛</a> -->
<!-- 				<a href="/solution-1.html" class="three">方案</a> -->
<!-- 				<a href="/ask.html" class="four">问答</a> -->
<!-- 				<a href="/source_list.html" class="five">资源</a> -->
<!-- 				<a href="/tech_list.html" class="six">资讯</a> -->
<!-- 				<a href="/training.html" class="seven">内训</a> -->				
<!-- 				<a href="/help.html" class="nine">帮助</a> -->
<!--         		<a href="/lecturer.html" class="lecturer">讲师招聘</a> -->
						
			</div>
		</div>		
	</div>
</div>
