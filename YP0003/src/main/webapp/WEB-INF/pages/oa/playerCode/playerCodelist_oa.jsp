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
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
			播放码授权
		</caption>
		<thead>
			<tr>
				<th data-sort="string">课程名称</th>
				<th data-sort="string">机器码</th>
				<th data-sort="string">申请人</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" id="code">
				<tr>
					<td align="center">${code.product.productName}</td>
					<td align="center">${code.smartCode}</td>
					<td align="center">${code.userId}</td>
					<td align="center">
						<a href="oaPlayCode!toUpdate.html?id=${code.id}">授权播放码</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="10">
 					<s:if test="empList.size > 0"> 
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
