<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />

<title>购物流程_北风网-IT在线教育java培训,asp.net培训,php培训,android培训,C/C++培训-中国IT网络教育第一品牌。</title>

<link href="http://www.ibeifeng.com/themes/default/css/n_main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="http://www.ibeifeng.com/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<script src="http://www.ibeifeng.com//js/jquery-1.7.2.min.js"></script>

</head>
<body>
<div class="content"><a href="hd_ele.html" target="_blank"><div style=" width:100%; height:80px; background:url(themes/default/images/hd_ele/1200-80.jpg) no-repeat top center;"></div></a></div>
<!--<div class="content"><a href="suphadoop.html" title="北风网大数据课程" target="_blank"><div style=" width:100%; height:80px; background:url(themes/default/images/suphadoop/1200_80.jpg) no-repeat top center;"></div></a></div>-->
<div class="head">
	<div class="head_main">
		<div class="top_menu">
				<ul class="fast_menuone">
    	<li style="width:auto">您好，欢迎来到北风网！请 <a href="/user.php" target="_blank" class="blue">登录</a></li>
		<li><a href="/user.php?act=register" class="blue" target="_parent" style="line-height:auto;">免费注册</a></li>
        <li><a href="/class.html" class="blue" target="_blank" style="line-height:auto;">网校</a></li>
         <li><a href="/user.php?act=upload" class="blue" style="line-height:31px;">上传资源</a></li>
        <li style="height:31px;"><a href="http://weibo.com/ibeif" class="blue" target="_blank"><img src="/themes/default/images/sina.jpg" alt="新浪微博" class="weibo_icon"></a></li>
        <!--<li style="height:31px;"><a href="/user.php?act=register" class="blue"><img src="themes/default/images/tenxun.jpg" alt="腾讯微博" class="weibo_icon"></a></li>-->
    </ul>
	<ul class="fast_menu">
		<li><a href="/flow.php" class="gwc" target="_blank">购物车<span id="gwc_num">2</span>件</a></li>
		<li><a href="appdown.html" class="kfd red" target="_blank">客户端下载</a></li>
		<li><a href="/contact.html" target="_blank">联系我们</a></li>
		<li><a href="/help.html" target="_blank">帮助中心</a></li>
	</ul>
    

		</div>
		
		<div class="head_con clearfix">
			<div class="logo"><a href="/index.html"><img src="/themes/default/images/logo.png" /></a></div>
			<div class="search">
				<form name="searchForm" id="searchForm" action="/search.php" method="post">
					<input type="text" name="keywords" id="keyword" value="" class="s_text" /><input type="submit" value="" name="search_bnt" class="s_bnt">
				</form>				
				<div class="s_hot">
					<a href="tc_java2.html" target="_blank">J2EE套餐</a>
					<a href="androidcourse.html" target="_blank">安卓套餐</a>
					<a href="netcourse.html" target="_blank">.Net套餐</a>
					<a href="search.php?encode=YToyOntzOjg6ImtleXdvcmRzIjtzOjY6ImhhZG9vcCI7czoxODoic2VhcmNoX2VuY29kZV90aW1lIjtpOjEzODQ5MzY5NTE7fQ==" target="_blank">Hadoop</a>
					<a href="goods-348.html" target="_blank">VIP5</a>
					<a href="search.php?encode=YToyOntzOjM6InRpZCI7czoyOiIyNiI7czoxODoic2VhcmNoX2VuY29kZV90aW1lIjtpOjEzODUwOTI3MTg7fQ==" target="_blank">风舞烟</a>
			    </div>
			</div>
           <!-- <div class="weixinsys"><a href="lecturer.html" target="_blank" title="高薪招聘讲师"><img src="image/teacher_img.jpg" alt="高薪招聘讲师"></a></div>-->
		</div>
	</div>
	
	<div class="nav">
		<div class="nav_main">
			<a href="/class.html" class="class_all">所有课程分类</a>
			<div class="nav_list clearfix">
				<a href="/" class="one">首页</a>
				<a href="/class.html" class="two">课程</a>
                <a href="http://edu.ibeifeng.com" target="_blank" class="bfkt">北风课堂<br><img src="/themes/default/images/navhot.gif" class="icon_new" alt="new"></a>
                <a href="http://bbs.ibeifeng.com" class="eight" target="_blank">论坛</a>
				<!--<a href="/solution-1.html" class="three">方案</a>-->
				<a href="/ask.html" class="four">问答</a>
				<a href="/source_list.html" class="five">资源</a>
				<a href="/tech_list.html" class="six">资讯</a>
				<!--<a href="/training.html" class="seven">内训</a>-->
				
				<a href="/help.html" class="nine">帮助</a>
        <a href="/lecturer.html" class="lecturer">讲师招聘</a>
						
			</div>
		</div>		
	</div>
