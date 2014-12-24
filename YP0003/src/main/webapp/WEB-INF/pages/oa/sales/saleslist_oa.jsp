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
			<legend>销售记录</legend>
			<table align="center" width="100%" border="0">
				<tr >
					<td colspan="6" style="border: 0px;padding-right: 210px;height: 20px" align="right">
						<input type="button" value=" 新增销售记录" onclick="window.location.href='oaSales!toAdd.html'" />
					</td>
				</tr>
			</table>
		</fieldset>
		<br>
	<table id="stupidtable" width="80%" align="center" class="table">
		<caption>
			销售列表
		</caption>
		<thead>
			<tr>
				<th data-sort="string">学员账号</th>
				<th data-sort="string">销售码</th>
				<th data-sort="string">登记时间</th>
				<th data-sort="string">金额</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="oaSaleslist" id="sales">
				<tr>
					<td align="center">${sales.userId}</td>
					<td align="center">${sales.salesCode}</td>
					<td align="center"><s:date name="#sales.createTime" format="yyyy年MM月dd日HH时mm分" /></td>
					<td align="center">${sales.price}</td>
					<td align="center">
						<a href="oaSales!view.html?id=${sales.id}">查看</a>
						<a href="oaSales!del.html?id=${sales.id}" onclick="javascript:return p_del()">删除</a>
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
