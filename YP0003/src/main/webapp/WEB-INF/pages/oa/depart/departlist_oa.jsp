<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>

<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div>
		<fieldset class="fieldset-self">
			<legend>新增部门</legend>
			<table align="center" width="100%" border="0">
				<tr >
					<td colspan="6" style="border: 0px;padding-right: 210px;height: 20px" align="right">
						<input type="button" value=" 新增部门" onclick="window.location.href='oaDepart!toAdd.html'" />
					</td>
				</tr>
			</table>
		</fieldset>
		<br>
		<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
			部门列表
		</caption>
			<thead>
				<tr>
					<th data-sort="int">序号</th>
					<th data-sort="string">名称</th>
					<th data-sort="string">说明</th>
					<th data-sort="string">层级</th>
					<th data-sort="string">操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="departmentList" status="s" id="depart">
					<tr>
						<td align="center"><s:property value="#s.count" /></td>
						<td >
						<s:iterator begin="1" end="#depart.level">&nbsp;&nbsp;&nbsp;</s:iterator>
						${depart.departName}</td>
						<td align="center">${depart.remark}</td>
						<td align="center">${depart.level}</td>
						<td align="center">
						<a href="oaDepart!toUpdate.html?id=${depart.id}">修改</a>&nbsp;&nbsp;
						<a href="oaDepart!del.html?id=${depart.id}" onclick="javascript:return p_del()">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
	
</body>
</html>
<script type="text/javascript">
//删除确认
function p_del() {
	if (confirm("您真的确定要删除吗？\n\n请确认！")==true){
	return true;
	}else{
	return false;
	}
}
</script>
