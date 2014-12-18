/*
 * AlipayAction.java
 * V 1.0.0
 *
 * Copyright © 2014 上海颐凡科技有限公司 版权所有
 *
 * 所有文字、代码资料，版权均属上海颐凡科技有限公司所有，任
 * 何公司或个人未经本司协议授权，不得复制、下载、存储或公开
 * 显示。违者本公司将依法追究责任。
 */
package com.yfann.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.pay.AlipayConfig;
import com.yfann.web.pay.AlipayNotify;
import com.yfann.web.pay.AlipaySubmit;
import com.yfann.web.pojo.Order;
import com.yfann.web.pojo.Product;
import com.yfann.web.service.OrderService;

/**
 * 支付宝在线支付Action
 *
 */
public class AlipayAction extends CommonAction {
	private static final long serialVersionUID = -7310817509443505181L;

	private AlipayConfig ac = new AlipayConfig();
	private PrintWriter out = getOut();

	/** 订单 */
	private Order order;

	@Autowired
	private OrderService orderService;

	@SuppressWarnings("static-access")
	public void pay() {
		// 支付类型
		String payment_type = "1";
		// 必填，不能修改
		// 服务器异步通知页面路径
		// 需http://格式的完整路径，不能加?id=123这类自定义参数，不能写成http://localhost/
		String notify_url = getBasePath() + "/pay!notify_url.html";

		// 页面跳转同步通知页面路径
		// 需http://格式的完整路径，不能加?id=123这类自定义参数
		String return_url = getBasePath() + "/pay!return_url.html";
		// 卖家支付宝帐户
		String seller_email = ac.account;
		// 必填 //商户订单号
		String out_trade_no = request.getParameter("id");
		// 商户网站订单系统中唯一订单号，必填 //订单名称
		order = orderService.findOrderByOrderId(out_trade_no);
		Product product = order.getOrderDetailList().get(0).getProduct();
		String subject = product.getProductName();
		// 必填 //付款金额
		String total_fee = order.getCountPrice() + "";
		// 必填 //订单描述 String body = new
		// String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");
		// 商品展示地址
		String show_url = getBasePath() + "/product!forwardProductDetail.html?product.id=" + product.getId();
		// 需以http://开头的完整路径，例如：http://www.商户网址.com/myorder.html //防钓鱼时间戳
		String anti_phishing_key = getBasePath() + "/mycenter!myMessageCount";
		// 若要使用请调用类文件submit中的query_timestamp函数 //客户端的IP地址
		String exter_invoke_ip = request.getRemoteAddr();
		// 非局域网的外网IP地址，如：221.0.0.1

		// ////////////////////////////////////////////////////////////////////////////////

		// 把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "create_direct_pay_by_user");
		sParaTemp.put("partner", ac.partner);
		sParaTemp.put("_input_charset", ac.input_charset);
		sParaTemp.put("payment_type", payment_type);
		sParaTemp.put("notify_url", notify_url);
		sParaTemp.put("return_url", return_url);
		sParaTemp.put("seller_email", seller_email);
		sParaTemp.put("out_trade_no", out_trade_no);
		sParaTemp.put("subject", subject);
		sParaTemp.put("total_fee", total_fee);
		// sParaTemp.put("body", body);
		sParaTemp.put("show_url", show_url);
		sParaTemp.put("anti_phishing_key", anti_phishing_key);
		sParaTemp.put("exter_invoke_ip", exter_invoke_ip);

		// 建立请求
		String sHtmlText = AlipaySubmit.buildRequest(sParaTemp, "get", "确认");
		out.println(sHtmlText);
	}

	/** 获取支付宝POST过来反馈信息 */
	@SuppressWarnings("rawtypes")
	public void notify_url() {
		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = request.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			// 乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
			// valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
			params.put(name, valueStr);
		}

		// 获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以下仅供参考)//
		// 商户订单号
		String out_trade_no = "";
		try {
			out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// 支付宝交易号
		// String trade_no = "";
		// try {
		// trade_no = new
		// String(request.getParameter("trade_no").getBytes("ISO-8859-1"),
		// "UTF-8");
		// } catch (UnsupportedEncodingException e) {
		// e.printStackTrace();
		// }

		// 交易状态
		String trade_status = "";
		try {
			trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println(trade_status);

		// 获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以上仅供参考)//

		if (AlipayNotify.verify(params)) {// 验证成功
			// ////////////////////////////////////////////////////////////////////////////////////////
			// 请在这里加上商户的业务逻辑程序代码

			// ——请根据您的业务逻辑来编写程序（以下代码仅作参考）——

			if (trade_status.equals("TRADE_FINISHED") || trade_status.equals("TRADE_SUCCESS")) {
				order = orderService.findOrderByOrderId(out_trade_no);
				order.setOrderStatus("010");
				orderService.updateOrder(order);
			}

			// ——请根据您的业务逻辑来编写程序（以上代码仅作参考）——

			out.println("success"); // 请不要修改或删除

			// ////////////////////////////////////////////////////////////////////////////////////////
		} else {// 验证失败
			out.println("fail");
		}
	}

	/** 获取支付宝GET过来反馈信息 */
	@SuppressWarnings("rawtypes")
	public String return_url() {
		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = request.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			// 乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
			try {
				valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			params.put(name, valueStr);
		}

		// 获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以下仅供参考)//
		// 商户订单号
		// try {
		// String out_trade_no = new
		// String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),
		// "UTF-8");
		// } catch (UnsupportedEncodingException e) {
		// e.printStackTrace();
		// }

		// 支付宝交易号
		// try {
		// String trade_no = new
		// String(request.getParameter("trade_no").getBytes("ISO-8859-1"),
		// "UTF-8");
		// } catch (UnsupportedEncodingException e) {
		// e.printStackTrace();
		// }

		// 交易状态
		String trade_status = "";
		try {
			trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// 获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以上仅供参考)//

		// 计算得出通知验证结果
		boolean verify_result = AlipayNotify.verify(params);

		if (verify_result) {// 验证成功
			// ////////////////////////////////////////////////////////////////////////////////////////
			// 请在这里加上商户的业务逻辑程序代码

			// ——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
			if (trade_status.equals("TRADE_FINISHED") || trade_status.equals("TRADE_SUCCESS")) {
				// 判断该笔订单是否在商户网站中已经做过处理
				// 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				// 如果有做过处理，不执行商户的业务程序
				return "forwardsuccess";
			}

		} else {
			// 该页面可做页面美工编辑
			return "forwardfail";
		}
		return "forwardMyOrderList";
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	private PrintWriter getOut() {
		try {
			return response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
