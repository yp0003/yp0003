<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="com.yfann.web.page" prefix="p" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap3/bootstrap.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap3/bootstrap-theme.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${pageContext.request.contextPath}/bootstrap3/jquery-1.11.1.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/bootstrap3/bootstrap.js"></script>
    <title>我的课程</title>
</head>
<body style="background-color: #EEEEEE">
<!-- 头部 -->
<%@ include file="../common/commonHeader.jsp" %>
<div class="container-fluid" style="width: 80%;padding-top: 40px;">
    <div class="row">
        <div class="col-md-4" style="width: 20%">
            <%@include file="../common/commonMyInfoRight.jsp"%>
        </div>
        <div class="col-md-8">
            <%@include file="../common/commonMySet.jsp"%>


            <div class="panel panel-default">
                <div class="panel-body">


                    <s:debug></s:debug>
                    <table class="table table-bordered" style="text-align: center">
                        <thead>
                        <tr>
                            <th>课程名称</th>
                            <th>授权状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        <s:iterator value="myProductList" id="myProduct">
                        <tr>
                            <td><s:property value="#myProduct.product.productName"></s:property></td>
                            <td><s:property value="#myProduct.accreditStatusDic.dicCn"></s:property></td>
                            <td>
                                <s:if test="#myProduct.accreditStatusDic.dicCode == 0">
                                    <a href="#">
                                    <button type="button" class="btn btn-sm btn-primary">提交机器码</button></a>
                                </s:if>

                                <s:if test="#myProduct.accreditStatusDic.dicCode == 1">
                                <a href="#"><button type="button" class="btn btn-sm btn-primary">提交机器码</button></a>
                                    &nbsp;
                                <button type="button" class="btn btn-sm btn-primary" onclick="takeProductInfo();">获取播放码</button>
                                </s:if>
                            </td>
                        </tr>
                        </s:iterator>

                        </tbody>


                        <tfoot>

                        <tr>

                            <td colspan="4">

                                <nav>
                                    <ul class="pagination">
                                        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a>
                                        </li>
                                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                    </ul>
                                </nav>
                            </td>
                        </tr>
                        </tfoot>
                    </table>

                </div>

            </div>
        </div>

    </div>
</div>
<%@ include file="../common/commonFooter.jsp" %>
<script type="text/javascript">
    $(function() {
        $('#order').removeClass("active");
        $('#product').addClass("active");
    });




    function takeProductInfo(){
        $.post('${pageContext.request.contextPath}/mycenter!takePlayerInfo.html', {"product.id":<s:property value="#myProduct.product.id"/>}, function (text) { alert(text); });
    }
</script>
</body>
</html>