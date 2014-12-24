<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<link href="${pageContext.request.contextPath}/oa_css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function forSubmit() {
	document.forms[0].action = "oaRoy!update.html";
	document.forms[0].submit();
}
function addro() {
	window.location = "oaRoy!add.html";
	return true;
}
function reducero() {
	window.location = "oaRoy!reduce.html";
	return true;
}

function changeCen(sid){
	var lowers = document.getElementsByName("lower");
	var uppers = document.getElementsByName("upper");
	if(sid>1&&uppers[sid-1].value <= uppers[sid-2].value){
		alert("范围不能小于等于以前区间");
		uppers[sid-1].value = lowers[sid-1].value;
		return false;
	}
	lowers[sid-1].value = uppers[sid-1].value;
}
</script>
</head>
<body>
	<s:form method="POST" enctype="multipart/form-data">
        <!-- 表单内容显示 -->
        <div align="center" class="easyui-tabs">
		<div title="提成设置">
		<table align="center" cellpadding="10px" width="100%">
		<tr>
		<td>
		<fieldset class="fieldset-self">
		<legend>设置提成</legend>
		<table align="center" width="100%" cellpadding="5px" border="0">
		    <tr ><td>月销售冠军提成：
				<td><s:textfield name="champion"  onkeyup="value=value.replace(/[^\d.]/g,'')"/>%</td>
			</tr>
			<tr><td>销售提成设置</td>
				<td><input type="button" value="增加一档" onclick="addro()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="减少一档" onclick="reducero()"/></td>
			</tr>
			</table>
			<table id="stupidtable" width="100%" align="center" class="table">
			<thead>
			<tr align="center"><th>提成档次</th>
				<th>销售额度(元)</th>
				<th>提成比例</th>
			</tr>
			</thead>
				<tbody>
                <s:iterator value="list" id="roy" status="s">
                <s:hidden name="roy.id"/>
		    	<tr ><td>第<s:property value="#s.count"/>档提成：</td>
					<td><s:if test="#roy.lowerLimit==0"></s:if><s:else>
						高于<input type="text" id="lower${s.count-1}" name="lower" value="${roy.lowerLimit}" readonly="readonly"/>元</s:else>
						
						<s:if test="#roy.upperLimit==-1"></s:if><s:else>低于或等于
						<input type="text" id="upper${s.count}" name="upper" value="${roy.upperLimit}" onkeyup="value=value.replace(/[^\d]/g,'');changeCen('${s.count}')"/>元</s:else>
					<td>提成比例<input type="text" name="scale" value="${roy.scale}" onkeyup="value=value.replace(/[^\d.]/g,'')"/>%</td>
				</tr>
				</s:iterator>
				</tbody>
				</table>
            </div>
        </div>
        <!-- 表单操作 -->
<!--         <div id="InputDetailBar" align="center"> -->
<%--             <s:submit cssClass="but_b" name="add" method="add" value="保存"></s:submit>&nbsp;&nbsp;&nbsp; --%>
<!--             <input type="button" value="返回" onclick="javascript:history.go(-1);"/> -->
<!--         </div> -->
        	<table cellpadding="10px" width="100%"
		style="border-width: 0px 0px 0px 0px; border-spacing: 0; border-style: solid; border-color: #C1DAD7;">
		<tr align="center">
			<td>
				<button type="button" onclick="return forSubmit()">
						<img src="images/apply2.png" alt="保存" /> 保存
					</button> &#160;&#160;&#160;
				<button type="button" onclick="return history.back();">
					<img src="images/cross.png" alt="返回" />返回
				</button>
			</td>
		</tr>
	</table>
    </s:form >
</body>
</html>
