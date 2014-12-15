<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><title>
	订单确认 - 沪江网校
</title><link rel='stylesheet' href='http://res.c.hjfile.cn/app/css_output/843E6671D929C72A055B4AF05C4A5C47.css?v=635538364413551027' type='text/css'/>
    <script type="text/javascript" src="/app/Order/js/jquery-1.8.3.min.js"></script>
</head>
<body>
    
<script type="text/javascript" src="http://pass.hujiang.com/quick/biz/hj_quicklogin.min.js"></script>
<link rel='stylesheet' href='http://res.c.hjfile.cn/app/css_output/FCC71C9547A69D781DA27F286C74F141.css?v=635538351025909891' type='text/css'/>
<script src='http://res.c.hjfile.cn/app/js_output/99B3CEBB0E6641EC91791B0A33DA90BD.js?v=635430263660058480' type='text/javascript'></script>
<script type="text/javascript" src="http://t.hujiang.com/js/ingSender.js"></script>
<script type="text/javascript">
    var ingSenderBox = null;
    $(function () {
        ingSenderBox = new ingSender();
        ingSenderBox.callback_success = function () {
            ingSenderBox.showSuccess("碎碎发布成功。 <a style='margin:0px 5px 0px 10px' href='http://t.hujiang.com/0' class='noline' target='_blank'>查看碎碎&raquo;</a>", true, 3000);
        };
    })
</script>
<style type="text/css">
    #cls_pnlHeader .cls_listUserInfo .menu_xb .layer_slideTitle {
        padding: 0px 0px 0px 5px;
    }

    #cls_pnlHeader .cls_listUserInfo .menu_xb.current .layer_slideTitle {
        padding: 0px 0px;
    }

    #cls_pnlHeader .cls_listUserInfo .layer_slideList.droplist {
        margin-top: -1px;
        padding-bottom: 7px;
        padding-top: 7px;
        width: 80px;
    }

    #cls_pnlHeader .cls_listUserInfo .droplist .row {
        width: 80px;
        height: 26px;
        float: left;
        line-height: 26px;
    }

        #cls_pnlHeader .cls_listUserInfo .droplist .row a {
            color: #494949;
            width: 60px;
            margin: 0px 5px;
        }

            #cls_pnlHeader .cls_listUserInfo .droplist .row a:hover {
                color: #494949;
                background-color: #ebeced;
            }
