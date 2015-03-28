<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
</head>
<body>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="btn-group" role="group" aria-label="...">
            <div class="btn-group" role="group" aria-label="...">
                <button type="button" class="btn btn-default active" id="order">订单</button>
                <button type="button" class="btn btn-default" id="product">课程</button>
                <button type="button" class="btn btn-default">消息</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
$("#order").click(function(){

    window.location.href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html";
});

$("#product").click(function(){
    window.location.href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html";
});


</script>
</body>
</html>