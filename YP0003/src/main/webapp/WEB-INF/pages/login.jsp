<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- link css -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/base.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">


<!-- link script -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>登陆</title>
<script type="text/javascript">
	function reImg() {
		$("#vertImg").attr(
				"src",
				"${pageContext.request.contextPath}/system!validateCode.html?time="
						+ new Date());
	}
</script>
</head>
<body>
	<!-- 头部 -->
	<%-- <%@ include file="common/common.jsp"%> --%>



	<!---网页内容 start-->
	<div id="content_wrap">
		<div id="hr_content"></div>
		<div id="content">

			<div id="page_path">
				<span class="currLocation">当前位置：</span> <a class="path_item"
					href="#">&gt;&nbsp;登录</a>
			</div>

			<div id="con_show">
				<h2 class="pageTitle title_register">会员登陆</h2>
				<img class="hr_conTitle" src="image/login/hr_content1.png" alt="" />

				<div id="login_form">
					<form id="login" action="system!login.html" method="post">
						<ul>
							<li><label for="memberID">用户名:</label> <input id="memberID"
							type="text" name="user.userId" /> <span
								class="redStar">*</span></li>
							<li><label for="passWord">密&nbsp;码:</label> <input
							id="passWord" type="password" name="user.nowPassword" /> <span class="redStar">*</span></li>
							
							<li><label for="vertCode">验证码:</label> <input
								id="registValidateCode" type="text" name="validateCode" style="width:70px;"/> <img id="vertImg"
								src="${pageContext.request.contextPath}/system!validateCode.html" />
								<a class="chgVertImg" href="javascript:void(0);"onclick="reImg();">看不清，换一张</a>
							<li><input id="remPass" type="checkbox" /> <label
							id="lblRemPass" for="remPass">记住密码，两周内自动登录</label> <a
							id="forgetPW"
							href="${pageContext.request.contextPath}/system!forwardFindPassword.html">忘记密码</a>
							<div class="clear"></div></li>
							<li>
								<button id="btn_login" type="submit" value=""></button>

							</li>
						</ul>
					</form>

				</div>

				<img id="split_LR"
					src="${pageContext.request.contextPath}/image/login/split_LR.png"
					alt="" />
				<div id="login_rightC">
					<img id="img_right" src="${pageContext.request.contextPath}/image/login/img_loginC1.jpg" /> <span class="lblImgInfo">还没有学习账号？</span> <a class="linkImgAction"
					href="${pageContext.request.contextPath}/system!forwardRegister.html">立即去免费注册
					&gt;&gt;</a>
				</div>

				<div class="clear"></div>
			</div>

		</div>

	</div>




	<!-- 底部 -->
<%-- 	<%@ include file="common/commonFooter.jsp"%> --%>

</body>
</html>