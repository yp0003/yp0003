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
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico"
	type="image/x-icon" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/jquery.last.min.js">
	//
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/stupidtable.min.js">
	//
</script>
<link
	href="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/themes/default/easyui.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/themes/icon.css"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/jquery.easyui.min.js">
	//
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/oa_js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">
	//
</script>
<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

</script>
</head>
<body>
	<s:form >
		<fieldset class="fieldset-self">
			<legend>查询条件</legend>
			<table align="center" width="100%" border="0">
				<tr>
					<td colspan="6" style="border: 0px;padding-right: 210px;height: 50px" align="right">
						<input type="button" value="写消息" onclick="window.location.href='oaMessage!toAdd.html'" />
					</td>
				</tr>
			</table>
		</fieldset>
	</s:form>
	<s:actionmessage cssStyle="color: green" />
	<s:actionerror cssStyle="color: red" />
	<br />
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
			全部查询
		</caption>
		<thead>
			<tr>
				<th data-sort="int">序号</th>
				<th data-sort="string">发送者ID</th>
				<th data-sort="string">发送时间</th>
				<th data-sort="string">消息状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="messageList" id="msg" status="status" >
					<tr onmouseover="this.bgColor='#EAF2FF'"
					onmouseout="this.bgColor='#FFFFFF'" align="center">
						<th><s:property
							value="%{(#request.pageInfo.pageNo - 1) * #request.pageInfo.pageSize + #status.index + 1}" />
						</th>
						<td align="center"><s:property value="#msg.sendUserId"></s:property></td>
						<td align="center"><s:property value="#product.sendTime"></s:property></td>
						<td align="center"><s:property value="#product.sendContent"></s:property></td>
						<td align="center">
						<a href="oaProduct!forwardEditProduct.html?product.id=<s:property value="#product.id"></s:property>">修改</a>&nbsp;&nbsp;
						<a href="oaProduct!delProduct.html?product.id=<s:property value="#product.id"></s:property>" onclick="javascript:return p_del()">删除</a>
						</td>
					</tr>
				</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="8">
 					<s:if test="messageList.size > 0"> 
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
