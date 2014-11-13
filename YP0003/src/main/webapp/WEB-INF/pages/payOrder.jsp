<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>支付订单</title>
</head>
<body>
<%@ include file="common/common.jsp"%>

<s:form action="order!">
<div class="content">
   <div class="cidnav">
   		    <ul>                
                <li><span class="cidcolor">3.付款</span></li>     
                 <li><span>></span></li>                
                <li><span class="orther">2.确认订单信息</span></li>
                 <li><span>></span></li>     
                <li><span class="orther">1.我的购物车</span></li>
            </ul>
   </div>
   <div style="clear:both"></div>
   <div class="lineone"></div>
   <div class="ordercon">
      	<div class="ordercon_01">
        	<span>订单编号：<span style="color:#EA5504"><s:property value="order.orderId"/></span></span>
            <span>下单时间：<span style="color:#2A8C01"><s:property value="order.orderCreateTime"/></span></span>
            <span>金额：<span style="color:#EA5504"><s:property value="order.countPrice"/></span></span>
        </div>
        <div class="orderinfo">
        	<span class="orderinfo_02">共<b style="color:#BE3948">2</b>种商品，应付总额<b  style="color:#BE3948; font-size:16px;">￥22.00元</b></span>
        </div>
	</div>
    <div class="order_mid">
        	立即支付<span style="color:#BE3948"> <s:property value="order.countPrice"/> </span>元 ， 即可完成订单!
    </div>
    <div class="taba">
			<div class="title">
				<ul class="fn-clear tab-ul">
					<li class="def tab-z" n="1">今日特价</li>
					<li class="tab-z" n="2">我的关注</li>
				</ul>
			</div>
			<div class="taba_line sp show z_1">
            	<div class="order_qh"><span>网银支付：</span>需要跳转至网银页面完成付款</div>
                <ul class="nCard-list nCard-last clearfix">
                    <li class="bankCard nCardCil" data-gateway="0005">
                        <label title="工商银行" for="bank_0005">
                            <input id="bank_0005" class="nRadio" type="radio" checked="checked" data-name="工商银行" name="myCard" value="0005"></input>
                            <img src="image/card/bank_5.gif" alt="工商银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    </li>
                   <li class="bankCard " data-gateway="0007">
                        <label title="招商银行" for="bank_0007">
                            <input id="bank_0007" class="nRadio" type="radio" data-name="招商银行" name="myCard" value="0007"></input>
                            <img src="image/card/bank_11.gif" alt="招商银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    </li>
                    <li class="bankCard " data-gateway="4008">

                        <label title="农业银行" for="bank_4008">
                            <input id="bank_4008" class="nRadio" type="radio" data-name="农业银行" name="myCard" value="4008"></input>
                            <img src="image/card/bank_17.gif" alt="农业银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="1025">
                    
                        <label title="交通银行" for="bank_1025">
                            <input id="bank_1025" class="nRadio" type="radio" data-name="交通银行" name="myCard" value="1025"></input>
                            <img src="image/card/bank_9.gif" alt="交通银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="1023">
                    
                        <label title="中国银行" for="bank_1023">
                            <input id="bank_1023" class="nRadio" type="radio" data-name="中国银行" name="myCard" value="1023"></input>
                            <img src="image/card/bank_8.gif" alt="中国银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="0031">
                    
                        <label title="平安银行" for="bank_0031">
                            <input id="bank_0031" class="nRadio" type="radio" data-name="平安银行" name="myCard" value="0031"></input>
                            <img src="image/card/bank_60.gif" alt="平安银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="1022">
                    
                        <label title="浦东发展银行" for="bank_1022">
                            <input id="bank_1022" class="nRadio" type="radio" data-name="浦东发展银行" name="myCard" value="1022"></input>
                            <img src="image/card/bank_4.gif" alt="浦东发展银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="0015">
                    
                        <label title="中国民生银行" for="bank_0015">
                            <input id="bank_0015" class="nRadio" type="radio" data-name="中国民生银行" name="myCard" value="0015"></input>
                            <img src="image/card/bank_18.gif" alt="中国民生银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="1010">
                    
                        <label title="中国建设银行" for="bank_1010">
                            <input id="bank_1010" class="nRadio" type="radio" data-name="中国建设银行" name="myCard" value="1010"></input>
                            <img src="image/card/bank_6.gif" alt="中国建设银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="0030">
                    
                        <label title="上海银行" for="bank_0030">
                            <input id="bank_0030" class="nRadio" type="radio" data-name="上海银行" name="myCard" value="0030"></input>
                            <img src="image/card/bank_21.gif" alt="上海银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="0009">
                    
                        <label title="兴业银行" for="bank_0009">
                            <input id="bank_0009" class="nRadio" type="radio" data-name="兴业银行" name="myCard" value="0009"></input>
                            <img src="image/card/bank_12.gif" alt="兴业银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="0027">
                    
                        <label title="光大银行" for="bank_0027">
                            <input id="bank_0027" class="nRadio" type="radio" data-name="光大银行" name="myCard" value="0027"></input>
                            <img src="image/card/bank_13.gif" alt="光大银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                    <li class="bankCard " data-gateway="0026">
                    
                        <label title="广发银行" for="bank_0026">
                            <input id="bank_0026" class="nRadio" type="radio" data-name="广发银行" name="myCard" value="0026"></input>
                            <img src="image/card/bank_3.gif" alt="广发银行"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                    </li>
                </ul>
				<div style="padding-left:60px; color:#000">如果您选择的银行限额不足， 可选择<span style="color:#0066CC"> 银联在线支付 </span>或<span style="color:#0066CC"> 联系银行客服</span>。 </div>
                <div class="order_sub"><button class="btn btn-large btn-danger" type="button">确认付款 》</button></div>
			</div>
			<div class="sp fn-clear  z_2">
            	<div class="order_qh">建议您使用<b style="color:#0066CC"> 银联在线支付</b>，无需开通网银，单笔最高支持3万，支持180多家银行。</div>
				 <ul class="nCard-list nCard-last clearfix">

                    <li class="bankCard nCardCil" >
                        <label title="在线支付平台" for="100100_platform">
                            <input id="100100_platform" class="nRadio" type="radio" data-name="在线支付平台" checked="checked" name="myCardpaytype"></input>
                            <img src="image/card/bank_0.gif" alt="在线支付平台"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    </li>
                   <li class="bankCard " >

                        <label title="支付宝" for="100112_platform">
                            <input id="100112_platform" class="nRadio" type="radio" data-name="支付宝" name="myCardpaytype" value="alipay"></input>
                            <img src="image/card/zfb2.gif" alt="支付宝"></img>
                        </label>
                        <span class="nCard-tips"></span>
                    
                  </li>
                </ul>
                <div style="padding-left:60px; color:#000">如果您选择的银行限额不足， 可选择<span style="color:#0066CC"> 银联在线支付 </span>或<span style="color:#0066CC"> 联系银行客服</span>。 </div>
                <div class="order_sub"><button class="btn btn-large btn-danger" type="submit">确认付款 》</button></div>
			</div>
			
		</div>
</div>

</s:form>


<%@ include file="common/commonFooter.jsp"%>
</body>
</html>