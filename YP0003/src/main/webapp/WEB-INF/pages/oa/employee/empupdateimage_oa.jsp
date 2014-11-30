<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
</head>
   <script type="text/javascript" language="javascript">
        $(function() {
            $('#fileUp').change(function() {
                $('#uploadLog').html('开始上传中....');
                $('#formFile').submit();
            });
        })
        function uploadSuccess(msg) {
            if (msg.split('|').length > 1) {
                $('#imgShow').attr('src', msg.split('|')[1]);
                $('#uploadLog').html(msg.split('|')[0]);
            } else {
                $('#uploadLog').html(msg);
            }
        }
    </script>
<body>
<form id='formFile' name='formFile' method="post" action="oaEmp!updateImage.html" enctype="multipart/form-data">
    <input type='file' id='fileUp' name='fileUp' />
    <div id='uploadLog'>
    </div>
    <br />
    <img width='200' src='' height='200' id='imgShow' alt='缩略图' />
    </form>
    <!--
        这个iframe拿到post过来的表单数据后会开始在自身内部访问post过来的页面地址,在内部中它会刷新页面，
        但是这已不重要了，因为当前的iframe已经被我display:none隐藏了！所以这样给用户看起来像是无刷新的
        页面文件上传，其实只是做一个一个小小的技巧！
    -->
    <iframe id='frameFile' name='frameFile' style='display: none;'></iframe>

</body>
</html>