</style>
<div id="headerBar_cls_pnlHeader_wrap" class="cls_pnlHeader_wrap">
    <div id="cls_pnlHeader">
        <div id="cls_header_AppSlide">
            <div class="cls_header_AppSlide_Title">
                <a href="/" id="cls_headLogo">
                    <div class="link_header_AppSlide"></div>
                </a>
            </div>
            <ul>                
                <li><a class="cls_header_app_bbs" target="_blank" href="http://st.hujiang.com">沪江社团</a></li>
                <li><a class="cls_header_app_cctalk" target="_blank" href="http://www.cctalk.com/">CC课堂</a></li>
                <li><a class="cls_header_app_hj" target="_blank" href="http://www.hujiang.com">沪江网</a></li>
                <li class="cls_line"><a class="cls_header_app_en" target="_blank" href="http://www.hjenglish.com">英语站</a></li>
                <li><a class="cls_header_app_jp" target="_blank" href="http://jp.hjenglish.com">日语站</a></li>
                <li><a class="cls_header_app_fr" target="_blank" href="http://fr.hujiang.com">法语站</a></li>
                <li><a class="cls_header_app_kr" target="_blank" href="http://kr.hujiang.com">韩语站</a></li>
                <li class="cls_line"><a class="cls_header_app_shop" target="_blank" href="http://tuan.hujiang.com/?source=1081">沪江团购</a></li>
                <li><a class="cls_header_app_dict" target="_blank" href="http://dict.hujiang.com">沪江小D</a></li>
            </ul>
        </div>
        <ul class="cls_listUserInfo">
            
            
                <li class="menu"><a href="/feedback">学员心声</a></li>
                <li class="menu"><a href="/xb/charge">学币充值</a></li>
                <li class="menu"><a href="javascript:" id="headerBarLogin">登录</a></li>
                <li class="menu"><a href="javascript:" id="headerBarRegister">注册</a></li>
            
        </ul>
        <ul class="cls_listApp">
            <li class="menu" id="cls_headMenu_home"><a class="link_shadow" href="/">首页</a></li>
            <li id="cls_headMenu_myclass">
                <div class="layer_slideTitle">
                    <a href="/myclass" class="slide link_shadow">班级</a> <b></b>
                    <div class="clear">
                    </div>
                </div>
                <div class="layer_slideList layer_classList">
                    <div class="layer_cnt">
                        <ul>
                            
								<li><a href='/course'>您还没有参加班级！马上报班</a></li>
                            
                        </ul>
                        <div class="clear">
                        </div>
                    </div>
                </div>
            </li>
            <li class="menu" id="cls_headMenu_public"><a class="link_shadow" href="http://topic.s.hujiang.com/public">大厅</a></li>
            <li class="menu course" id="cls_headMenu_course"><a class="link_shadow" href="/course?source=932">选课</a></li>
            <li id="cls_headMenu_using">
                <div class="layer_slideTitle">
                    <a href="/app/list" class="slide link_shadow">应用</a> <b></b>
                    <div class="clear">
                    </div>
                </div>
                <div class="layer_slideList layer_AppList">
                    <div class="layer_cnt">
                        <ul>
                            
                                    <li class="app_myclass">
                                        <a href="/app/myclass/">我的班级</a>
                                    </li>
                                
                                    <li class="app_event">
                                        <a href="http://www.cctalk.com/gongkaike/">名师公开课</a>
                                    </li>
                                
                                    <li class="app_exp">
                                        <a href="/exp/">体验班</a>
                                    </li>
                                
                                    <li class="app_note">
                                        <a href="/note/">网校笔记</a>
                                    </li>
                                
                                    <li class="app_tiku">
                                        <a href="http://tiku.hujiang.com">虎将题库</a>
                                    </li>
                                
                                    <li class="app_cichang">
                                        <a href="/app/cichang/">开心词场</a>
                                    </li>
                                
                                    <li class="app_box">
                                        <a href="/app/box/">百宝箱</a>
                                    </li>
                                
                                    <li class="app_cang">
                                        <a href="/app/cang/">收藏中心</a>
                                    </li>
                                
                            <div class="clear">
                            </div>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
        <div class="cls_pnlSearch">
            <a href="javascript:" id="cls_btnSearch" title="点击搜索"></a>
            <input type="text" id="cls_txtHeadSearch" rel="搜课程/公开课/答疑..." value="搜课程/公开课/答疑..." class="lightgray" />
        </div>
        <input type="text" style="display: none;" />
        <a id="hHeaderBarUserInfo" class="update_info_tooltip pass_register_tooltip" data-id="0">点击完善信息</a>
    </div>
    </div>
<script type="text/javascript">
    function setskin() {
        $.ajax({
            type: "POST",
            url: "/skin2/SaveSkin.ashx?skin=xuexipa",
            data: $("#frm").serialize(),
            error: function (request) {
                $("#showMsg").html(request);
            },
            success: function (data) {
                if (data == 'ok') {
                    //alert("设置成功");
                    location.reload();
                } else if (data == '') {
                    location.reload();
                }
            }
        });
    }
