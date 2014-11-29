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
						<input type="button" value="写消息" onclick="window.location.href='oaMessage!toAdd.html'" />
					</td>
				</tr>
				<tr>
					<th>发送者ID</th>
					<th>发送时间</th>
					<th>消息状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="messageList" id="mess">
					<tr>
						<td height="30px" align="center">${mess.sendUserId}</td>
						<td height="30px" align="center"><s:date name="#mess.sendTime" format="yyyy年MM月dd日hh时mm分" /></td>
						<td height="30px" align="center">${mess.messStatus}</td>
						<td align="center">
						<a href="oaMessage!toUpdate.html?id=${mess.id}">读取</a>&nbsp;&nbsp;
						<a href="oaMessage!del.html?id=${mess.id}">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
	
</body>
</html>
