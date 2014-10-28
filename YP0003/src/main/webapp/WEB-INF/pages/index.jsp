<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
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
</head>
<body>
<!-- Navbar
    ================================================== -->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<div class="nav-collapse collapse">

				<a class="brand" href="#regist" class="hid" data-toggle="modal">注册</a>
				
				<a class="brand" href="#myModal" class="hid" data-toggle="modal">登录</a>

				<!--<a class="brand" href="./index.html">我的订单</a> <a class="brand"
						href="./index.html">购物车</a> <a class="brand" href="./index.html">个人中心</a>-->
				<ul class="nav">
					<li class="active">
						<a href="./index.html">课程</a>
					</li>
					<li class="">
						<a href="#">问答</a>
					</li>
					<li class="">
						<a href="#">求课</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- 程序包含结束 -->


<div class="jumbotron masthead">
	<div class="container">
		<h1>365IT学院</h1>
		<p>编程未来，成就梦想</p>
		<p>
			<a href="#" class="btn btn-primary btn-large">立即选课</a>
		</p>
	</div>
</div>

<div class="bs-docs-social">
	<div class="container">
	    <ul class="bc-social-buttons">
        <li class="social-qq">
          <i class="fa fa-qq"></i> 365IT学院技术交流群：xxxxxxxx
        </li>
        <li class="social-forum">
          <a title=" 365IT学院问答社区" href="#" target="_blank">
            <i class="fa fa-comments"></i>  365IT学院问答社区
          </a>
        </li>
        <li class="social-weibo">
          <a title=" 365IT学院中文网官方微博" href="#" target="_blank"><i class="fa fa-weibo"></i> 新浪微博：@ 365IT学院</a>
        </li>
      </ul>
	</div>
</div>

<div class="container">

  <div class="marketing">

    <h1>优质课程推荐</h1>
    <p class="marketing-byline">让您的课余生活更加丰富，让您的知识更加完整</p>

    <div class="row-fluid">
      <div class="span4">
       <a href="list.html"> <img class="marketing-img" src="image/53e4ba4c0001f2d206000338-590-330.jpg"></a>
        <h2>PDO—数据库抽象层</h2>
        <p>PDO扩展为PHP访问数据库定义了一个轻量级的、一致性的接口，PDO解决了数据库连接不统一的问题，本课程以MySQL数据库为例，讲解了PDO的安装和配置方法，以及操作数据的函数，此外还介绍了PDO的事务处理相关知识，最后通过实战演练深入剖析PDO以加深理解。</p>
      </div>
      
      <div class="span4">
       <a href="list.html"><img class="marketing-img" src="image/542376b20001374c06000338-590-330.jpg"></a>
        <h2>文件传输基础——Java IO流</h2>
        <p>本门课程主要为您带来Java中的输入输出流的内容，包括文件编码、使用File类对文件和目录进行管理、字节流和字符流的基本操作，以及对象的序列化和反序列化的内容。</p>
      </div>
      
      <div class="span4">
       <a href="list.html"> <img class="marketing-img" src="image/53ec5a590001d85606000338-590-330.jpg"></a>
        <h2>Java 眼中的 XML</h2>
        <p>文件的形态是千变万化的，在 Internet 中，我们通常使用一种叫做 XML 的文件来传输或者存储数据。本次课程中，@Jessica Jiang 将会带领小伙伴们把这种 XML 文件应用与 Java 程序结合起来，教你如何应用 Java“解析 XML ”和“生成 XML ”。</p>
      </div>
    </div>
      
     <hr class="soften">
    
    <h1>经典课程推荐</h1>
    <p class="marketing-byline">经典课程重温基础</p>
    <div class="row-fluid">
      <ul class="thumbnails example-sites">
        <li class="span3">
          <a class="thumbnail" href="list.html" target="_blank">
            <img src="image/543f682600012d1406000338-590-330.jpg" alt="">
          </a>
        </li>
        <li class="span3">
          <a class="thumbnail" href="list.html" target="_blank">
            <img src="image/5444a3280001f1fe06000338-590-330.jpg" alt="">
          </a>
        </li>
        <li class="span3">
          <a class="thumbnail" href="list.html" target="_blank">
            <img src="image/54125edc0001ce6306000338-590-330.jpg" alt="">
          </a>
        </li>
        <li class="span3">
          <a class="thumbnail" href="list.html" target="_blank">
            <img src="image/541943720001c89206000338-590-330.jpg" alt="">
          </a>
        </li>
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
			<a href="#">Glyphicons Free</a>
			licensed under
			<a href="#">CC BY </a>
			.
		</p>
		<ul class="footer-links">
			<li>求课网欢迎您的到来</li>
			<li class="muted">求课网欢迎您的到来</li>
			<li>求课网欢迎您的到来</li>
			<li>求课网欢迎您的到来</li>
		</ul>
	</div>