</script>
<input type="hidden" id="hHeaderBarPassHost" value="pass.hujiang.com" />
<input type="hidden" id="passSubHost" value="pass" />
    <link rel="stylesheet" type="text/css" href="/css/header_black.css" />
    <div class="page_wrapper" id="wrapper">
        <div class="container" id="container">
            <div class="kc_buy">
                <div class="thumb" id="thumb">

                    <a class="label" href="/course">选课中心</a>
                    &gt;
			    <span class="label current">确认订单</span>
                </div>
                <div class="main_wrap">
                    <!-- 课程信息 -->
                    <div id="class_info" class="class_info" data-classid="146555" data-orgnprice="13200.0" data-price="9240.0" data-activity="true" data-isdiscount="True">
                        <div class="class_summary">
                            <div class="class_img">
                                <a target="_blank" class="title" href="/146555/intro/">
                                    <img class="photo" src="http://f1.c.hjfile.cn/lesson/intro/201410/83115223-5f26-4b8e-bbf1-0395cea8b011.png" alt="Hi Japanese J1-J5【私人定制第1期】" /></a>
                            </div>
                            <div class="class_des">
                                <h3 class="class_tit">
                                    <a target="_blank" class="title" href="/146555/intro/">Hi Japanese J1-J5【私人定制第1期】</a>
                                </h3>
                                <p class="row">课时：<span class="text">347课时</span></p>
                                <p class="row">老师：<span class="text">沪江网校日语教学组</span></p>
                                <p class="row">
                                    时间：<span class="text">2015.01.05-2016.02.12</span>
                                </p>
                            </div>
                        </div>

                           <div class="orign_price">
                            <div class="generic" data-price="9240.0">
                                <div class="after"><span class="text">促销价：</span><span class="pricehead">￥</span><span class="num">9240.0</span><span class="yuan"></span></div>
                                
                                <div class="forsale">
                                    
                                    <span class="text">原价：<span class="pricehead">￥</span><span class="num">13200.0</span><span class="yuan"></span><br />
                                        (省<span>￥</span>3960.0)</span>
                                    
                                </div>
                                
                            </div>
                            <div class="mutex hide" data-price="13200.0">
                                <div class="after"><span class="text">原价：<span class="pricehead">￥</span></span><span class="num">13200.0</span><span class="yuan"></span></div>
                                
                                <div class="forsale">
                                    <div class="text">
                                        (省<span>￥</span>3960.0)
                                    </div>
                                    <div class="usenow"><a class="btn_warning" id="joinPromotion" href="javascript:;">立即使用</a></div>
                                    <div id="notips" class="reset">
                                        <div class="arrow">&nbsp;</div>
                                        <span>点此恢复使用促销</span> <a class="noshow" onclick="$('#notips').hide()">不再提示</a>
                                    </div>
                                </div>
                                
                            </div>

                        </div>
                        <hr class="clearfix" />
                    </div>

                    <div id="all_list_wrap">
                        
                        <div class="order_item timed_youhui">
                            <div class="order_item_title">
                                <i class="order_item_title_ico"></i>
                                <h4 class="title">限时优惠</h4>
                                <div class="price_r">
                                    <i class="chuxiao_ico"></i>
                                    <i class="price_tips hide"></i>
                                    <span class="pricehead">￥</span><span id="span_class_price" class="price_r_num">9240.0</span>
                                    
                                </div>
                                <!--课程价格-->
                                <div class="fr price_txt">课程价格</div>
                            </div>
                            <div class="order_item_detail">
                                <ul id="ul_sale_event" class="list">
                                    <li>
                                        <i class="free_ico"></i><span class="label">HI JAPANESE 私人订制一期班限时7.5折（立省<span>￥</span>3960.0）</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <!-- 卡券 -->
                        <div id="youhui" class="youhui order_item">
                            <div class="order_item_title">
                                <i class="order_item_title_ico"></i>
                                <h4 class="title">学习卡/优惠券</h4>
                                <a id="add_card" class="add_card" href="javascript:;">输入卡/券编号</a>
                                <a class="nouse hide" id="nouse">取消使用</a>
                                <div class="price_r">
                                    <span class="price_r_mark">-</span>
                                    <span class="pricehead">￥</span><span class="price_r_num" id="discount_youhui">0.0</span>
                                    
                                </div>
                            </div>
                            <div id="youhui_list_dropdown" class="order_item_detail">
                                <div class="youhui_card" id="youhui_card">
                                    <ul class="list hide">       
                                                                               
                                        <li id="li_noCouponCode" data-cardcode="" data-isgeneric="true" data-saletotalfee="3960.0" data-isoverflow="false" data-isapply="true" class="useless hide">
                                            <i class="youhui_ico youhui_no"></i>不使用学习卡、优惠券
                                        </li>
                                      </ul>
                                    <div id="div_quan_empty" class="hide">账户中无可用卡券</div>
                                </div>
                            </div>
                        </div>

                        <!-- 学币支付 -->
                        <div id="xuebi" class="xuebi order_item hide">
                            <div class="order_item_title ">
                                <i class="order_item_title_ico xb_ico"></i>
                                <h4 class="title">学币支付</h4>
                                <div class="price_r">
                                    <span class="price_r_mark">-</span>
                                    <span class="pricehead">￥</span><span class="price_r_num" id="discount_xuebi">0.0</span>
                                    
                                </div>
                            </div>

                            <div class="order_item_detail">
                                <div class="xuebi_all">
                                    <span class="text">账户可用学币0.0</span>
                                    本次使用
                                    <input id="pay_xb" type="text" value="0.0" maxlength="7" data-xb="" data-rewardxb="" />学币
                                    <span class="img">
                                        <img title="订单生成后学币将被冻结，取消订单后会返还至账户。" src="http://res.c.hjfile.cn/app/order/images/icon_help@16x16.png" alt="help" /></span>
                                </div>
                                
                            </div>

                        </div>

                        <!-- 其他优惠 -->
                       
                    </div>
                    <div id="total_info" class="total_info">
                        <div class="total_price">
                            <span class="title">订单金额：</span><span class="ordersuretip">￥</span><span class="total_price_num" id="actPay">9240.0</span><span class="yuan"></span>
                            
                        </div>

                        <div id="div_edit_phone" class="phone_wrap ">
                            <div class="phone">
                                <span class="label" id="phone_tips">请填写您的电话：</span>
                                <input class="input psnote_tip" id="phone_number" type="text" maxlength="20" value="" />
                                <span class="clear_btn"></span>
                                
                                
                            </div>
                            <hr class="clearfix" />
                        </div>
                        

                        <div class="validate_wrap">
                            <div class="validate_code hide">
                                <input type="text" class="validate_code_num" id="validate_code_orderNum" maxlength="4" />
                                <img class="validate_code_img" id="validate_code_orderImg" src="http://res.c.hjfile.cn/app/order/handler/orderverifycode.ashx" alt="换一张" width="70" height="26" />
                                <a href="javascript:void(0);" class="validate_refresh" id="validate_refresh_order">换一张</a>
                                <hr class="clearfix" />
                            </div>
                        </div>
                        <div class="submit_btn">
                            <span class="msg_err"></span>
                            <a class="btn_primary" href="javascript:;" id="submit_btn">提交订单</a>
                            <a href="javascript:;" class="btn_primary" id="submit_btn_cur" style="display: none;">提交中...</a>
                        </div>
                        <hr class="clearfix" />
                    </div>
                    <hr class="clearfix" />

                </div>
            </div>
        </div>
        <!--end: container -->
    </div>
    <!--end: wrapper -->
    

