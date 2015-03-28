<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="col-md-4" style="width: 20%">

	<div class="panel panel-default">
		<div class="panel-body">
			<div class="list-group">
				<a
					href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html" id="myInfo"
					class="list-group-item active">个人信息</a> <a
					href="${pageContext.request.contextPath}/mycenter!forwardModifyPassword.html" id="changePwd"
					class="list-group-item">修改密码</a> <a href="#"
					class="list-group-item">上传头像</a>
			</div>
		</div>
	</div>

</div>
