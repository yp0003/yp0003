<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 程序包含开始 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap3/bootstrap.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap3/bootstrap-theme.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${pageContext.request.contextPath}/bootstrap3/jquery-1.11.1.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/bootstrap3/bootstrap.js"></script>

    <style>
        /*
         * Style tweaks
         * --------------------------------------------------
         */
        html,
        body {
            overflow-x: hidden; /* Prevent scroll on narrow devices */
        }
        body {
            padding-top: 70px;
        }
        footer {
            padding: 30px 0;
        }

        /*
         * Off Canvas
         * --------------------------------------------------
         */
        @media screen and (max-width: 767px) {
            .row-offcanvas {
                position: relative;
                -webkit-transition: all .25s ease-out;
                -o-transition: all .25s ease-out;
                transition: all .25s ease-out;
            }

            .row-offcanvas-right {
                right: 0;
            }

            .row-offcanvas-left {
                left: 0;
            }

            .row-offcanvas-right
            .sidebar-offcanvas {
                right: -50%; /* 6 columns */
            }

            .row-offcanvas-left
            .sidebar-offcanvas {
                left: -50%; /* 6 columns */
            }

            .row-offcanvas-right.active {
                right: 50%; /* 6 columns */
            }

            .row-offcanvas-left.active {
                left: 50%; /* 6 columns */
            }

            .sidebar-offcanvas {
                position: absolute;
                top: 0;
                width: 50%; /* 6 columns */
            }
        }


    </style>
<title>365ITEDU网</title>


</head>
<!-- Navbar
    ================================================== -->
<%@ include file="../common/commonHeader.jsp"%>
<!-- 程序包含结束 -->



<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
            <p class="pull-right visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
            </p>
            <div class="jumbotron">
                <h1><s:property value="product.productName"/></h1>
                <p class="lead"><s:property value="product.productDesc"/></p>
                <p><a class="btn btn-lg btn-success" href="#" role="button">立即购买</a></p></div>
            <div class="row">
                <div class="col-xs-6 col-lg-4">
                    <h2>课程价格</h2>
                    <p>￥<s:property value="product.productPrice"/></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>更新时间</h2>
                    <p><s:date name="product.updateTime"/></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>课程分类</h2>
                    <p>
						<s:if test="product.productKind!=null">
							<s:property value="product.productKind.productKind"/>
						</s:if>
						<s:else>
							无
						</s:else>
					</p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>更新章节</h2>
                    <p><s:property value="product.updateBadge"/>-<s:property value="product.updateMatter"/></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>课程须知</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>更新时间</h2>
                    <p>2012-11-11</p>
                </div><!--/.col-xs-6.col-lg-4-->
            </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
            <div class="list-group">
                <a href="#" class="list-group-item active">课程概览</a>
                <a href="#" class="list-group-item">名师简介</a>
                <a href="#" class="list-group-item">课程评论</a>
            </div>
        </div><!--/.sidebar-offcanvas-->
    </div><!--/row-->

    <hr>


    <h3>课程详情</h3>
    <hr>



    <hr>

    <h3>课程精彩截图</h3>
    <hr>



    <hr>

    <footer>
        <p>&copy; Company 2014</p>
    </footer>

