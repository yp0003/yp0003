<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/easyui/themes/icon.css">
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/easyui/themes/demo.css">
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>

			<link href="${pageContext.request.contextPath}/oa_css/style.css"
				rel="stylesheet" type="text/css" />
</head>
<body>
	 	<fieldset class="fieldset-self">
		<legend>员工查询</legend>
		<table align="center" width="100%" border="0">
				<label>用户账号:</label>
				<s:textfield id="employeeId" name="oaEmployee.employeeId" />
 				<label>&nbsp;&nbsp;&nbsp;&nbsp;用户名称:</label>
				<s:textfield id="employeeName" name="oaEmployee.employeeName" />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;角色:</label>
				<s:select id="rid" list="roleList" cssClass="SelectStyle1" listKey="roleId"
					listValue="name" headerKey="" headerValue="----请选则----" name="rid"/>
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button"
					onclick="doSearch();">查询</button>
		</table>
	</fieldset> 

	<br />
	<table id="dg" title="用户列表" style="width: 100%;">
		<thead>
			<tr>
				<th data-options="field:'employeeId',width:'33%',align:'center'">员工ID</th>
				<th data-options="field:'nick',width:'33%',align:'center'">员工昵称</th>
				<th data-options="field:'employeeName',width:'33%',align:'center'">员工姓名</th>
			</tr>
		</thead>
	</table>

	<div id="tb" style="height: auto">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true" onclick="modify();">修改</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-search',plain:true" onclick="setRole();">分配角色</a>
	</div>



	<script type="text/javascript">
		$(function() {
			$('#dg').datagrid({
				rownumbers:true,toolbar:'#tb',idField:'id',singleSelect:true,pagination:true,method:'get',
				url : '${pageContext.request.contextPath}/oaEmp!employeesList.html'
			});
 			var pager = $('#dg').datagrid().datagrid('getPager');
			//设置分页控件  
			var p = $('#dg').datagrid('getPager');
			$(p).pagination({
				pageSize : 10,//每页显示的记录条数，默认为10  
				pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表  
				beforePageText : '第',//页数文本框前显示的汉字  
				afterPageText : '页    共 {pages} 页',
				displayMsg : '当前显示 {from} - {to} 条记录   共 {total} 条记录'
			});
		});
		
 		function doSearch(){
			$('#dg').datagrid('load',{
				'oaEmployee.employeeId' : $('#employeeId').val(),
				'oaEmployee.employeeName': $('#employeeName').val()
			});
		}

		//修改
		function modify() {
			var row = $('#dg').datagrid('getSelected');
			if (row == null) {
				alert("请选中一行");
			} else {
				window.location.href = 'oaEmp!toUpdate.html?id=' + row.id;
			}
		}
		//分配角色
		function setRole() {
			var row = $('#dg').datagrid('getSelected');
			if (row == null) {
				alert("请选中一行");
			} else {
				window.location.href = 'oaEmp!toUpdatePE.html?id=' + row.id;
			}
		}
	</script>


</body>
</html>
