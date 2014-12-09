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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
</head>
<script>
function uploadImage() {  
    $(document)  
            .ready(  
                    function() {  
                        var options = {  
                            url : "${pageContext.request.contextPath}/oaEmp!updateImage.html",  
                            type : "POST",  
                            dataType : "script",  
                            success : function(msg) {  
                                    $("#tipDiv").html(msg);  
                                    $("#showImage").html("<img height='250' height='250' src='${pageContext.request.contextPath}/oaEmp!showImage.html?r="+Math.random()+"'/>");  
                            }  
                        };  
                        $("#form2").ajaxSubmit(options);  
                        return false;  
                    });  
} 
</script>
<body>
         <form id="form2" method="post" enctype="multipart/form-data">  
            <table width="400" border="1" cellspacing="1" cellpadding="10">  
                <tr>  
                    <td height="25">  
                        浏览图片：  
                    </td>  
                    <td>  
                        <input id="fileupload" name="fileupload" type="file" />  
                        <div id="tipDiv"></div>  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <input type="button" class="right-button02"  
                            onclick="uploadImage()" value="上传" />  
                    </td>  
                </tr>  
            </table>  
        </form>  
        <br>  
                     图片预览  
        <div id="showImage"><img height='250' height='250' src='${pageContext.request.contextPath}/oaEmp!showImage.html?r="+Math.random()+"'/></div>  
</body>
</html>
