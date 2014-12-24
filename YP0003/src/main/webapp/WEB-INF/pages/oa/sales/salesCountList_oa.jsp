<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="com.yfann.web.page" prefix="p"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>

<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div>
		<fieldset class="fieldset-self">
			<legend>员工查询</legend>
			<table align="center" width="100%" border="0">
			 <s:form action="oaSales!salesCountList.html" id="register">
			    <label for="passWord">月份:</label>
    			<s:textfield id="d243" name="date" readonly="true" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM'})"/>
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" value="">查询</button>
			  </s:form>
			</table>
		</fieldset>
		<br>
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
			员工列表
		</caption>
		<thead>
			<tr>
				<th data-sort="string">员工账号</th>
				<th data-sort="string">销售额</th>
				<th data-sort="string">销售提成</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="salesCountList" id="count">
				<tr>
					<td align="center">${count.empid}</td>
					<td align="center"><fmt:formatNumber value="${count.total}" pattern="#0.00" /></td>
					<td align="center"><fmt:formatNumber value="${count.money}" pattern="#0.00" /></td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="10">
 					<s:if test="salesCountList.size > 0"> 
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
