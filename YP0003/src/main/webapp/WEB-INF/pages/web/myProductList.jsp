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

                    <table class="table table-bordered" style="text-align: center">
                        <thead>
                        <tr>
                            <th>课程名称</th>
                            <th>授权状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>测试课程</td>
                            <td>未授权</td>
                            <td>
                                <button type="button" class="btn btn-sm btn-primary">提交机器码</button>
                                &nbsp;
                                <button type="button" class="btn btn-sm btn-danger">获取播放码</button>
                            </td>
                        </tr>

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

<%--
		<div class="mymain-content l " style="margin-left: 20px;">
			<div class="myspace-list l " style="float: left;">
				<a
					href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html"
					class="myspace-course"><span>订单</span></a> <a
					href="${pageContext.request.contextPath}/mycenter!forwardMyProductList.html"
					class="myspace-plan"><span>课程</span></a> <a
					href="${pageContext.request.contextPath}/mycenter!forwardMyMessage.html"
					class="myspace-ques "><span>消息</span></a>
				&lt;%&ndash;            <a href="#" class="myspace-note "><span>设置</span></a> &ndash;%&gt;
			</div>

			<div class="myspace-courselist myspace-bg r">

				<div class="main-bd ">
					<!-- clearfix -->
					<div class="space-tabs-menu">
						<ul>
							<li><a href="" class="curr">我的课程</a></li>
						</ul>

						<div style="left: 0px" class="dot-curr"></div>
					</div>
					<div class="uncode">
						<div class="course-content course-content1">
							<div class="course-list">
								<div class="js-course-list">
									<ul>
										<s:iterator value="myProductList" id="myProduct">
											<li><a
												href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#myProduct.product.id"/>">
													<div class="course-list-img">
														<img width="280" height="160"
															src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=<s:property value="#myProduct.product.id"/>"
															alt="<s:property value="#myProduct.product.productName"/>" />
													</div>
													<h5>
														<span class="topicon"> <s:property
																value="#myProduct.product.productName" />
														</span>
													</h5>
													<div class="intro">
														<p>
															<s:property value="#myProduct.product.productKnows" />
														</p>
														<span class="l">更新至<s:property
																value="#myProduct.product.updateBadge" />-<s:property
																value="#myProduct.product.updateMatter" /></span> <span
															class="r">课程时长：<s:property
																value="#myProduct.product.productLang" /></span>
													</div>
													<div class="tips">
														<span class="l"><s:date name="#pl.updateTime"
																format="yyyy-MM-dd" />更新</span> <span class="r"><s:property
																value="#myProduct.product.buyCount" />人学习</span>
													</div>
											</a>
												<div class="shop">
													<span><a
														href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#myProduct.product.id"/>">
															<button class="btn" type="button">提交机器码</button>
													</a> </span> <span><a
														href="${pageContext.request.contextPath}/product!forwardProductDetail.html?product.id=<s:property value="#myProduct.product.id"/>">
															<button class="btn" type="button">获取播放信息</button>
													</a> </span>
												</div></li>
										</s:iterator>

									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>


		</div>


	</div>--%>


<%@ include file="../common/commonFooter.jsp" %>
<script type="text/javascript">
    $(function() {
        $('#order').removeClass("active");
        $('#product').addClass("active");
    });
</script>
</body>
</html>