<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/bootstrap/js/google-code-prettify/prettify.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/base.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/login_regist.css"
	rel="stylesheet" />
<link
	href="http://cdn.bootcss.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="http://static.bootcss.com/www/assets/css/site.min.css"
	rel="stylesheet" />

<!-- link script -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<title>365ITEDU</title>
<script type="text/javascript">
	$(document).ready(function() {

	});
	function reImg() {
		$("#vertImg").attr(
				"src",
				"${pageContext.request.contextPath}/system!validateCode.html?time="
						+ new Date());
	}

/* 	function regist() {
		var aaa = "${pageContext.request.contextPath}/system!register.html?user.userId="
				+ $("#registUserId").val()
				+ "&"
				+ "user.nowPassword="
				+ $("#registNowPassword1").val()
				+ ","
				+ $("#registNowPassword2").val()
				+ "&"
				+ "user.email="
				+ $("#registEmail").val()
				+ "&"
				+ "validateCode="
				+ $("#registValidateCode").val();
		alert(aaa);
		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/system!register.html?user.userId="
							+ $("#registUserId").val()
							+ "&"
							+ "user.nowPassword="
							+ $("#registNowPassword1").val()
							+ ","
							+ $("#registNowPassword2").val()
							+ "&"
							+ "user.email="
							+ $("#registEmail").val()
							+ "&"
							+ "validateCode=" + $("#registValidateCode").val(),
					dataType : "json", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）
					success : function(json) {
						var obj = $.parseJSON(json); //使用这个方法解析json
						var state_value = obj.result; //result是和action中定义的result变量的get方法对应的
						alert(state_value);
					},
					error : function(json) {
						alert("json=" + json);
						return false;
					}
				});
	} */
</script>
</head>
<body>
	<%@ include file="common/common.jsp"%>
	<!-- 程序包含结束 -->


	<div class="jumbotron masthead">
		<div class="container">
			<h1>365IT学院</h1>
			<p>编程未来，成就梦想</p>
			<p>
				<a
					href="${pageContext.request.contextPath}/product!forwardProductList.html"
					class="btn btn-primary btn-large">立即选课</a>
			</p>
		</div>
	</div>

	<div class="bs-docs-social">
		<div class="container">
			<ul class="bc-social-buttons">
				<li class="social-qq"><i class="fa fa-qq"></i>
					365IT学院技术交流群：xxxxxxxx</li>
				<li class="social-forum"><a title=" 365IT学院问答社区" href="#"
					target="_blank"> <i class="fa fa-comments"></i> 365IT学院问答社区
				</a></li>
				<li class="social-weibo"><a title=" 365IT学院中文网官方微博" href="#"
					target="_blank"><i class="fa fa-weibo"></i> 新浪微博：@ 365IT学院</a></li>
			</ul>
		</div>
	</div>

	<div class="container">

		<div class="marketing">

			<h1>优质课程推荐</h1>
			<p class="marketing-byline">让您的课余生活更加丰富，让您的知识更加完整</p>

			<div class="row-fluid">
				<div class="span4">
					<a href="list.html"> <img class="marketing-img"
						src="image/53e4ba4c0001f2d206000338-590-330.jpg"></a>
					<h2>PDO—数据库抽象层</h2>
					<p>PDO扩展为PHP访问数据库定义了一个轻量级的、一致性的接口，PDO解决了数据库连接不统一的问题，本课程以MySQL数据库为例，讲解了PDO的安装和配置方法，以及操作数据的函数，此外还介绍了PDO的事务处理相关知识，最后通过实战演练深入剖析PDO以加深理解。</p>
				</div>

				<div class="span4">
					<a href="list.html"><img class="marketing-img"
						src="image/542376b20001374c06000338-590-330.jpg"></a>
					<h2>文件传输基础——Java IO流</h2>
					<p>本门课程主要为您带来Java中的输入输出流的内容，包括文件编码、使用File类对文件和目录进行管理、字节流和字符流的基本操作，以及对象的序列化和反序列化的内容。</p>
				</div>

				<div class="span4">
					<a href="list.html"> <img class="marketing-img"
						src="image/53ec5a590001d85606000338-590-330.jpg"></a>
					<h2>Java 眼中的 XML</h2>
					<p>文件的形态是千变万化的，在 Internet 中，我们通常使用一种叫做 XML
						的文件来传输或者存储数据。本次课程中，@Jessica Jiang 将会带领小伙伴们把这种 XML 文件应用与 Java
						程序结合起来，教你如何应用 Java“解析 XML ”和“生成 XML ”。</p>
				</div>
			</div>

			<hr class="soften">

				<h1>经典课程推荐</h1>
				<p class="marketing-byline">经典课程重温基础</p>
				<div class="row-fluid">
					<ul class="thumbnails example-sites">
						<li class="span3"><a class="thumbnail" href="list.html"
							target="_blank"> <img
								src="image/543f682600012d1406000338-590-330.jpg" alt=""></a></li>
						<li class="span3"><a class="thumbnail" href="list.html"
							target="_blank"> <img
								src="image/5444a3280001f1fe06000338-590-330.jpg" alt=""></a></li>
						<li class="span3"><a class="thumbnail" href="list.html"
							target="_blank"> <img
								src="image/54125edc0001ce6306000338-590-330.jpg" alt=""></a></li>
						<li class="span3"><a class="thumbnail" href="list.html"
							target="_blank"> <img
								src="image/541943720001c89206000338-590-330.jpg" alt=""></a></li>
					</ul>
				</div>
		</div>

	</div>



	<!-- Footer -->
	<footer class="footer">
	<div class="container">
		<p>
			<a href="#">求课网欢迎您的到来</a>
		</p>
		<p>
			<a href="#">求课网欢迎您的到来求课网欢迎您的到来求课网欢迎您的到来</a>
		</p>

		<p>
			<a href="#">Glyphicons Free</a> licensed under <a href="#">CC BY
			</a> .
		</p>
		<ul class="footer-links">
			<li>求课网欢迎您的到来</li>
			<li class="muted">求课网欢迎您的到来</li>
			<li>求课网欢迎您的到来</li>
			<li>求课网欢迎您的到来</li>
		</ul>
	</div>
	</footer>
</body>
</html>