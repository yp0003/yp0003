<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<!-- Site CSS -->
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="http://static.bootcss.com/www/assets/css/site.min.css?v3"
	rel="stylesheet" />

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed"
	href="http://static.bootcss.com/www/assets/ico/apple-touch-icon-precomposed.png" />
<link rel="shortcut icon"
	href="http://static.bootcss.com/www/assets/ico/favicon.png" />
<script
	src="${pageContext.request.contextPath}/bootstarp/js/jquery.min.js"></script>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstrap.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/jquery.unveil.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/jquery.scrollUp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/toc.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstarp/js/bootstarp/js/site.min.js"></script>

<script>
	var _hmt = _hmt || [];
</script>

</head>
<body>
	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>

	<div class="container-fluid" style="width: 1300px; margin-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li><a href="#">个人中心</a></li>
			<li class="active">个人信息</li>
		</ol>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="common/mypageCommon.jsp"%>
			</div>
			<div class="col-lg-10">
							<s:form action="mycenter!updateInfo.html">
					<div align="center">
						<legend>个人详情</legend>
					</div>
					<table align="center" style="margin-top: 10px" class="table table-striped">
					<s:hidden name="user.id"></s:hidden>
						<tbody>
							<tr>
								<td><h4>
										<span class="label label-primary">姓名：</span>
									</h4></td>
								<td><s:textfield name="user.userName" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">昵称：</span>
									</h4></td>
								<td><s:textfield name="user.nick" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">生日：</span>
									</h4></td>
								<td><s:textfield name="user.birthday" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">性别：</span>
									</h4></td>
								<td><s:textfield name="user.sex" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">身份证号：</span>
									</h4></td>
								<td><s:textfield name="user.idcardNumber" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">学历：</span>
									</h4></td>
								<td><s:textfield name="user.education" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">留学国家：</span>
									</h4></td>
								<td><s:textfield name="user.foreignCountrie" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">毕业学校：</span>
									</h4></td>
								<td><s:textfield name="user.graduateSchool" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">手机：</span>
									</h4></td>
								<td><s:textfield name="user.phoneNumber" cssClass="form-control"></s:textfield></td>
							</tr>

							<tr>
								<td><h4>
										<span class="label label-primary">国籍：</span>
									</h4></td>
								<td><s:textfield name="user.countrie" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">省市：</span>
									</h4></td>
								<td><s:textfield name="user.provinceAndCity" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">地址：</span>
									</h4></td>
								<td><s:textfield name="user.address" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">邮编：</span>
									</h4></td>
								<td><s:textfield name="user.zipCode" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">邮箱：</span>
									</h4></td>
								<td><s:textfield name="user.email" cssClass="form-control"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">QQ：</span>
									</h4></td>
								<td><s:textfield name="user.qq" cssClass="form-control"></s:textfield></td>
							</tr>
						</tbody>
					</table>
					<div align="center">
						<s:submit value="确定修改" cssClass="btn btn-primary"></s:submit>
					</div>
				</s:form>
			</div>

		</div>
	</div>


















	<!-- 底部 -->
	<%@ include file="common/commonFooter.jsp"%>



















</body>
</html>