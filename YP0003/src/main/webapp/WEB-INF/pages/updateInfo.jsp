<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/itedu.js"></script>
<script language="JavaScript" type="text/javascript"
	src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>

<link href="${pageContext.request.contextPath}/css/index.css"
	type="text/css" rel="stylesheet" />

</head>
<body>
	<!-- 头部 -->
	<%@ include file="common/common.jsp"%>







	<div id="main" class="mt49">
		<div class="banner">&nbsp;</div>
		<div class="mb">
			<ul class="breadcrumb">
				<li><a href="index.html">首页</a> <span class="divider">/</span></li>
				<li><a href="center.html">个人中心</a> <span class="divider">/</span></li>
				<li class="active">修改个人信息</li>
			</ul>
		</div>
		<div class="container">
			<%@ include file="common/mypageCommon.jsp"%>
			<div class="course-content">
				<s:form action="mycenter!updateInfo.html">
					<div align="center">
						<legend>个人详情</legend>
					</div>
					<table align="center" style="margin-top: 10px" class=".table">
					<s:hidden name="user.id"></s:hidden>
						<tbody>
							<tr>
								<td><h4>
										<span class="label label-primary">姓名：</span>
									</h4></td>
								<td><s:textfield name="user.userName"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">昵称：</span>
									</h4></td>
								<td><s:textfield name="user.nick"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">生日：</span>
									</h4></td>
								<td><s:textfield name="user.birthday"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">性别：</span>
									</h4></td>
								<td><s:textfield name="user.sex"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">身份证号：</span>
									</h4></td>
								<td><s:textfield name="user.idcardNumber"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">学历：</span>
									</h4></td>
								<td><s:textfield name="user.education"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">留学国家：</span>
									</h4></td>
								<td><s:textfield name="user.foreignCountrie"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary" style="">毕业学校：</span>
									</h4></td>
								<td><s:textfield name="user.graduateSchool"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">手机：</span>
									</h4></td>
								<td><s:textfield name="user.phoneNumber"></s:textfield></td>
							</tr>

							<tr>
								<td><h4>
										<span class="label label-primary">国籍：</span>
									</h4></td>
								<td><s:textfield name="user.countrie"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">省市：</span>
									</h4></td>
								<td><s:textfield name="user.provinceAndCity"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">地址：</span>
									</h4></td>
								<td><s:textfield name="user.address"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">邮编：</span>
									</h4></td>
								<td><s:textfield name="user.zipCode"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">邮箱：</span>
									</h4></td>
								<td><s:textfield name="user.email"></s:textfield></td>
							</tr>
							<tr>
								<td><h4>
										<span class="label label-primary">QQ：</span>
									</h4></td>
								<td><s:textfield name="user.qq"></s:textfield></td>
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