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
<title>注册</title>
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
					href="#">&gt;&nbsp;注册</a>
			</div>

			<div id="con_show">
				<h2 class="pageTitle title_register">会员注册</h2>
				<img class="hr_conTitle" src="image/login/hr_content1.png" alt="" />

				<div id="login_form">
					<form id="register" action="system!register.html" method="post">
						<ul>
							<li><label for="memberID">会员ID:</label> <input id="memberID"
								type="text" placeHolder="请输入6个以上的字符作为密码" name="user.userId" /> <span
								class="redStar">*</span></li>
							<li><label for="passWord">密码:</label> <input id="passWord"
								type="password" placeHolder="英文、数字或字符，6-20位区分大小写"
								name="user.nowPassword" /> <span class="redStar">*</span></li>
							<li><label for="passWord">确认密码:</label> <input id="passWord"
								type="password" name="user.nowPassword" /> <span class="redStar">*</span>
							</li>
							<li><label for="passWord">电子邮箱:</label> <input id="passWord"
								type="password" placeHolder="请使用常用邮箱地址作为登录账号" name="user.email" />
								<span class="redStar">*</span></li>
							<li><label for="vertCode">验证码:</label> <input
								id="registValidateCode" type="text" name="validateCode" style="width:70px;"/> <img id="vertImg"
								src="${pageContext.request.contextPath}/system!validateCode.html" />
								<a class="chgVertImg" href="javascript:void(0);"onclick="reImg();">看不清，换一张</a>
							<li>
								<button id="btn_register" type="submit" value=""></button>

							</li>
						</ul>
					</form>

				</div>

				<img id="split_LR"
					src="${pageContext.request.contextPath}/image/login/split_LR.png"
					alt="" />
				<div id="login_rightC">
					<img id="img_right" src="image/login/img_register1.png" /> <span
						class="lblImgInfo">已有学习账号？</span> <a class="linkImgAction"
						href="${pageContext.request.contextPath}/system!forwardLogin.html">立即去登录 &gt;&gt;</a>
				</div>

				<div class="clear"></div>
			</div>

		</div>

	</div>




	<!-- 底部 -->
<%-- 	<%@ include file="common/commonFooter.jsp"%> --%>

</body>
</html>