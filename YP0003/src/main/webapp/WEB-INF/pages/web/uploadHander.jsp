<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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


<!-- jcrop -->
<link
	href="${pageContext.request.contextPath}/jcrop/jquery.Jcrop.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jcrop/jquery.color.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jcrop/jquery.Jcrop.min.js"></script>

<script>
	var _hmt = _hmt || [];
	function onSubmit() {
		//	document.forms[0].action = "mycenter!saveHeadImg.html";
		document.forms[0].submit();
	}
	
	function readURL(input) {    
        if (input.files && input.files[0]) {  
            alert("OK");  
            var reader = new FileReader();  
              
            reader.onload = function (e) {  
                $('#displayImg').removeAttr('src');  
                $('#displayImg').attr('src', e.target.result);  
                alert(e.target.result);  
                var api = $('#displayImg').Jcrop({  
                    setSelect: [ 20, 20, 200, 200 ],  
                    aspectRatio: 1,  
                    onSelect: updateCoords  
                    }  
                );  
            }  

            reader.readAsDataURL(input.files[0]);  
        } 
    }  
      
    function updateCoords(c){     
        $('#x').val(c.x);  
        $('#y').val(c.y);  
        $('#w').val(c.w);  
        $('#h').val(c.h);  
    };  
</script>
<title>订单管理</title>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="../common/commonHeader.jsp"%>

	<br />
	<div class="container">
		<div class="course-sidebar">
			<div class="course-sidebar-type lf-center">
				<a
					href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html">个人信息</a>
			</div>
			<div class="course-sidebar-type lf-center lf-default">
				<a
					href="${pageContext.request.contextPath}/mycenter!forwardModifyPassword.html">修改密码</a>
			</div>
			<div class="course-sidebar-type lf-center">
				<a href="#">上传头像</a>
				<%-- <a href="${pageContext.request.contextPath}/mycenter!forwardUploadHander.html?user.id=${user.id}">上传头像</a> --%>
			</div>
		</div>
		<!-- 		<div class="course-content"> -->

		<div class="setting-right ">
			<div class="setting-right-wrap wrap-boxes settings">

				<div id="setting-avator"
					class="setting-wrap setting-avator clearfix">
					<div class="avator-img l">
						<div>
							<s:if test="byteArrayInputStream != null">
								<img
									src='${pageContext.request.contextPath}/mycenter!showUserHeader.html?user.id=${user.id}'
									width='220' height='220' />
							</s:if>
							<s:else>
								<img
									src='http://img.mukewang.com/user/54584f0b000124f802200220-220-220.jpg'
									width='220' height='220' />
							</s:else>
						</div>
					</div>
					<div class="avator-btn-group">
						<div id="avator-btns" class="avator-btn-inner">
							<div class="avator-btn-wrap">
								<form action="mycenter!saveHeadImg.html"
									enctype="multipart/form-data" method="post">
									<a href="javascript:void(0)" hidefocus="true"
										class="avator-btn-fake">上传头像</a> <input type="file"
										name="file" onchange="onSubmit()" />
									<s:hidden name="user.id"></s:hidden>
								</form>
							</div>
						</div>
					</div>
					<button id="wegw" data-toggle="modal" data-target="#myModal">选择</button>
				</div>
			</div>
		</div>
	</div>




	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">

					<input type="button" class="upload-cover" value="上传图片" /> <input
						class="photo-file" type="file" name="imgFile" id="fcupload"
						onchange="readURL(this);" /> <input type="hidden" id="x" name="x" />
					<input type="hidden" id="y" name="y" /> <input type="hidden"
						id="w" name="w" /> <input type="hidden" id="h" name="h" /> <input
						type="submit" value="上传" id="upload" />

					<img alt="" src="" id="displayImg" />

				</div>
			</div>
		</div>
	</div>
	<%@ include file="../common/commonFooter.jsp"%>
</body>
</html>