</footer>
<!-- login -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div id="signin" class="rl-modal in" aria-hidden="false">
		<div class="rl-modal-header">
			<h1>
				<span class="active-title hid" href="#myModal" data-toggle="modal">登录</span>
			</h1>
			<button type="button" class="rl-close" data-dismiss="modal"
				hidefocus="true" aria-hidden="true"></button>
		</div>
		<div class="rl-modal-body">
			<div class="clearfix">
				<div class="l-left-wrap l">
					<form id="signup-form">
						<div class="rlf-group">
							<input type="text" name="email" data-validate="email"
								autocomplete="off" class="rlf-input rlf-input-email"
								placeholder="请输入登录邮箱">
							<p class="rlf-tip-wrap"></p>
						</div>
						<div class="rlf-group">
							<input type="password" name="password" autocomplete="off"
								class="rlf-input rlf-input-pwd" placeholder="请输入密码">
							<p class="rlf-tip-wrap"></p>
						</div>
						<div class="rlf-group rlf-appendix clearfix">
							<label for="auto-signin" class="l" hidefocus="true">
								<input type="checkbox" checked="checked" id="auto-signin">
								自动登录
							</label>
							<a href="/user/newforgot" class="rlf-forget r" target="_blank"
								hidefocus="true">忘记密码？ </a>
						</div>
						<div class="rlf-group clearfix">
							<p class="rlf-tip-wrap " id="signin-globle-error"></p>
							<input type="button" id="signin-btn" value="登录" hidefocus="true"
								class="rlf-btn-green btn-full r">
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="rl-model-footer">
			<div class="pop-login-sns">
				<a href="javascript:void(0)" hidefocus="true"
					data-login-sns="/user/loginqq" class="pop-sns-qq">
					<i></i>
					QQ 帐号直接登录
				</a>
				<a href="javascript:void(0)" hidefocus="true"
					data-login-sns="/user/loginweibo" class="pop-sns-weibo">
					<i></i>
					新浪微博帐号登录
				</a>
			</div>
		</div>
	</div>
</div>

<!-- regist -->
<div id="regist" class="modal hide fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div id="signup" class="rl-modal  in" aria-hidden="false">
		<div class="rl-modal-header">
			<button type="button" class="rl-close" data-dismiss="modal"
				aria-hidden="true"></button>
			<h1>
				<span class="active-title hid" href="#regist" data-toggle="modal">注册</span>
			</h1>
		</div>
		<div class="rl-modal-body">
			<form id="signup-form">
				<div class="rlf-group">
					<input type="text" name="email" data-validate="email"
						class="rlf-input rlf-input-email" autocomplete="off"
						placeholder="请输入登录邮箱">
					<p class="rlf-tip-wrap">请输入有效的邮箱！</p>
				</div>
				<div class="rlf-group">
					<input type="password" name="password" data-validate="password"
						class="rlf-input rlf-input-pwd" placeholder="请输入密码">
					<p class="rlf-tip-wrap">请输入6-16位密码，区分大小写，不能使用空格</p>
				</div>
				<div class="rlf-group">
					<input type="text" name="nick" data-validate="nick"
						class="rlf-input rlf-input-nick" placeholder="请输入用户昵称">
					<p class="rlf-tip-wrap">请输入昵称，2-18位中英文、数字或下划线！</p>
				</div>
				<div class="rlf-group clearfix">
					<p class="rlf-tip-wrap" id="signup-globle-error"></p>
					<input type="button" id="signup-btn" value="注册" hidefocus="true"
						class="rlf-btn-green btn-full r">
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>