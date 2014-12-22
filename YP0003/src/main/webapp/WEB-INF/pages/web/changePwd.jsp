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
<link href="${pageContext.request.contextPath}/css/mySetting.css" rel="stylesheet">
<!-- link script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

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

<br/>
<div class="container">
		<div class="course-sidebar">
			<div class="course-sidebar-type lf-center">
				<a href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html">个人信息</a>
			</div>
			<div class="course-sidebar-type lf-center lf-default">
				<a href="${pageContext.request.contextPath}/mycenter!forwardModifyPassword.html">修改密码</a>
			</div>
			<div class="course-sidebar-type lf-center">
				<a href="${pageContext.request.contextPath}/mycenter!forwardUploadHander.html">上传头像</a>
			</div>
		</div>
<!-- 		<div class="course-content"> -->
		
			<div class="setting-right ">
    <div class="setting-right-wrap wrap-boxes settings" >
        

<div id="setting-profile" class="pwd-reset-wrap setting-resetpwd">
    <s:form  method="post" id="resetpwdform" action="system!updatePassword.html">

        <div class="wlfg-wrap">
            <label class="label-name" for="">旧密码</label>
            <div class="rlf-group">
            	<s:textfield   type="password" name="user.oldPassword" class="rlf-input rlf-input-pwd" placeholder="请输入当前密码"></s:textfield>
<!--                 <input  type="password" name="oldpwd" class="rlf-input rlf-input-pwd" placeholder="请输入当前密码"/> -->
                <p class="rlf-tip-wrap"></p>
            </div>
        </div>
        <div class="wlfg-wrap">
            <label class="label-name" for="newpass">新密码</label>
            <div class="rlf-group">
                <s:textfield type="password" data-validate="password" name="user.nowPassword" id="newpass" class="rlf-input rlf-input-pwd" placeholder="请输入密码"></s:textfield>
<!--                 <input  type="password" data-validate="password" name="newpass" id="newpass" class="rlf-input rlf-input-pwd" placeholder="请输入密码"/> -->
                <p class="rlf-tip-wrap"></p>
            </div>
        </div>
        <div class="wlfg-wrap">
            <label class="label-name" for="confirm">确认新密码</label>
            <div class="rlf-group">
            	<s:textfield type="password" name="user.nowPassword" id="confirm" class="rlf-input rlf-input-pwd" placeholder="请输入密码"></s:textfield>
<!--                 <input  type="password" name="confirm" id="confirm" class="rlf-input rlf-input-pwd" placeholder="请输入密码"/> -->
                <p class="rlf-tip-wrap"></p>
            </div>
        </div>
        <div class="wlfg-wrap">
            <label class="label-name" for=""></label>
            <div class="rlf-group">
                <span id="resetpwd-btn-save"  hidefocus="true"   aria-role="button" class="rlf-btn-green btn-block" onclick="forSubmit()">保存</span>
            </div>
        </div>
    </s:form >
</div>
</div>


    </div>
<!--   </div> -->
</div>
	
 


	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>