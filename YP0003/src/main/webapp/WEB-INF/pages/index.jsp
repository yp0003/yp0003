<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 程序包含开始 -->
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>365ITEDU网</title>
<!-- link css -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet"/>


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
<body>
<%@ include file="common/commonHeader.jsp"%>
<!-- 程序包含结束 -->
<div class="bs-docs-social">
	<div class="container">
		<ul class="bs-docs-social-buttons">
			<li class="follow-btn">
				<a href="#" class="twitter-follow-button" data-link-color="#0069D6"
					data-show-count="true">365IT学院技术交流群：378248068</a>
			</li>
			<li class="tweet-btn">
				<a href="http://wenda.bootcss.com/" class="twitter-share-button" data-url="#"
					data-count="horizontal" data-via="twbootstrap"
					data-related="mdo:Creator of Twitter Bootstrap" title="Bootstrap问答社区">365IT学院问答社区</a>
			</li>
				<li class="social-weibo"><a href="http://weibo.com/bootcss"
					title="365IT教育学院官方微博" target="_blank" se_prerender_url="complete"><i
						class="fa fa-weibo"></i> 新浪微博：@365IT学院</a></li>
		</ul>
	</div>
</div>

<div class="container">

  <div class="marketing">

    <h1>优质课程推荐</h1>
    <p class="marketing-byline">让您的课余生活更加丰富，让您的知识更加完整</p>

    <div class="row-fluid">
<%--       <s:if test="productList.size > 0"> --%>
      	 	      
<%--       </s:if> --%>
      
 		  <div class="span4">
	       <a href="list.html"> <img class="marketing-img" src="image/53e4ba4c0001f2d206000338-590-330.jpg"/></a>
	        <h2>PDO—数据库抽象层</h2>
	        <p>PDO扩展为PHP访问数据库定义了一个轻量级的、一致性的接口，PDO解决了数据库连接不统一的问题，本课程以MySQL数据库为例，讲解了PDO的安装和配置方法，以及操作数据的函数，此外还介绍了PDO的事务处理相关知识，最后通过实战演练深入剖析PDO以加深理解。</p>
	      </div>
	      
	      <div class="span4">
	       <a href="list.html"><img class="marketing-img" src="image/542376b20001374c06000338-590-330.jpg"/></a>
	        <h2>文件传输基础——Java IO流</h2>
	        <p>本门课程主要为您带来Java中的输入输出流的内容，包括文件编码、使用File类对文件和目录进行管理、字节流和字符流的基本操作，以及对象的序列化和反序列化的内容。</p>
	      </div>
	      
	      <div class="span4">
	       <a href="list.html"> <img class="marketing-img" src="image/53ec5a590001d85606000338-590-330.jpg"/></a>
	        <h2>Java 眼中的 XML</h2>
	        <p>文件的形态是千变万化的，在 Internet 中，我们通常使用一种叫做 XML 的文件来传输或者存储数据。本次课程中，@Jessica Jiang 将会带领小伙伴们把这种 XML 文件应用与 Java 程序结合起来，教你如何应用 Java“解析 XML ”和“生成 XML ”。</p>
	      </div>
      
          
    </div>
      
<!--      <hr class="soften"/> -->
    
<!--     <h1>经典课程推荐</h1> -->
<%--     <p class="marketing-byline">经典课程重温基础</p> --%>
<!--     <div class="row-fluid"> -->
<!--       <ul class="thumbnails example-sites"> -->
<!--         <li class="span3"> -->
<!--           <a class="thumbnail" href="list.html" target="_blank"> -->
<!--             <img src="image/543f682600012d1406000338-590-330.jpg" alt=""/> -->
<!--           </a> -->
<!--         </li> -->
<!--         <li class="span3"> -->
<!--           <a class="thumbnail" href="list.html" target="_blank"> -->
<!--             <img src="image/5444a3280001f1fe06000338-590-330.jpg" alt=""/> -->
<!--           </a> -->
<!--         </li> -->
<!--         <li class="span3"> -->
<!--           <a class="thumbnail" href="list.html" target="_blank"> -->
<!--             <img src="image/54125edc0001ce6306000338-590-330.jpg" alt=""/> -->
<!--           </a> -->
<!--         </li> -->
<!--         <li class="span3"> -->
<!--           <a class="thumbnail" href="list.html" target="_blank"> -->
<!--             <img src="image/541943720001c89206000338-590-330.jpg" alt=""/> -->
<!--           </a> -->
<!--         </li> -->
<!--       </ul> -->
<!--      </div> -->

  </div>

</div>



<!-- Footer -->
<%@ include file="common/commonFooter.jsp"%>
</body>
</html>