<!-- new_footer -->
<div id="new_footer">
    <div class="footer_about">
        <div class="ft_contact fl">
            <p class="tit_kf">客服热线<span style="font-size:12px;color:#A6A6A6;">（每日9:00-21:00）</span></p>
            <p class="kf_num">4008 220 220 <span> 免长途费</span></p>
            <div class="fl ml5">
                <img src="http://res.c.hjfile.cn/images/img_wx.png" alt="沪江网校微信" class="">
                <div class="wx_txt txt_c">关注微信</div>
            </div>
            <div class="kf_info_box">
                <i class="icons_footer icon_mail"></i>邮箱：<a href="mailto:kf@hujiang.com"><span>kf@hujiang.com</span></a><br>
                <i class="icons_footer icon_sina"></i>新浪微博：<a href="http://weibo.com/hjclass" rel="nofollow" target="_blank">hjclass</a>
                <br><i class="icons_footer icon_kf"></i><a href="/common/kf.aspx?style=1" title="在线客服" target="_blank" class="noline">在线客服</a>
                
            </div>
        </div>
        <div class="ft_line fl">
            <img src="http://res.c.hjfile.cn/images/footer_line.gif" alt="" width="22" height="170"></div>
        <div class="ft_help fl">
            <dl>
                <dt>新手指南</dt>
                <dd>
                    <a href="http://kefu.hujiang.com/faq/1159/" target="_blank" rel="nofollow">如何注册</a>
                </dd>
                <dd>
                    <a href="http://kefu.hujiang.com/faq/85/" target="_blank" rel="nofollow">如何选课</a>
                </dd>
                <dd>
                    <a href="http://kefu.hujiang.com/faq/122/" target="_blank" rel="nofollow">学币是什么</a>
                </dd>
                <dd>
                    <a href="http://kefu.hujiang.com/faq/108/" target="_blank" rel="nofollow">如何开通课程</a>
                </dd>
            </dl>
        </div>
        <div class="ft_line fl">
            <img src="http://res.c.hjfile.cn/images/footer_line.gif" alt="" width="22" height="170"></div>
        <div class="ft_about fl">
            <dl>
                <dt>关于课程</dt>
                <dd>
                    <a href="http://kefu.hujiang.com/faq/89/" target="_blank" rel="nofollow">如何试听</a>
                </dd>
                <dd>
                    <a href="http://kefu.hujiang.com/faq/311/" target="_blank" rel="nofollow">课件离线使用</a>
                </dd>
                <dd>
                    <a href="http://kefu.hujiang.com/faq/916/" target="_blank" rel="nofollow">课程有效期</a>
                </dd>
                <dd>
                    <a href="http://www.cctalk.com/download/" target="_blank">CCTalk下载</a>
                </dd>
                <dd>
                    <a href="http://kefu.hujiang.com/product/147/" target="_blank" rel="nofollow">售后政策</a>
                </dd>
            </dl>
        </div>
        <div class="ft_line fl">
            <img src="http://res.c.hjfile.cn/images/footer_line.gif" alt="" width="22" height="170"></div>
        <div class="ft_school fl">
            <dl>
                <dt>特色网校</dt>
                <dd>
                    <a href="/app/number" target="_blank">学号申领</a>
                </dd>
                <dd>
                    <a href="/app/mobile" target="_blank">移动网校</a>
                </dd>
                <dd>
                    <a href="http://mc.hujiang.com" rel="nofollow">网校触屏版</a>
                </dd>
                <dd>
                    <a target="_blank" href="/video">网校宣传片</a>
                </dd>
            </dl>
        </div>
        <div class="clear"></div>
    </div>
    <div class="footer_copyright txt_c">
        <a target="_blank" href="http://www.hujiang.com/about/" rel="nofollow">关于沪江</a>&nbsp;|&nbsp;
        <a target="_blank" href="/media">媒体报道</a>&nbsp;|&nbsp;
        <a target="_blank" href="http://www.hujiang.com/about/contact/" rel="nofollow">联系我们</a>&nbsp;|&nbsp;
        <a target="_blank" href="/biz">商务合作</a>&nbsp;|&nbsp;
        <a target="_blank" href="http://jobs.hujiang.com/teach" rel="nofollow">沪江招聘</a>&nbsp;|&nbsp;
        <a target="_blank" href="http://kefu.hujiang.com/" rel="nofollow">帮助中心</a>&nbsp;|&nbsp;
        <a target="_blank" href="http://kefu.hujiang.com/feedback/?url=http://class.hujiang.com/home" rel="nofollow">意见反馈</a>&nbsp;|&nbsp;
        <a target="_blank" href="http://www.hujiang.com/sitemap/" rel="nofollow">全站地图</a>&nbsp;|&nbsp;
        <a target="_blank" href="/rule">使用协议</a>&nbsp;|&nbsp;
        &copy;2014 <a href="/" target="_blank">沪江网校</a> <a href="javascript:;" target="_blank" onclick="this.href='http://www.miitbeian.gov.cn'" title="沪ICP证" rel="nofollow">沪B2-20110096</a> <a href="http://www.hujiang.com/about/about_zizhi/" target="_blank" rel="nofollow">教育部职成司函</a>
    </div>
