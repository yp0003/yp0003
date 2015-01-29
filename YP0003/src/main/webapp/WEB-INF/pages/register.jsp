<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- link css -->
<link rel="stylesheet"
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" />
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
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script
	src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<title>注册</title>
</head>
<body>


	<div id="mainDiv" class="container">
		<div class="row" style="text-align: center;">
			<div class="col-lg-12">
				<div id="messageError" class="alert alert-danger " role="alert">
					<s:actionmessage/>
					<s:fielderror />
				</div>
			</div>
		</div>
	</div>


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
							<li><label for="memberID">用户名:</label> <input id="memberID"
								type="text" placeHolder="请输入6个以上的字符作为用户名" name="user.userId" />
								<span class="redStar">*</span></li>
							<li><label for="passWord">密码:</label> <input id="passWord"
								type="password" placeHolder="英文数字或字符,6-20位区分大小写"
								name="user.nowPassword" /> <span class="redStar">*</span></li>
							<li><label for="passWord">确认密码:</label> <input id="passWord"
								type="password" name="user.repassword" /> <span class="redStar">*</span></li>
							<li><label for="passWord">电子邮箱:</label> <input id="passWord"
								type="text" placeHolder="请输入邮箱" name="user.email" /> <span
								class="redStar">*</span></li>
							<li><label for="vertCode">验证码:</label> <input
								id="registValidateCode" type="text" name="validateCode"
								style="width: 70px;" /> <img id="vertImg"
								src="${pageContext.request.contextPath}/system!validateCode.html" />
								<a class="chgVertImg" href="javascript:void(0);"
								onclick="reImg();">看不清,换一张</a>
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
						href="${pageContext.request.contextPath}/system!forwardLogin.html">立即去登录
						&gt;&gt;</a>
				</div>

				<div class="clear"></div>
			</div>

		</div>

	</div>

	<script type="text/javascript">
		function reImg() {
			$("#vertImg").attr(
					"src",
					"${pageContext.request.contextPath}/system!validateCode.html?time="
							+ new Date());
		}

		if ($("#messageError").text().trim() != null) {
			$("#mainDiv").show();
		} else {
			$("#mainDiv").hide();
		}
	</script>
</body>
</html>