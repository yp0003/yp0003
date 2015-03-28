<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>订单管理</title>
</head>
<body style="background-color: #EEEEEE">
	<!-- 头部 -->
	<%@ include file="../common/commonHeader.jsp"%>
	<div class="container-fluid" style="width: 80%; padding-top: 40px;">

		<div class="row">
			<%@ include file="../common/mySetCommon.jsp"%>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-body">

						<form
							action="${pageContext.request.contextPath}/mycenter!updateInfo.html"
							class="form-horizontal" method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">用户名：</label>
								<div class="col-md-4">
									<s:textfield type="text" cssClass="form-control" id="userName"
										name="user.userId" placeholder="请输入用户名"></s:textfield>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">昵称：</label>
								<div class="col-md-4">
									<s:textfield type="text" cssClass="form-control" id="userName"
										name="user.nick" placeholder="请输入昵称"></s:textfield>
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">姓名：</label>
								<div class="col-md-4">
									<s:textfield type="text" cssClass="form-control" id="userName"
										name="user.userName" placeholder="请输入姓名"></s:textfield>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">姓别：</label>
								<div class="col-md-4">
									<label class="radio-inline"> <input type="radio"
										name="inlineRadioOptions" id="inlineRadio1" value="option1">
										男
									</label> <label class="radio-inline"> <input type="radio"
										name="inlineRadioOptions" id="inlineRadio2" value="option2">
										女
									</label>
								</div>
							</div>



							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">职业：</label>
								<div class="col-md-4">
									<select class="form-control">
										<option>老师</option>
										<option>学生</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">城市：</label>
								<div class="col-md-4">
									<input type="email" class="form-control" id="userName"
										placeholder="请输入您的所在城市">
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-md-2 control-label">QQ：</label>
								<div class="col-md-4">
									<s:textfield type="text" cssClass="form-control" id="userName"
										name="user.qq" placeholder="请输入QQ号码"></s:textfield>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-4 col-md-offset-3">
									<button type="submit" class="btn  btn-md btn-success">保存</button>
								</div>
							</div>
							<s:hidden name="user.id"></s:hidden>
							<form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		var _hmt = _hmt || [];
		function forSubmit() {

			document.forms[0].submit();
		}
	</script>

	<%-- <%@ include file="../common/commonFooter.jsp"%> --%>
</body>
</html>