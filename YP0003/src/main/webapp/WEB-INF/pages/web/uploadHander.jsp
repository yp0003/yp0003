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
				<a href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html">个人信息</a>
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
        
		<div id="setting-avator" class="setting-wrap setting-avator clearfix">
	<div class="avator-img l">
		<div>
<%-- 			<img src='${pageContext.request.contextPath}/mycenter!showUserHeader.html?employee.id=${user.id}' width='220' height='220' /> --%>
			
			<img src='http://img.mukewang.com/user/54584f0b000124f802200220-220-220.jpg' width='220' height='220' />
		
			</div>
<!-- 		<div><input type="button" hidefocus="true" value="换一换" class="js-avator-try avator-try"></div> -->
	</div>
	<div class="avator-btn-group">
		<div id="avator-btns" class="avator-btn-inner">
	         
	        
	        <div class="avator-btn-wrap">
<%-- 	        	<s:form   action="postpic" method="post" enctype="multipart/form-data"> --%>
<!-- 	        		<input type='file' id='scan' name='scan' />  -->
<%-- 	        	</s:form> --%>
				<form target="uploadtarget">
		            <a href="javascript:void(0)" hidefocus="true" class="avator-btn-fake">上传头像</a>
		            <input type="file" title="上传头像" name="scan" id="upload"  accept="image/*" />
		            <input type="hidden" name="type" value="1" />
	            </form>
                <iframe src="about:blank" id="uploadtarget" name="uploadtarget" frameborder="0" style="display:none;"></iframe>
	        </div>
		</div>
		<div class="avator-upload-wrap" style="display:none;">
			<span hidefocus="true"  id="avator-btn-save" aria-role="button" class="rlf-btn-green btn-block">保存</span> 
		</div>
	</div>

</div>

</div>


    </div>
<!--   </div> -->
</div>
	
 


	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>