<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/demo.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>

<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div>
		<fieldset class="fieldset-self">
			<legend>课程组合</legend>
			<table align="center" width="100%" border="0">
				<tr >
					<td colspan="6" style="border: 0px;padding-right: 210px;height: 20px" align="right">
						<input type="button" value=" 新增课程组合" onclick="window.location.href='oaGroupProduct!toAdd.html'" />
					</td>
				</tr>
			</table>
		</fieldset>
		<br>
	<table id="stupidtable" width="80%" align="center" class="table">
		<caption>
			课程组合列表
		</caption>
		<thead>
			<tr>
				<th data-sort="string">组合名称</th>
				<th data-sort="string">打折前价格</th>
				<th data-sort="string">折扣</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="groupProducts" id="gp">
				<tr>
					<td align="center">${gp.groupName}</td>
					<td align="center">${gp.groupPrice}</td>
					<td align="center">${gp.groupSale}%</td>
					<td align="center">
						<a href="oaGroupProduct!toUpdate.html?id=${gp.id}">修改</a>
						<a href="oaGroupProduct!del.html?id=${gp.id}" onclick="javascript:return p_del()">删除</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="10">
 					<s:if test="oaSaleslist.size > 0"> 
						<div align="right">
							<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
 								pageSize="pageInfo.pageSize" count="pageInfo.count"
							includes="" />
						</div>
					</s:if> 
				</td>
			</tr>
		</tfoot>
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
