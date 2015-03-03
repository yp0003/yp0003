<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<link href="${pageContext.request.contextPath}/css/mySetting.css"
	rel="stylesheet">
<!-- link script -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

<script>
	var _hmt = _hmt || [];
	function forSubmit() {

		document.forms[0].submit();
	}
</script>
<title>订单管理</title>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="../common/commonHeader.jsp"%>

	<br />
	<div class="container" style="margin-top: 20px;">
		<div class="course-sidebar">
			<div class="course-sidebar-type lf-center lf-default">
				<a
					href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html">个人信息</a>
			</div>
			<div class="course-sidebar-type lf-center">
				<a
					href="${pageContext.request.contextPath}/mycenter!forwardModifyPassword.html">修改密码</a>
			</div>
			<div class="course-sidebar-type lf-center">
				<%-- <a href="${pageContext.request.contextPath}/mycenter!forwardUploadHander.html?user.id=${user.id}">上传头像</a> --%>
				<a href="#">上传头像</a>
			</div>
		</div>
		<!-- 		<div class="course-content"> -->

		<div class="setting-right ">
			<div class="setting-right-wrap wrap-boxes settings">


				<div id="setting-profile" class="setting-wrap setting-profile">
					<s:form action="/mycenter!updateInfo.html">
						<s:hidden name="user.id"></s:hidden>
						<div class="wlfg-wrap">
							<label class="label-name" for="nick">用户名：</label>
							<div class="rlf-group">
								<s:textfield disabled="true" name="user.userId" id="userId"
									autocomplete="off" data-validate="nick"
									class="rlf-input rlf-input-nick" placeholder="请输入昵称."></s:textfield>
								<p class="rlf-tip-wrap"></p>
							</div>
						</div>
						<div class="wlfg-wrap">
							<label class="label-name" for="nick">昵称：</label>
							<div class="rlf-group">
								<s:textfield name="user.nick" id="nick" autocomplete="off"
									data-validate="nick" class="rlf-input rlf-input-nick"
									placeholder="请输入昵称."></s:textfield>
								<%--                 <input  type="text" name="user.nick" id="nick"  autocomplete="off"  data-validate="nick"  class="rlf-input rlf-input-nick" value='<s:property value="user.nick"/>' placeholder="请输入昵称."/> --%>
								<p class="rlf-tip-wrap"></p>
							</div>
						</div>
						<div class="wlfg-wrap">
							<label class="label-name" for="nick">姓名：</label>
							<div class="rlf-group">
								<s:textfield name="user.userName" id="userName"
									autocomplete="off" data-validate="userName"
									class="rlf-input rlf-input-nick" placeholder="请输入用户名."></s:textfield>
								<p class="rlf-tip-wrap"></p>
							</div>
						</div>
						<div class="wlfg-wrap">
							<label class="label-name">性别：</label>
							<div class="rlf-group rlf-radio-group">
								<label><s:radio list="#{'男':'男','女':'女'}"
										hidefocus="true" value="1" name="sex"></s:radio></label>
							</div>
							<p class="rlf-tip-wrap"></p>
						</div>
						<div class="wlfg-wrap">
							<label class="label-name" for="job">职业</label>
							<div class="rlf-group">
								<select class="rlf-select" name="job" hidefocus="true" id="job">
									<option value="">请选择职业</option>
									<option value="1">在职人员</option>

									<option value="13" selected="selected">学生</option>
								</select>
								<p class="rlf-tip-wrap"></p>
							</div>
						</div>
						<div class="wlfg-wrap">
							<label class="label-name" for="province-select">城市</label>
							<div class="rlf-group">
								<input type="text" name="user.provinceAndCity"
									id="provinceAndCity" autocomplete="off"
									data-validate="provinceAndCity"
									class="rlf-input rlf-input-nick"
									value='<s:property value="user.provinceAndCity"/>'
									placeholder="请输入所在城市." />
								<p class="rlf-tip-wrap"></p>
							</div>
						</div>

						<div class="wlfg-wrap">
							<label class="label-name" for="nick">QQ：</label>
							<div class="rlf-group">
								<s:textfield name="user.qq" id="qq" autocomplete="off"
									data-validate="qq" class="rlf-input rlf-input-nick"
									placeholder="请输入QQ."></s:textfield>
								<%--                 <input  type="text" name="user.qq" id="userName"  autocomplete="off"  data-validate="userName"  class="rlf-input rlf-input-nick" value='<s:property value="user.qq"/>' placeholder="请输入用户名."/> --%>
								<p class="rlf-tip-wrap"></p>
							</div>
						</div>

						<div class="wlfg-wrap">
							<div class="rlf-group">
								<span id="profile-submit" hidefocus="true" aria-role="button"
									class="rlf-btn-green btn-block profile-btn"
									onclick="forSubmit()">保存</span>
							</div>
						</div>
					</s:form>
				</div>
			</div>

		</div>
	</div>




	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>