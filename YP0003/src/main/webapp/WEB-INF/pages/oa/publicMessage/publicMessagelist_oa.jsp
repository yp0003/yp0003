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
</head>
<body class="easyui-layout">
<br>
	<div>
		<table  width="80%" border="0" align="center" cellpadding="0" cellspacing="1" >
			<thead>
				<tr >
					<td colspan="6" style="border: 0px;padding-right: 210px;height: 50px" align="right">
						<input type="button" value="新增公告" onclick="window.location.href='oaPM!toAdd.html'" />
					</td>
				</tr>
				<tr>
					<th>公告ID</th>
					<th>发送时间</th>
					<th>发送内容</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pmList" id="pm">
					<tr>
						<td height="30px" align="center">${pm.publicMessageId}</td>
						<td align="center"><s:date name="#pm.sendTime" format="yyyy年MM月dd日" /></td>
						<td align="center">${pm.sendContent}</td>
						<td align="center">
						<a href="oaPM!toUpdate.html?id=${pm.id}">修改</a>&nbsp;&nbsp;
						<a href="oaPM!del.html?id=${pm.id}">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
	
</body>
</html>
