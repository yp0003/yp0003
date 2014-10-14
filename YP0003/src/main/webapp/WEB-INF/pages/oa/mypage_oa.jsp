<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/itedu.js"></script>
<link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet" />
</head>
<body id="body_OA">
<!---网页头部 start-->
<div id="header_OA">
  <div id="header_left">
  <img class="logo" src="${pageContext.request.contextPath}/images/img_logo2.png" />
  <img class="img_management" src="${pageContext.request.contextPath}/images/txt_oaZH.png" alt="" />
  <span>Office Management System</span>
  </div>
  
  <div id="header_right">
    <span>欢迎您，管理员AA回来！</span>
    <a href="#">退出登录</a>
    
  </div>
   
  <div class="clear"></div>
   
</div>
<!---网页头部 end-->

<!---网页内容 start-->
<div id="content_wrap">
 
 <div id="con_myOAPage">
  <!--my page start-->
    
    <div id="myOAPage_left">
      <div id="my_info">
      <img id="my_avtor" src="${pageContext.request.contextPath}/images/icon_avtor.png" alt="" />
      <span id="nick_name">讲师<br/>
      AAAAAA</span>
      <div class="clear"></div>
      </div>
      
      <div id="my_OAnav">
        <ul>
          <li>
            <a id="office" class="first_level selected" href="#">日常办公</a>
            <div class="my_nav_sub" style="display:block;">
              <a class="sub_item selected_sub_item" href="#">审批管理</a>
              <a class="sub_item" href="#">申请管理</a>
              <a class="sub_item" href="#">消息管理</a>
              <a class="sub_item" href="#">公告管理</a>
            </div>
          </li>
          <li>
            <a id="baodian" class="first_level" href="#">宝典管理</a>
            <div class="my_nav_sub">
              <a class="sub_item selected_sub_item" href="#">审批管理</a>
              <a class="sub_item" href="#">申请管理1</a>
              <a class="sub_item" href="#">消息管理</a>
              <a class="sub_item" href="#">公告管理</a>
            </div>
          </li>
          <li>
            <a id="caiwu" class="first_level" href="#">财务管理</a>
            <div class="my_nav_sub">
              <a class="sub_item selected_sub_item" href="#">审批管理</a>
              <a class="sub_item" href="#">申请管2理</a>
              <a class="sub_item" href="#">消息管理</a>
              <a class="sub_item" href="#">公告管理</a>
            </div>
          </li>
          <li>
            <a id="summary" class="first_level" href="#">统计报表</a>
           <div class="my_nav_sub">
              <a class="sub_item selected_sub_item" href="#">审批管理</a>
              <a class="sub_item" href="#">申请管理3</a>
              <a class="sub_item" href="#">消息管理</a>
              <a class="sub_item" href="#">公告管理</a>
            </div>
          </li>
          <li>
            <a id="zuzhi" class="first_level" href="#">组织管理</a>
            <div class="my_nav_sub" >
              <a class="sub_item selected_sub_item" href="#">审批管理</a>
              <a class="sub_item" href="#">申请管理4</a>
              <a class="sub_item" href="#">消息管理</a>
              <a class="sub_item" href="#">公告管理</a>
            </div>
          </li>
          <li>
            <a id="privilage" class="first_level" href="#">权限管理</a>
            <div class="my_nav_sub" >
              <a class="sub_item selected_sub_item" href="#">审批管理</a>
              <a class="sub_item" href="#">申请管理5</a>
              <a class="sub_item" href="#">消息管理</a>
              <a class="sub_item" href="#">公告管理</a>
            </div>
          </li>
          <li>
            <a id="message" class="first_level" href="#">我的信息</a>
            <div class="my_nav_sub">
              <a class="sub_item selected_sub_item" href="#">审批管理</a>
              <a class="sub_item" href="#">申请管理6</a>
              <a class="sub_item" href="#">消息管理</a>
              <a class="sub_item" href="#">公告管理6</a>
            </div>
          </li>
        </ul>
      </div>
      
    </div>
     
    <div id="myOAPage_right">
       
       <div id="location">
        <span class="location_title">当前位置：</span>
        <span class="location_con">系统首页</span>
        <a class="refresh" href="#">刷新</a>
        <a class="home" href="#">首页</a>
        <span class="dateTime">2013-06-01 农历四月五日 12:45:21</span>
       </div>
       <div class="modules_wrap">
       <div id="tasks" class="con_module">
         <span class="module_title">待办任务</span>
         <a class="module_more" href="#">更多&gt;</a>
         <div class="clear"></div>
         <img class="module_img" alt="" src="${pageContext.request.contextPath}/images/img_Task.png" />
         <div class="message_list">
           <p>您有&nbsp;<span class="count">0</span>&nbsp;条待办任务</p>
         </div>
       </div>
       
        <div id="applyStatus" class="con_module">
         <span class="module_title">最新申请状态</span>
         <a class="module_more" href="#">更多&gt;</a>
          <div class="clear"></div>
         <img class="module_img" alt="" src="${pageContext.request.contextPath}/images/img_newApply.png" />
         <div class="message_list">
           <p>您有&nbsp;<span class="count">0</span>&nbsp;条待办任务</p>
           <ul>
            <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
           </ul>
         </div>
       </div>
        <div id="saleStatus" class="con_module">
         <span class="module_title">最新销售状态</span>
         <a class="module_more" href="#">更多&gt;</a>
          <div class="clear"></div>
         <img class="module_img" style="width:85px;" alt="" src="${pageContext.request.contextPath}/images/img_saleStatus.png" />
         <div class="message_list">
           <p>您有&nbsp;<span class="count">0</span>&nbsp;条待办任务</p>
           <ul>
            <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
           </ul>
         </div>
       </div>
       <div class="clear"></div>
       
        <div id="newMessage" class="con_module">
         <span class="module_title">最新消息</span>
         <a class="module_more" href="#">更多&gt;</a>
          <div class="clear"></div>
         <img class="module_img" alt="" src="${pageContext.request.contextPath}/images/img_message_last.png" />
         <div class="message_list">
           <p>您有&nbsp;<span class="count">0</span>&nbsp;条待办任务</p>
         </div>
       </div>
        <div id="newRegister" class="con_module">
         <span class="module_title">最新注册</span>
         <a class="module_more" href="#">更多&gt;</a>
          <div class="clear"></div>
         <img class="module_img" alt="" src="${pageContext.request.contextPath}/images/img_newRigster.png" />
         <div class="message_list">
           <p>您有&nbsp;<span class="count">0</span>&nbsp;条待办任务</p>
           <ul>
            <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
           </ul>
         </div>
       </div>
        <div id="newProduct" class="con_module">
         <span class="module_title">最新产品</span>
         <a class="module_more" href="#">更多&gt;</a>
          <div class="clear"></div>
         <img class="module_img" alt="" src="${pageContext.request.contextPath}/images/img_newProduct.png" />
          <div class="message_list">
           <p>您有&nbsp;<span class="count">0</span>&nbsp;条待办任务</p>
           <ul>
            <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
             <li>
            <a href="#">待办任务1234567...</a>
            </li>
           </ul>
         </div>
       </div>
       <div class="clear"></div>
       </div>
        
        </div>
    </div>
   
   </div>
  <!--my OA page end-->
 </div>
 
</div>

</div>
<!---网页内容 end-->


<!---网页底部 start-->
<div id="footer_OA">
<p>上海颐凡科技有限公司版权所有2000-2013 京ICP证060822号</p>
</div>
<!---网页底部 end-->

</body>
</html>