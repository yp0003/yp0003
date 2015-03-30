<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" />

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
	<s:form>
		<fieldset class="fieldset-self">
			<legend>查询条件</legend>
			<table align="center" width="100%" border="0">
				<tr>
					<td align="right" width="85px">产品ID：</td>
					<td align="left"><s:textfield name="product.productId" /></td>
					<td align="right">审核状态：</td>
					<td><s:select headerKey="" headerValue="--请选择--"
							name="product.productStatus" list="productStatusList"
							listKey="dicCode" listValue="dicCn" cssStyle="width:100px" /></td>

					<td style="border: 0px; padding-right: 210px; height: 50px"
						align="right"><input type="button" value="查询"
						onclick="window.location.href='oaProduct!forwardProductList.html'" />
						<input type="button" value="新增产品"
						onclick="window.location.href='oaProduct!forwardAddProductInfo.html'" />
					</td>
				</tr>
			</table>
		</fieldset>
	</s:form>
	<s:actionmessage cssStyle="color: green" />
	<s:actionerror cssStyle="color: red" />
	<br />
	 	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>全部查询</caption>
		<thead>
			<tr>
				<th data-sort="int">序号</th>
				<th data-sort="string">产品ID</th>
				<th data-sort="string">产品名称</th>
				<th data-sort="string">讲师ID</th>
				<th data-sort="date">产品价格</th>
				<th data-sort="string">产品打折</th>
				<th data-sort="string">产品状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="productList" id="product" status="status">
				<tr onmouseover="this.bgColor='#EAF2FF'"
					onmouseout="this.bgColor='#FFFFFF'" align="center">
					<th><s:property
							value="%{(#request.pageInfo.pageNo - 1) * #request.pageInfo.pageSize + #status.index + 1}" />
					</th>
					<td align="center"><s:property value="#product.productId"></s:property></td>
					<td align="center"><s:property value="#product.productName"></s:property></td>
					<td align="center"><s:property value="#product.teacherId"></s:property></td>
					<td align="center"><s:property value="#product.productPrice"></s:property></td>
					<td align="center"><s:property value="#product.productSale"></s:property></td>
					<td align="center"><s:property
							value="#product.productStatusDic.dicCn"></s:property></td>
					<td align="center"><s:if
							test="product.productStatusDic=='000'">
							<a
								href="oaProduct!forwardCheckProduct.html?product.id=<s:property value="#product.id"></s:property>">审核</a>&nbsp;&nbsp;
							</s:if> <a
						href="oaProduct!forwardEditProduct.html?product.id=<s:property value="#product.id"></s:property>">修改</a>&nbsp;&nbsp;
						<a
						href="oaProduct!delProduct.html?product.id=<s:property value="#product.id"></s:property>">删除</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="8"><s:if test="productList.size > 0">
						<div align="right">
							<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
								pageSize="pageInfo.pageSize" count="pageInfo.count" includes="" />
						</div>
					</s:if></td>
			</tr>
		</tfoot>
	</table>


<%--	<table id="dg" title="全部课程列表" style="width: 100%;">
		<thead>
			<tr>
				<th data-options="field:'productId',width:'33%',align:'center'">产品ID</th>
				<th data-options="field:'productName',width:'33%',align:'center'">产品名称</th>
				<th data-options="field:'teacherId',width:'33%',align:'center'">讲师ID</th>
				<th data-options="field:'productPrice',width:'33%',align:'center'">产品价格</th>
				<th data-options="field:'productSale',width:'33%',align:'center'">产品打折</th>
				<th
					data-options="field:'productStatusDic',width:'33%',align:'center'">产品状态</th>

			</tr>
		</thead>
	</table>

	<div id="tb" style="height: auto">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true" onclick="modify();">修改</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-search',plain:true" onclick="remove();">删除</a>
	</div>--%>



	<script type="text/javascript">
/*		$(function() {
			$('#dg')
					.datagrid(
							{
								rownumbers : true,
								toolbar : '#tb',
								idField : 'id',
								singleSelect : true,
								pagination : true,
								method : 'get',
								url : '${pageContext.request.contextPath}/oaProduct!productList.html'
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

		function doSearch() {
			$('#dg').datagrid('load', {
				'oaEmployee.employeeId' : $('#employeeId').val(),
				'oaEmployee.employeeName' : $('#employeeName').val()
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
		//删除
		function remove() {
			var row = $('#dg').datagrid('getSelected');
			if (row == null) {
				alert("请选中一行");
			} else {
				window.location.href = 'oaEmp!toUpdatePE.html?id=' + row.id;
			}
		}*/
	</script>
</body>
</html>
