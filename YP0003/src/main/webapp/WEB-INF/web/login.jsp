<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="Keywords" content="java培训,asp.net培训,php培训,C/C++培训,android培训，ios培训，iphone开发" />
<meta name="Description" content="北风网-国内最全面、最实战的IT在线教育培训社区,拥有java培训,asp.net培训,php培训,C/C++培训,android培训，ios培训，iphone开发等精品课程,拥有自主知识产权课程超过500门,努力打造互联网IT教育第一品牌。" />

<title>用户中心_北风网-IT在线教育java培训,asp.net培训,php培训,android培训,C/C++培训-中国IT网络教育第一品牌。</title>

<%@ include file="subPage/includeJs.jsp"%>
<%@ include file="subPage/includeCss.jsp"%>
</head>

<body>

<%@ include file="subPage/header.jsp"%>

<div class="content clearfix">
	<div class="BD2 user clearfix">		
					<div class="user_login">
				<h1 class="user_login_tit">会员登录</h1>
				<div class="user_login_form">
					<form name="formLogin" action="user.php" method="post" id="user_login">
					<ul class="user_box user_login_box">
						<li><label>用户名：</label><input type="text" name="username" value="" class="user_text"></li>
						<li class="user_login_pwd"><label>密&nbsp;&nbsp;码：</label><input type="password" name="password" value="" class="user_text"></li>
						<li class="user_login_info"><div class="user_login_msg"></div></li>
						<li><label>&nbsp;</label><button type="submit" class="user_login_btn" name="submit">立即登录</button> <a href="user.php?act=get_password" class="blue forget">忘记密码?</a></li>
					</ul>
					<input type="hidden" name="act" value="act_login" />
					<input type="hidden" name="back_act" value="" />
					</form>
				</div>
				<div class="user_login_other">
					<h1 class="tit" style="text-align:left; font-size:14px;">你还可以使用这些账号快速登录</h1>
					<div>
                    	<a href="qqlogin.php" id="qqLoginBtn"><img src="http://themes/default/images/qq_logo_4.png" width="170" height="32"></a>
                        
                    </div>
				</div>
			</div>
			<div class="user_reg">
				<h1 class="user_reg_tit">会员注册</h1>
				<form action="user.php" method="post" name="user_reg" id="user_reg">
					<ul class="user_box user_reg_box">
						<li><label>用户名：</label><input type="text" name="username" value="" class="user_text"><span for="username" class="tip info" tip="6-20字符，允许使用汉字!"></span></li>
						<li><label>密&nbsp;&nbsp;码：</label><input type="password" name="password" id="password" value="" class="user_text" ></li>
						<li><label>确认密码：</label><input type="password" name="confirm_password" value="" class="user_text"></li>
						<li><label>电子邮箱：</label><input type="text" name="email" value="" class="user_text"><span for="email" class="tip info" tip="有效的E-mail地址才能收到激活码"></span></li>
						<!--<li><label>手机号码：</label><input type="text" name="other[mobile_phone]" value="" class="user_text"><span for="other[mobile_phone]" class="tip info" tip="有效的手机号才能设置安全码"></span></li>-->
						<!--<li><label>验&nbsp;证&nbsp;码：</label><input type="text" name="username" value="" class="user_text user_code"><img data-src="" class="user_code_img"></li>-->
						<li style=" font-size:12px;"><label>&nbsp;</label> <input name="agreement" type="checkbox" value="1" checked="checked" />
						<span style="display:inline-block; float:none;">我已看过并接受 <a href="agreement.php" class="blue" target="_blank">&lt;&lt;服务协议&gt;&gt;</a></span></li>
						<li><label>&nbsp;</label><button type="submit" class="user_reg_btn">同意协议并注册</button></li>
					</ul>
					<input name="act" type="hidden" value="act_register" >
				</form>
			</div>	
    			
				
	</div>
</div>

<%@ include file="subPage/footer.jsp"%>
<%-- <%@ include file="subPage/kefu.jsp"%> --%>
<a href="javascript:void(0)" class="go_top" title="返回顶部"></a>

</body>
</html>
