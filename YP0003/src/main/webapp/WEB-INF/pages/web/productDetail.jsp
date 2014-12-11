<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- 程序包含开始 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>365ITEDU网</title>
<!-- link css -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">


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
<%@ include file="../common/commonHeader.jsp"%>
<!-- 程序包含结束 -->


<div id="main" class="mt49">
<!--  <a class="back-btn"> 课程类别>java</a> -->
<div class="container1000" id="course_intro">

  <div class="course-title">
   
    <h1> ${product.productName}</h1>
    <a href="javascript:void(0)" data-id="207" class="btn-add-collection js-btn-collection">关注此课程</a>  </div>
  <div class="course_info">
      <div class="course_video">
        <div id="VideoCover" >
            <img id="VideoCoverPic" width="600" height="338" alt="" src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${product.id}"/>   
        
         </div> 
         <div class="video" style="display:none">
            <div class="video_box" id="J_Video"></div>
         </div>
      </div>
      <div class="course_state">
        <ul>
          <li>
            <span>报名人数</span>
            <em>3570</em>
          </li>
          <li class="course_hour">
            <span>课程时长</span>
            <em class="ft-adjust">
<!--            		 <span> 1</span>小时<span>32</span>分 -->
           		 <span>${product.productLang}</span>
            </em>
          </li>
          <li>
            <span>课程分类</span>
            <em>${product.productKind.productKind}</em>
          </li>
        </ul>
      </div>

      <div class="course_intro">
        <h3 class="course_notes">课程须知</h3>
        <div class="course_description">
          		${product.productKnows}
        </div>
        <div class="curse_btn">
                                                                                                                                                                                                                                                                                                                                                                                                                          <a href="#" >体验学习</a>
                                                      </div>
      </div>
  </div>   
  <div class="course_list">
      <div class="outline">
        <h3 class="chapter_introduces">课程介绍</h3>
        <div class="course_shortdecription">
          <p>jQuery Mobile 是创建移动WEB应用程序的框架，使用广泛。本课程通过一个列车时刻表的简单案例，讲解了jQMobile的页面、事件、按钮、图标、导航栏、网格、列表、表单、
          Ajax等主要组件的使用方法，通过案例学习，举一反三，基本上可以开发简单的Web App应用。 </p>
        </div>
        
        <h3 class="chapter_catalog">课程提纲</h3>
                    <ul id="couList">
                                        <li class="clearfix open">
                <a href="#">
                <div class="openicon"></div>
                  <div class="outline_list l">
                  <!-- <em class="outline_zt"></em> -->
                  <h5 class="outline_name">第1章 课程介绍</h5>
                  <p class="outline_descr">jQuery Mobile 是创建移动 web 应用程序的框架，使用广泛。本课程通过一个列车时刻表的简单案例，讲解了jQMobile的页面、事件、按钮、图标、导航栏、网格、列表、表单、Ajax等主要组件的使用方法，通过案例学习，举一反三，基本上可以开发简单的Web App应用。...</p>
                </div>
                </a>
              </li>
                                                      <li class="clearfix open">
                <a href="#">
                <div class="openicon"></div>
                  <div class="outline_list l">
                  <!-- <em class="outline_zt"></em> -->
                  <h5 class="outline_name">第2章 jQuery Mobile 简介</h5>
                  <p class="outline_descr">简单介绍jQuery Mobile框架</p>
                </div>
                </a>
              </li>
                                                      <li class="clearfix open">
                <a href="#">
                <div class="openicon"></div>
                  <div class="outline_list l">
                  <!-- <em class="outline_zt"></em> -->
                  <h5 class="outline_name">第3章 jQuery Mobile 页面</h5>
                  <p class="outline_descr">jQuery Mobile 依赖 HTML5 data-* 属性来支持各种 UI 元素、过渡和页面结构。介绍页面结构和元素的解释、定义多个页面、页面导航和跳转。</p>
                </div>
                </a>
              </li>
                                                      <li class="clearfix open">
                <a href="#">
                <div class="openicon"></div>
                  <div class="outline_list l">
                  <!-- <em class="outline_zt"></em> -->
                  <h5 class="outline_name">第4章 jQuery Mobile 组件</h5>
                  <p class="outline_descr">讲解jQuery Mobile 按钮、导航栏、列表、表单、事件使用及调整。</p>
                </div>
                </a>
              </li>
                                                      <li class="clearfix open">
                <a href="#">
                <div class="openicon"></div>
                  <div class="outline_list l">
                  <!-- <em class="outline_zt"></em> -->
                  <h5 class="outline_name">第5章 jQuery Mobile Ajax</h5>
                  <p class="outline_descr">介绍jQuery Mobile的Ajax使用，常见的跨域解决方式和简单的解决方式。</p>
                </div>
                </a>
              </li>
                                                      <li class="clearfix open">
                <a href="#">
                <div class="openicon"></div>
                  <div class="outline_list l">
                  <!-- <em class="outline_zt"></em> -->
                  <h5 class="outline_name">第6章 页面逻辑连通</h5>
                  <p class="outline_descr">介绍如何将前面的功能串联起来，使页面逻辑连联，实现app应用。</p>
                </div>
                </a>
              </li>
                                    </ul>
        	    </div>
      <div class="course_right">
        <dl>
          <dt>授课老师</dt>
          <dd>
                                    <div class="course_teacher">
                <a href="#" class="teacer_pic"><img src='http://img.mukewang.com/user/544a17d60001434101400140-80-80.jpg' width='80' height='80' /></a>
                <h3>
                  <a href="#">WayneJiang</a>
                  <span class="teacher_icon"></span>
                </h3>
                                <p> Web前端工程师</p>
                                <br class="clear" />
               <div class="discrip autowrap">资深UI+前端+架构，Woorich联合创始人、CTO，Veizen创始人，前后端开发、敏捷过程、项目管理经验丰富；爱技术，爱创业，爱一切新事物，玩过乐队，喜欢折腾！</div>
            </div>
                                  </dd>
        </dl>
        <dl>
          <dt>老师告诉你能学到什么？</dt>
          <dd><pre class="wrd_break">通过案例的学习，让您对jQuery Mobile有整体的了解，及页面、事件、按钮、图标、导航栏、网格、列表、表单、Ajax等主要组件的使用方法。</pre></dd>
        </dl>
        <!-- <dl>
          <dt>课程须知</dt>
          <dd><pre class="wrd_break">希望您了解jQuery Mobile的基本知识，或者具备jQuery知识，这样对课程学习会有很大帮助。</pre></dd>
        </dl> -->
      </div>
   </div>
</div>

</div>

<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<p>
				<a href="#">365ITEDU网欢迎您的到来</a>
			</p>
			<p>
				<a href="#">365ITEDU网欢迎您的到来365ITEDU网欢迎您的到来365ITEDU网欢迎您的到来</a>
			</p>
			
			<p>
				<a href="#">Glyphicons Free</a> licensed under <a
					href="#">CC BY </a>.
			</p>
			<ul class="footer-links">
				<li>365ITEDU网欢迎您的到来</li>
				<li class="muted">365ITEDU网欢迎您的到来</li>
				<li>365ITEDU网欢迎您的到来</li>
				<li>365ITEDU网欢迎您的到来</li>
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