</div><div class="pd8"></div>





    <div class="content clearfix">
	<div class="BD2 flow">
		<div class="flow_step1">购物导航</div>
		<div class="flow_tit">您购买的课程<a href="javascript:void(0)"  onclick="location.href='flow.php?step=clear'">清空购物车</a></div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="flow_tab">
			<tr>
				<th width="400">课程名称</th>
				<th width="98">市场价</th>
				<th width="98">本店价</th>
				<th width="110">购买数量</th>
				<th width="98">小计</th>
				<th>操作</th>
			</tr>
						<tr>
				<td><a href="goods.php?id=476" target="_blank" title=".NET软件工程师专业高端网络在线培训就业课程(周末上课，在线教学，异地学习，上海就业)" class="kc_tag">.NET软件工程师专业高端网络在线培训就业课程(周末上课，在线教学，异地学习，上海就业)</a> 
                                </td>
				<td><div class="flow_price">￥8000.00元</div></td>
				<td><div class="flow_price">￥8000.00元</div></td>
				<td>1					<!--<ul class="wrap_input">
												<li class="jian"></li><li class="input"><input type="text" name="goods_number[96939]" id="goods_number_96939" value="1" size="4" class="pnum"/></li><li class="jia"></li>	
                											
					</ul>-->
				</td>
				<td><div class="flow_price FC6">￥8000.00元</div></td>
				<td>
					 
					<a href="javascript:void(0)" data="96939" class="f6 flow_del">删除</a> 				</td>
			</tr>
						<tr>
				<td><a href="goods.php?id=492" target="_blank" title="国内首部Linux7企业级运维高端培训课程(Linux7系统、服务加固安全、虚拟化和云计算)" class="kc_tag">国内首部Linux7企业级运维高端培训课程(Linux7系统、服务加固安全、虚拟化和云计算)</a> 
                                </td>
				<td><div class="flow_price">￥3500.00元</div></td>
				<td><div class="flow_price">￥3500.00元</div></td>
				<td>1					<!--<ul class="wrap_input">
												<li class="jian"></li><li class="input"><input type="text" name="goods_number[96938]" id="goods_number_96938" value="1" size="4" class="pnum"/></li><li class="jia"></li>	
                											
					</ul>-->
				</td>
				<td><div class="flow_price FC6">￥3500.00元</div></td>
				<td>
					 
					<a href="javascript:void(0)" data="96938" class="f6 flow_del">删除</a> 				</td>
			</tr>
					</table>
		
		
		<div class="flow_bear clearfix">
			<ul class="flow_bera_list">
				<li>               购物金额小计 ￥11500.00元，比市场价 ￥11500.00元 节省了 ￥0.00元 (0%)<!--订单完成后，您将获得 <span class="FC6">680</span> 个积分 ，以及价值 <span class="FC6">￥0.00</span> 的红包--></li>
				<!--<li>商品总价： <span class="FC6">￥380.00</span></li>-->
				<li>应付款金额共计：<span class="FC6 FS22">￥11500.00元</span></li>
			</ul>
			<div class="CB"><a href="flow.php?step=checkout" class="jiesuan">去结算</a></div>
		</div>
		
		
		
			<div class="BD1 goods_read2 kc_list">
				<div class="goods_read2_tit">热门推荐课程</div>
				<div class="goods_read2_box clearfix">
					<a href="javascrip:void(0)" class="goods_read2_left"></a>
					<div class="goods_read2_solid">
						<ul class="goods_read2_list">
															<li><a href="goods-254.html" target="_blank"><img src="images/201311/goods_img/254_G_1384884572398.jpg" width="166" height="110" title="深入浅出Hadoop实战开发(HDFS实战图片、MapReduce、HBase实战微博、Hive应用)" alt="深入浅出Hadoop实战开发(HDFS实战图片、MapReduce、HBase实战微博、Hive应用)"></a>
									<h5><a href="goods-254.html" target="_blank" title="">深入浅出Hadoop实战开发(HDFS实战图片、MapRed...</a></h5>
									<label>普通会员:<font class="FC1">￥880.00</font></label>
									
								</li>
															<li><a href="goods-45.html" target="_blank"><img src="images/201311/goods_img/45_G_1384635348759.jpg" width="166" height="110" title="基于ASP.NET MVC+Linq等技术下的企业级通用OA系统全程开发" alt="基于ASP.NET MVC+Linq等技术下的企业级通用OA系统全程开发"></a>
									<h5><a href="goods-45.html" target="_blank" title="">基于ASP.NET MVC+Linq等技术下的企业级通用OA...</a></h5>
									<label>普通会员:<font class="FC1">￥480.00</font></label>
									
								</li>
															<li><a href="goods-104.html" target="_blank"><img src="images/201311/goods_img/104_G_1384745299962.jpg" width="166" height="110" title="Google Android移动平台应用程序开发及基于Android的游戏开发(结合8个应用案例)" alt="Google Android移动平台应用程序开发及基于Android的游戏开发(结合8个应用案例)"></a>
									<h5><a href="goods-104.html" target="_blank" title="">Google Android移动平台应用程序开发及基于And...</a></h5>
									<label>普通会员:<font class="FC1">￥380.00</font></label>
									
								</li>
															<li><a href="goods-173.html" target="_blank"><img src="images/201311/goods_img/173_G_1384973974702.jpg" width="166" height="110" title="基于J2EE+JBPM3.x/JBPM4.3+Flex流程设计器+Jquery+授权认证企业普及版贝斯OA与工作流系统" alt="基于J2EE+JBPM3.x/JBPM4.3+Flex流程设计器+Jquery+授权认证企业普及版贝斯OA与工作流系统"></a>
									<h5><a href="goods-173.html" target="_blank" title="">基于J2EE+JBPM3.x/JBPM4.3+Flex流程设...</a></h5>
									<label>普通会员:<font class="FC1">￥680.00</font></label>
									
								</li>
															<li><a href="goods-131.html" target="_blank"><img src="images/201311/goods_img/131_G_1384634583808.jpg" width="166" height="110" title="基于.net平台remoting、DB2技术的大型分布式HIS系统架构及开发(项目架构师方向)" alt="基于.net平台remoting、DB2技术的大型分布式HIS系统架构及开发(项目架构师方向)"></a>
									<h5><a href="goods-131.html" target="_blank" title="">基于.net平台remoting、DB2技术的大型分布式HI...</a></h5>
									<label>普通会员:<font class="FC1">￥580.00</font></label>
									
								</li>
															<li><a href="goods-205.html" target="_blank"><img src="images/201311/goods_img/205_G_1384635372015.jpg" width="166" height="110" title="基于云计算Saas平台下的C2C大型网上商城(集UC聊天客户端+Extjs+Oracle+OSGI模型)" alt="基于云计算Saas平台下的C2C大型网上商城(集UC聊天客户端+Extjs+Oracle+OSGI模型)"></a>
									<h5><a href="goods-205.html" target="_blank" title="">基于云计算Saas平台下的C2C大型网上商城(集UC聊天客户...</a></h5>
									<label>普通会员:<font class="FC1">￥1200.00</font></label>
									
								</li>
															<li><a href="goods-65.html" target="_blank"><img src="images/201311/goods_img/65_G_1384827635261.jpg" width="166" height="110" title="基于J2EE平台下的struts2+spring+Ibatis的手机贸易企业进销存系统全程实战" alt="基于J2EE平台下的struts2+spring+Ibatis的手机贸易企业进销存系统全程实战"></a>
									<h5><a href="goods-65.html" target="_blank" title="">基于J2EE平台下的struts2+spring+Ibati...</a></h5>
									<label>普通会员:<font class="FC1">￥480.00</font></label>
									
								</li>
															<li><a href="goods-21.html" target="_blank"><img src="images/201311/goods_img/21_G_1384828353908.jpg" width="166" height="110" title="北风网--asp.net版本文章管理系统(CMS)2.0版本全面实战" alt="北风网--asp.net版本文章管理系统(CMS)2.0版本全面实战"></a>
									<h5><a href="goods-21.html" target="_blank" title="">北风网--asp.net版本文章管理系统(CMS)2.0版本...</a></h5>
									<label>普通会员:<font class="FC1">￥180.00</font></label>
									
								</li>
															<li><a href="goods-119.html" target="_blank"><img src="images/201311/goods_img/119_G_1384635696482.jpg" width="166" height="110" title="李炎恢PHP第二季系列课程(配CMS内容管理系统)-附赠第一季" alt="李炎恢PHP第二季系列课程(配CMS内容管理系统)-附赠第一季"></a>
									<h5><a href="goods-119.html" target="_blank" title="">李炎恢PHP第二季系列课程(配CMS内容管理系统)-附赠第一...</a></h5>
									<label>普通会员:<font class="FC1">￥180.00</font></label>
									
								</li>
															<li><a href="goods-156.html" target="_blank"><img src="images/201311/goods_img/156_G_1384629929600.jpg" width="166" height="110" title="Oracle11g最佳培训高清下载版(王二暖Oracle11g教室\10年经验毫无保留)" alt="Oracle11g最佳培训高清下载版(王二暖Oracle11g教室\10年经验毫无保留)"></a>
									<h5><a href="goods-156.html" target="_blank" title="">Oracle11g最佳培训高清下载版(王二暖Oracle11...</a></h5>
									<label>普通会员:<font class="FC1">￥450.00</font></label>
									
								</li>
															<li><a href="goods-180.html" target="_blank"><img src="images/201311/goods_img/180_G_1384627880068.jpg" width="166" height="110" title="ASP.NET典型三层架构企业级医药行业ERP系统实战(8大模块22个子系统,价值3000万)" alt="ASP.NET典型三层架构企业级医药行业ERP系统实战(8大模块22个子系统,价值3000万)"></a>
									<h5><a href="goods-180.html" target="_blank" title="">ASP.NET典型三层架构企业级医药行业ERP系统实战(8大...</a></h5>
									<label>普通会员:<font class="FC1">￥1380.00</font></label>
									
								</li>
															<li><a href="goods-80.html" target="_blank"><img src="images/201311/goods_img/80_G_1384745467046.jpg" width="166" height="110" title="国讯教育通用智能OA办公系统(ASP.NET七层架构+WF4.0工作流+抽象工厂+反射+Extjs3.2..)" alt="国讯教育通用智能OA办公系统(ASP.NET七层架构+WF4.0工作流+抽象工厂+反射+Extjs3.2..)"></a>
									<h5><a href="goods-80.html" target="_blank" title="">国讯教育通用智能OA办公系统(ASP.NET七层架构+WF4...</a></h5>
									<label>普通会员:<font class="FC1">￥480.00</font></label>
									
								</li>
													</ul>
					</div>
					<a href="javascrip:void(0)" class="goods_read2_right"></a>
				</div>
			</div>
		</div>
	</div>
	</div>
	 
</div>






    
  

        




        
        
        
        
        

                
        
        
        
        
</div>


<div class="block">
    </div>
<div class="blank"></div>



<div class="blank"></div>

<style type="text/css">
@media  screen and (max-width:768px ){
#sinazs{clear:left; padding-left:160px;}
}

@media  screen and (min-width:768px ){
#sinazs{clear:left; padding-left:160px;}
}
	
@media  screen and (min-width:992px ){
#sinazs{clear:left; padding-left:270px;}
}

@media  screen and (min-width:1200px ){
	#sinazs{clear:left; padding-left:370px;}
}
@media  screen and (min-width:1230px ){
	#sinazs{clear:none; padding-left:50px;}
}		
</style>

<div class="footer">
	<div class="footer_box">
		
		<div class="help clearfix">
			<div class="help_list">
				<h1 class="help_t1">关于北风</h1>
				<ul>
					<li><a href="/aboutus.html" target="_blank" title="关于我们">关于我们</a></li>
					<li><a href="/contact.html" target="_blank" title="联系我们">联系我们</a></li>
					<li><a href="/lecturer.html" target="_blank" title="招募讲师">招募讲师</a></li>
					<li><a href="/agent" target="_blank" title="代理加盟">代理加盟</a></li>
				</ul>
			</div>
			<div class="help_list">
				<h1 class="help_t2">新手指南</h1>
				<ul>
					<li><a href="/help.html" target="_blank" title="挑选课程">挑选课程</a></li>
					<li><a href="/help1.html" target="_blank" title="购买课程">购买课程</a></li>
					<li><a href="/help2.html" target="_blank" title="学习课程">学习课程</a></li>
					<li><a href="/help6.html" target="_blank" title="播放课程">播放课程</a></li>
				</ul>
			</div>
			<div class="help_list">
				<h1 class="help_t3">帮助中心</h1>
				<ul>
					<li><a href="/help4.html" target="_blank" title="论坛帮助">论坛帮助</a></li>
					<li><a href="/help7.html" target="_blank" title="订阅帮助">订阅帮助</a></li>
					<li><a href="/help10.html" target="_blank" title="问答帮助">问答帮助</a></li>
					<li><a href="/help8.html" target="_blank" title="获取机器码">获取机器码</a></li>
				</ul>
			</div>
			<div class="help_list contact_main">
				<h1 class="help_t4">联系我们</h1>
				<ul>
					<li>公司：上海育创网络科技有限公司</li>
					<li>地址：上海浦东新区世纪大道1500号东方大厦1325室</li>
					<li>邮箱：webmaster@ibeifeng.com</li>
					<li>电话：400-018-6216</li>
				</ul>
			</div>
      <div class="help_list" id="sinazs">
      	<a href="tech-69662.html" target="_blank"><img src="themes/default/images/sina1.jpg"></a>
      </div>
      <div class="help_list">
      	<a href="tech-69662.html" target="_blank"><img src="themes/default/images/sina2.jpg"></a>
      </div>
		</div>
		
		<div class="copyright">
			Copytright 2008-2013 上海育创网络科技有限公司. 备案号:沪ICP备10015848号-5 上海浦东公安分局备案编号:3101150335558824  客户热线:400-018-6216
<br />上海育创网络科技有限公司申明:我公司所有培训课程版权均归北风网所有,如翻录、破解、盗版必将通过法律途径解决
		</div>
		<div class="footer_bottom">
			<div align="center">
				<img src="../../image/police.png" width="152" height="52">
				<img src="../../image/zx110.png" width="113" height="50">
				<a href="/image/ICP_600.jpg" target="_blank"><img src="../../image/footer_logo06.gif" border="0"></a>
                <img src="http://static.anquan.org/static/outer/image/sm_124x47.png" alt="安全联盟认证" width="124" height="47" style="border: none;">
                <script src="http://kxlogo.knet.cn/seallogo.dll?sn=e14091531011553835tuue000000&size=0"></script>
</div>
			<div align="center"><script src="http://s84.cnzz.com/stat.php?id=3504697&web_id=3504697&show=pic1" language="JavaScript"></script> &nbsp;<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F826afdd3b2eca35ceab5f6a66f95b8f3' type='text/javascript'%3E%3C/script%3E"));
</script></div>
			<!--<script type="text/javascript">
				var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
				document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
				</script> 
				<script type="text/javascript">
				  var _gaq = _gaq || [];
				  _gaq.push(['_setAccount', 'UA-4682033-1']);
				  _gaq.push(['_trackPageview']);
				  (function() {
					var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
					ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
					var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
				  })();
				
			</script>
			<script type="text/javascript">
				var pageTracker = _gat._getTracker("UA-4682033-1");
				pageTracker._initData();
				pageTracker._trackPageview();
			</script>-->
			
<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDAzMjM5OV83NDE3M184MDAwMzIzOTlf"></script>




		</div>
	</div>
	
</div>
<div class="keifu">
    <div class="keifu_tab">
    	<div class="icon_keifu"></div>
        <div class="keifu_box">
            <div class="keifu_head"><a href="javascript:void(0)" class="keifu_close"></a></div>
            <ul class="keifu_con">
            	<!--<li class="bt">产品咨询</li>-->
                <li>
<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDAzMjM5OV83NzEzMF84MDAwMzIzOTlf"></script>
</li>
                <li>
<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDAzMjM5OV83NzEzMF84MDAwMzIzOTlf"></script>
</li>
                <!--<li class="bt">售后技术答疑</li>-->
                <li>
<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDAzMjM5OV83NzEzMF84MDAwMzIzOTlf"></script>
</li>
				<li>
<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDAzMjM5OV83NzEzMF84MDAwMzIzOTlf"></script>
</li>
				<li class="weixin"><img src="/themes/default/images/weixin.jpg" width="96" height="126" alt="官方微信" /></li>
            </ul>
            <div class="keifu_bot"></div>
        </div>
    </div>
</div>
<a href="javascript:void(0)" class="go_top" title="返回顶部"></a>

<script  type="text/javascript">
  var _sogou_sa_q = _sogou_sa_q || [];
  _sogou_sa_q.push(['_sid', '176753-181385']);
 (function() {
    var _sogou_sa_protocol = (("https:" == document.location.protocol) ? "https://" : "http://");
    var _sogou_sa_src=_sogou_sa_protocol+"hermes.sogou.com/sa.js%3Fsid%3D176753-181385";
    document.write(unescape("%3Cscript src='" + _sogou_sa_src + "' type='text/javascript'%3E%3C/script%3E"));
    })();
</script>



<script type="text/javascript">
	
	$(function(){
		var jsArr = [
			'fancybox/jquery.fancybox-1.3.4.pack.js',
			'fancybox/jquery.mousewheel-3.0.4.pack.js',
			'js/jquery.masonry.min.js',
			'js/jquery.easing.js',
			'js/respond.min.js',
			'js/jquery.jCarousel.js',
			'js/shopping_flow.js',
			'js/bf.js'
		];
		
			for(var i=0;i<jsArr.length;i++){
				var element = document.createElement("script");
				element.src = jsArr[i];
				document.body.appendChild(element);
			}
	});
//	if (window.addEventListener)
//		window.addEventListener("load", downloadJSAtOnload, false);
//	else if (window.attachEvent)
//		window.attachEvent("onload", downloadJSAtOnload);
//	else window.onload = downloadJSAtOnload;
</script><script src="js/lazyload.js"></script>

</body>
</html>
