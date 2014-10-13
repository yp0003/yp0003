<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/itedu.js"></script>
<link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet" />
</head>
<body>
<!---网页头部 start-->
<div id="headerT_wrap">
  <div id="header_top">
    <span class="welSpan">尊敬的客户，您好！欢迎来到365itedu官方网站。</span>
    <div id="action_top">
       <a class="login_top" href="#">登录</a>
   <a class="register_top " href="#">免费注册</a>
   <a  href="#">购物车0件</a>
   <a  href="#">联系我们</a>
   <a  href="#">帮助中心</a>
   <div class="clear"></div>
   </div>
  <div class="clear"></div>
  </div>
</div>

<div id="headerC_wrap">
 
 <div id="headerC">
 <img id="img_world" src="${pageContext.request.contextPath}/images/img_world.png" />
 
 <div id="headerC_top">
 <a id="logo" href="#"><img src="${pageContext.request.contextPath}/images/logo1.png" alt="" /></a>
  <img id="twoCode" alt="" src="${pageContext.request.contextPath}/images/img_twoCode.jpg" />
 <img id="imgJ2EE" alt="" src="${pageContext.request.contextPath}/images/img_j2ee.png" />
 <div class="clear"></div>
 <img class="hr_header" src="${pageContext.request.contextPath}/images/hr_header.png">
 </div>
 

 
 <div id="header_nav">
   <a class="nav_item selected" href="#">首页</a>
   <a class="nav_item " href="#">精品课程</a>
   <a class="nav_item " href="#">名师简介</a>
   <a class="nav_item " href="#">版权专利</a>
   <a class="nav_item " href="#">加入我们</a>
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
  <span class="currLocation">当前位置：</span>
  <a class="path_item" href="#">&gt;&nbsp;个人中心</a>
 </div>
 
 <div id="con_myPage">
  <!--my page start-->
   <div id="myPage">
    
    <div id="myPage_left">
      <h2><span class="page_titleZh">个人中心</span><span class="page_titleEn">/Individual center</span></h2>
      
      <div id="my_info">
      <img id="my_avtor" src="${pageContext.request.contextPath}/images/icon_avtor.png" alt="" />
      <span id="nick_name">昵称：游客1234</span>
      <span id="my_level">级别：初级学员</span>
      <div class="clear"></div>
      </div>
      
      <div id="my_nav">
        <ul>
          <li>
            <a id="my_course" class="first_level selected" href="#">我的课程 <img class="drop" src="${pageContext.request.contextPath}/images/icon_drop.png" alt="" /></a>
            <div class="my_nav_sub" style="display:block;">
              <a class="sub_item" href="#">用户首页</a>
              <a class="sub_item" href="#">我的资料</a>
              <a class="sub_item" href="#">安全验证码</a>
            </div>
          </li>
          <li>
            <a id="my_order" class="first_level" href="#">我的订单<img class="drop" src="${pageContext.request.contextPath}/images/icon_drop.png" alt="" /></a>
            <div class="my_nav_sub">
              <a class="sub_item" href="#">订单首页</a>
              <a class="sub_item" href="#">我的资料</a>
              <a class="sub_item" href="#">安全验证码</a>
            </div>
          </li>
          <li>
            <a id="my_cert" class="first_level" href="#">我的证书<img class="drop" src="${pageContext.request.contextPath}/images/icon_drop.png" alt="" /></a>
            <div class="my_nav_sub">
              <a class="sub_item" href="#">证书首页</a>
              <a class="sub_item" href="#">我的资料</a>
              <a class="sub_item" href="#">安全验证码</a>
            </div>
          </li>
          <li>
            <a id="my_test" class="first_level" href="#">在线考试<img class="drop" src="${pageContext.request.contextPath}/images/icon_drop.png" alt="" /></a>
            <div class="my_nav_sub">
              <a class="sub_item" href="#">考试首页</a>
              <a class="sub_item" href="#">我的资料</a>
              <a class="sub_item" href="#">安全验证码</a>
            </div>
          </li>
          <li>
            <a id="my_message" class="first_level" href="#">消息管理 <img class="drop" src="${pageContext.request.contextPath}/images/icon_drop.png" alt="" /></a>
            <div class="my_nav_sub">
              <a class="sub_item" href="#">消息首页</a>
              <a class="sub_item" href="#">我的资料</a>
              <a class="sub_item" href="#">安全验证码</a>
            </div>
          </li>
          <li>
            <a id="my_panel" class="first_level" href="#">管理模板<img class="drop" src="${pageContext.request.contextPath}/images/icon_drop.png" alt="" /></a>
            <div class="my_nav_sub">
              <a class="sub_item" href="#">管理首页</a>
              <a class="sub_item" href="#">我的资料</a>
              <a class="sub_item" href="#">安全验证码</a>
            </div>
          </li>
        </ul>
      </div>
      
    </div>
     
    <div id="myPage_right">
       
       <div id="anno">
        <span class="anno_title">公告：</span>
        <span class="anno_con">尊敬的客户，您好！欢迎来到365itedu官方网站。</span>
       </div>
       
       <div id="myNews" class="con_module">
         <span class="module_title">最新消息</span>
         <a class="module_more" href="#">更多&gt;</a>
         <div class="clear"></div>
         <img class="module_img" alt="" src="${pageContext.request.contextPath}/images/img_message_last.png" />
         <div class="message_list">
           <p>您有&nbsp;<span class="count">0</span>&nbsp;条待办任务</p>
         </div>
       </div>
       
        <div id="myStatus" class="con_module">
         <span class="module_title">我的动态</span>
         <a class="module_more" href="#">更多&gt;</a>
          <div class="clear"></div>
         <img class="module_img" alt="" src="${pageContext.request.contextPath}/images/img_myAction.png" />
         <div class="message_list">
           <p>我有&nbsp;<span class="count">0</span>&nbsp;门新课程</p>
           <p>我有&nbsp;<span class="count">3</span>&nbsp;笔新订单</p>
           <p>我有&nbsp;<span class="count">3</span>&nbsp;本新证书</p>
         </div>
       </div>
       <div class="clear"></div>
       
       <div id="learning_pro">
         
         <h2>学习流程</h2>
         
         <div id="pro_item">
            <ul>
              <li>
                <a class="pro_link" href="#"><img src="${pageContext.request.contextPath}/images/icon_courseBuy.png" alt="" /></a>
                <p class="pro_title"><span class="pro_number">1</span>&nbsp;购买课程</p>
                <p class="pro_info">点击课程购买链接付款</p>
              </li>
              <li>
                <a class="pro_link" href="#"><img src="${pageContext.request.contextPath}/images/icon_courseScan.png" alt="" /></a>
                <p class="pro_title"><span class="pro_number">2</span>&nbsp;查看课程</p>
                <p class="pro_info">用户中心--我的课程</p>
              </li>
              <li>
                <a class="pro_link" href="#"><img src="${pageContext.request.contextPath}/images/icon_download.png" alt="" /></a>
                <p class="pro_title"><span class="pro_number">3</span>&nbsp;下载课程</p>
                <p class="pro_info">用迅雷进行下载</p>
              </li>
              <li>
                <a class="pro_link" href="#"><img src="${pageContext.request.contextPath}/images/icon_user.png" alt="" /></a>
                <p class="pro_title"><span class="pro_number">4</span>&nbsp;获取授权</p>
                <p class="pro_info">用户中心--播放码管理</p>
              </li>
              <li>
                <a class="pro_link" href="#"><img src="${pageContext.request.contextPath}/images/icon_studyC.png" alt="" /></a>
                <p class="pro_title"><span class="pro_number">5</span>&nbsp;学习课程</p>
                <p class="pro_info">开始学习课程了~</p>
              </li>
            </ul>
         </div>
         
       </div>
       

    </div>
          <div class="clear"></div>
   </div>
  <!--my page end-->
 </div>
 
</div>

</div>
<!---网页内容 end-->


<!---网页底部 start-->
<div id="footer">

  <div id="footer_nav">
 <a class="nav_item selected" href="#">首页</a>
 <span>|</span>
   <a class="nav_item " href="#">精品课程</a>
    <span>|</span>
   <a class="nav_item " href="#">代理销售</a>
    <span>|</span>
   <a class="nav_item " href="#">关于平台</a>
    <span>|</span>
   <a class="nav_item " href="#">联系我们</a>
   <div class="clear"></div>
    <div id="copyright">
   Copyright 2008-2013 上海颐凡科技有限公司 备案号：沪ICP备10015848号-5 客户热线 400-018-6216
   </div>
   </div>
   
  
   
    <div id="share">
    <div class="bdsharebuttonbox"><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网"></a><a href="#" class="bds_more" data-cmd="more"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
   </div>
   <div class="clear"></div>
</div>
<!---网页底部 end-->

<!--客服部分 start-->
<div id="con_service">
<a id="connect_sevice" href="#">点击此处 &gt;</a>
</div>
<!--客服部分 end-->




</body>
</html>