</div><!--/.container-->
<%--
<div id="main" class="mt49">
	<!--  <a class="back-btn"> 课程类别>java</a> -->
	<div class="container1000" id="course_intro">

		<div class="course-title">

			<h1>${product.productName}</h1>
			<a href="javascript:void(0)" data-id="207"
				class="btn-add-collection js-btn-collection">关注此课程</a>
		</div>
		<div class="course_info">
			<div class="course_video">
				<div id="VideoCover">
					<img id="VideoCoverPic" width="600" height="338" alt=""
						src="${pageContext.request.contextPath}/product!showProductSmallImg.html?product.id=${product.id}" />

				</div>
				<div class="video" style="display: none">
					<div class="video_box" id="J_Video"></div>
				</div>
			</div>
			<div class="course_state">
				<ul>
					<li><span>课程价格</span> <em>￥${product.productPrice}</em></li>
					<li class="course_hour"><span>课程时长</span> <em
						class="ft-adjust"> <!--            		 <span> 1</span>小时<span>32</span>分 -->
							<span>${product.productLang}</span>
					</em></li>
					<li><span>课程分类</span> <em>${product.productKind.productKind}</em>
					</li>
				</ul>
			</div>

			<div class="course_intro">
				<h3 class="course_notes">课程须知</h3>
				<div class="course_description">${product.productKnows}</div>
				<div class="curse_btn">
					<a
						href="${pageContext.request.contextPath}/order!forwardSureOrder.html?product.id=${product.id}">立即购买</a>
				</div>
			</div>
		</div>
		<div class="course_list">
			<div class="outline">
				<h3 class="chapter_introduces">课程详情</h3>
				<div class="course_shortdecription">
					<table align="center" width="100%" border="0">
						<tr>
							<td width="150px" align="left">上线时间：<s:date
									name="product.onlineTime" format="yyyy-MM-dd" /></td>
							<!--          			<td align="left"></td> -->
							<td width="150px" align="left">下线时间：<s:date
									name="product.offlineTime" format="yyyy-MM-dd" /></td>
							&lt;%&ndash;          			<td align="left"><s:date name="product.offlineTime" format="yyyy-MM-dd" /></td> &ndash;%&gt;
							<td width="150px" align="left">更新时间：<s:date
									name="product.updateTime" format="yyyy-MM-dd" /></td>
							<!--          			<td align="left"></td> -->
						</tr>
						<tr></tr>
					</table>
				</div>
				<h3 class="chapter_introduces">课程介绍</h3>
				<div class="course_shortdecription">
					<p>${product.productDesc}</p>
				</div>

				<h3 class="chapter_catalog">课程详情</h3>
				<ul id="couList">
					<s:iterator value="product.productDetailImageList" id="image">
						<li><img alt=""
							src="${pageContext.request.contextPath}/product!showProductDetailImage.html?productDetailImage.id=${image.id}">
						</li>
					</s:iterator>
				</ul>

				<h3>课程精彩截图</h3>
				<ul id="couList">
					<s:iterator value="product.productDetailAvatarList" id="image">
						<li><img alt=""
							src="${pageContext.request.contextPath}/product!showProductDetailAvatar.html?productDetailAvatar.id=${image.id}">
						</li>
					</s:iterator>
				</ul>
			</div>

			<div class="course_right">
				<dl>
					<dt>授课老师</dt>
					<dd>
						<div class="course_teacher">
							<a href="#" class="teacer_pic"> <img
								src='${pageContext.request.contextPath}/product!showEmpHeader.html?employee.id=${employee.id}'
								width='80' height='80' /></a>
							<h3>
								<a href="#">${employee.employeeName}</a> <span
									class="teacher_icon"></span>
							</h3>
							<p>Web前端工程师</p>
							<br class="clear" />
							<div class="discrip autowrap">资深UI+前端+架构，Woorich联合创始人、CTO，Veizen创始人，前后端开发、敏捷过程、项目管理经验丰富；爱技术，爱创业，爱一切新事物，玩过乐队，喜欢折腾！</div>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>添加评价</dt>
					<dd>
						<c:if test="${sessionScope.userInfo == null}">
							<table>
								<tr>
									<td>请您先登录</td>
								</tr>
								<tr height="50px">
									<td><button type="button" class="btn btn-danger"
											style="float: right;">登陆</button></td>
								</tr>
							</table>
						</c:if>
						<c:if test="${sessionScope.userInfo != null}">
							<table>
								<tr>
									<td><textarea rows="3" cols=""></textarea></td>
								</tr>
								<tr height="50px">
									<td><button type="button" class="btn btn-danger"
											style="float: right;">评论</button></td>
								</tr>
							</table>
						</c:if>
					</dd>
				</dl>
				<dl>
					<dt>学员动态</dt>
					<dd>
						<pre class="wrd_break">希望您了解jQuery Mobile的基本知识，或者具备jQuery知识，这样对课程学习会有很大帮助。</pre>
					</dd>

					<dd>
						<pre class="wrd_break">希望您了解jQuery Mobile的基本知识，或者具备jQuery知识，这样对课程学习会有很大帮助。</pre>
					</dd>

					<dd>
						<a href="#">查看更多>></a>
					</dd>
				</dl>
			</div>
		</div>
	</div>

</div>--%>

<!-- Footer -->
<%@ include file="../common/commonFooter.jsp"%>


</body>
</html>
