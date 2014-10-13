<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/itedu.js"></script>
<link href="${pageContext.request.contextPath}/css/index.css"
	type="text/css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(function() {

	});
	function formCommit() {
/* 	    var flag = document.getElementById("remPass").checked;
	    if(flag){
			document.forms[0].action="system!register.html";
			document.forms[0].submit();
	    }
	    else{
	    	alert("接受协议才可注册");
	    } */
	    
	    var flag = document.getElementById("remPass").checked;
	     if(flag){
	       return true;
	     }
	     else{
	      alert("接受协议才可注册");
	      return false;
	     }
	}
    function reImg(){  
       $("#vertImg").attr("src","${pageContext.request.contextPath}/system!validateCode.html?time=" + new Date());
    }  
</script>
</head>
<body>
	<%@include file="common/common.jsp"%>

	<div id="headerC_wrap">

		<div id="headerC">
			<img id="img_world"
				src="${pageContext.request.contextPath}/images/img_world.png" />

			<div id="headerC_top">
				<a id="logo" href="#"><img
					src="${pageContext.request.contextPath}/images/logo1.png" alt="" /></a>
				<img id="twoCode" alt=""
					src="${pageContext.request.contextPath}/images/img_twoCode.jpg" />
				<img id="imgJ2EE" alt=""
					src="${pageContext.request.contextPath}/images/img_j2ee.png" />
				<div class="clear"></div>
				<img class="hr_header"
					src="${pageContext.request.contextPath}/images/hr_header.png">
			</div>



			<div id="header_nav">
				<a class="nav_item selected" href="#">首页</a> <a class="nav_item "
					href="#">精品课程</a> <a class="nav_item " href="#">名师简介</a> <a
					class="nav_item " href="#">版权专利</a> <a class="nav_item " href="#">加入我们</a>
				<a class="nav_item " href="#">联系我们</a>
			</div>

			<div id="search_wrap">
				<form>
					<input id="searchBox" type="text" placeHolder="请输入你要搜索的内容" />
					<button id="btn_search" value=""></button>
				</form>
			</div>
		</div>
	</div>
	<!---网页头部 end-->

	<!---网页内容 start-->
	<div id="content_wrap">
		<div id="hr_content"></div>
		<div id="content">

			<div id="page_path">
				<span class="currLocation">当前位置：</span> <a class="path_item"
					href="#">&gt;&nbsp;注册</a>
			</div>

			<div id="con_show">
				<h2 class="pageTitle title_register">会员注册</h2>
				<img class="hr_conTitle"
					src="${pageContext.request.contextPath}/images/hr_content1.png"
					alt="" />

				<div id="login_form">

					 <s:form action="system!register.html" id="register">
						<ul>
							<li><label for="memberID">会员ID:</label> <s:textfield
									id="memberID" placeHolder="请输入6个以上的字符作为密码" name="userId" /> <span
								class="redStar">*</span></li>
							<li><label for="passWord">密码:</label> <s:password
									id="passWord" placeHolder="英文、数字或字符，6-20位区分大小写"
									name="nowPassword" /> <span class="redStar">*</span></li>
							<li><label for="passWord">确认密码:</label> <s:password
									id="passWord" name="nowPassword" /> <span class="redStar">*</span>
							</li>
							<li><label for="passWord">电子邮箱:</label> <s:textfield
									id="passWord" placeHolder="请使用常用邮箱地址作为登录账号" name="email" /> <span
								class="redStar">*</span></li>
							<li><label for="vertCode">验证码:</label> <s:textfield
									id="vertCode" name="validateCode" /> <img id="vertImg"
								src="${pageContext.request.contextPath}/system!validateCode.html"/>
								<a class="chgVertImg" href="javascript:void(0);" onclick="reImg()">看不清，换一张</a></li>
							<li><input id="remPass" type="checkbox"/> <label
								id="lblAgree" for="remPass">我已阅读并同意 使用条款和隐私策略</label>
								<div class="clear"></div></li>
							<li>
							<!-- <input id="btn_register" type="button" onclick="return formCommit();"> -->
							<s:submit id="btn_register" onclick="return formCommit();"  value=""/>
							</li>
						</ul>
					</s:form>
				</div>

				<img id="split_LR"
					src="${pageContext.request.contextPath}/images/split_LR.png" alt="" />
				<div id="login_rightC">
					<img id="img_right"
						src="${pageContext.request.contextPath}/images/img_register1.png" />
					<span class="lblImgInfo">已有学习账号？</span> <a class="linkImgAction"
						href="#">立即去登录 &gt;&gt;</a>
				</div>

				<div class="clear"></div>
			</div>

		</div>

	</div>
	<!---网页内容 end-->


	<!---网页底部 start-->
	<div id="footer">

		<div id="footer_nav">
			<a class="nav_item selected" href="#">首页</a> <span>|</span> <a
				class="nav_item " href="#">精品课程</a> <span>|</span> <a
				class="nav_item " href="#">代理销售</a> <span>|</span> <a
				class="nav_item " href="#">关于平台</a> <span>|</span> <a
				class="nav_item " href="#">联系我们</a>
			<div class="clear"></div>
			<div id="copyright">Copyright 2008-2013 上海颐凡科技有限公司
				备案号：沪ICP备10015848号-5 客户热线 400-018-6216</div>
		</div>



		<div id="share">
			<div class="bdsharebuttonbox">
				<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a
					href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a
					href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a
					href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a
					href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a
					href="#" class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网"></a><a
					href="#" class="bds_more" data-cmd="more"></a>
			</div>
			<script>
				window._bd_share_config = {
					"common" : {
						"bdSnsKey" : {},
						"bdText" : "",
						"bdMini" : "2",
						"bdMiniList" : false,
						"bdPic" : "",
						"bdStyle" : "0",
						"bdSize" : "16"
					},
					"share" : {}
				};
				with (document)
					0[(getElementsByTagName('head')[0] || body)
							.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
							+ ~(-new Date() / 36e5)];
			</script>
		</div>
		<div class="clear"></div>
	</div>
	<!---网页底部 end-->

	<!--客服部分 start-->
	<div id="con_service">
		<a id="connect_sevice" href="#">点击此处 &gt;</a>
	</div>
	<!--客服部分 end-->
	<s:debug></s:debug>
</body>
</html>