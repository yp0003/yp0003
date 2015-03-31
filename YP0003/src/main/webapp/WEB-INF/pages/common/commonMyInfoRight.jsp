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
        <div class="col-md-12">
            <img src="../../../image/avata.jpg" alt="..."
                 style="width: 212px; height: 200px;"/>
        </div>
        <div class="col-md-12">
            <div class="caption">
                <h3><s:property value="user.userId"/></h3>

                <p class="text-muted">这位童鞋很懒，什么也没有留下～～！</p>

                <p></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>