</div>


<script type="text/javascript">
    ga_usertype = ""; 
    ga_userid = 0;
    ga_username = "";
</script>
  
<script type="text/javascript" src="http://common.hjfile.cn/analytics/site/class.js?v=20141021"></script>
<script type="text/javascript" src="http://common.hjfile.cn/analytics/hotlink/hotlink.js?v=2"></script>



<script type="text/javascript" src="/js/usercard.js?v=2"></script>
    
    <input type="hidden" id="hPage" value="orderSure" />
    <input type="hidden" id="hHasCode" value="0" />

    <script src='http://res.c.hjfile.cn/app/js_output/F1BBAEA7D44029A11CBEAA5391763124.js?v=635520171479561679' type='text/javascript'></script>

    <script type="text/x-jquery-tmpl" id="add_card_tmpl">
        <div>
            <div id="add_card_modal" class="add_card_modal">
                <div class="add_modal_wrap">
                    <div class="modal_cont">
                        <div class="modal_cont_item">
                            <div class="modal_cont_title">学习卡号/优惠券号：</div>
                            <input class="input" type="text" id="add_num" maxlength="30" value="" />
                            <hr class="clearfix" />
                        </div>
                        <div class="modal_cont_item validate_code hide">
                            <div class="modal_cont_title clear">验证码：</div>
                            <input class="validate_code_input" type="text" id="validate_code_num" maxlength="4" />
                            <img class="validate_code_img" id="validate_code_img" src="http://res.c.hjfile.cn/app/order/handler/quanverifycode.ashx" alt="换一张" />
                            <a class="validate_refresh" href="javascript:void(0);" id="validate_refresh">换一张</a>

                        </div>
                        <div>
                            <div class="validate_text"></div>
                            <hr class="clearfix" />
                        </div>
                        <div class="modal_cont_item">
                            <div class="modal_cont_title"></div>
                            <a class="btn_primary modal_submit" href="javascript:;" id="modal_submit">确认</a>
                            <a href="javascript:; modal_submit_cur" class="btn_primary" id="modal_submit_cur" style="display: none;">提交中...</a>
                            <hr class="clearfix" />
                        </div>
                    </div>
                    <div class="add_card_tip">
                        说明：<br />
                        1、新增成功的学习卡/优惠券会自动保存到”我的卡券“，可以在订单确认页选择使用；<br>
                        2、新增成功的学习卡/优惠券不会与您的账户绑定，可以转增他人使用；
                    </div>
                </div>
            </div>
        </div>
    </script>
    <script type="text/javascript">
        $(function () {
            $("#selOrderStatus").change(function () {
                var status = $(this).val();
                if (status != "") {
                    window.location = "/xb/order?os=" + status;
                } else {
                    window.location = "/xb/order";
                }
            });
        });
    </script>

    
    <script type="text/javascript">
        login.doLogin();
    </script>
    
    <script type="text/javascript">
        //默认关闭划词功能
        $(function () {
            var iClearDictShift = setInterval(function () {
                if (typeof (ShiftDictEnable) == 'function') {
                    var cookie = $.cookie("userHuaCiSet");
                    if (cookie == 'true') {
                        ShiftDictEnable(true);
                    } else
                        ShiftDictEnable(false);
                }
            }, 1000);
            setTimeout(function () { clearInterval(iClearDictShift) }, 5000);
        });


        var RewardXBAdditionalDiscount = {
            isOpen:false,
            rate_old:1.0,
            rate_new:1.2
            }
    </script>
</body>
</html>

