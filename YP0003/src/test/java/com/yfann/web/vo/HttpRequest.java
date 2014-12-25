package com.yfann.web.vo;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Random;

public class HttpRequest implements Runnable {

	public static void main(String[] args) {
		HttpRequest h1 = new HttpRequest();
		Thread d1 = new Thread(h1);
		d1.start();
		HttpRequest h2 = new HttpRequest();
		Thread d2 = new Thread(h2);
		d2.start();
		HttpRequest h3 = new HttpRequest();
		Thread d3 = new Thread(h3);
		d3.start();
		HttpRequest h4 = new HttpRequest();
		Thread d4 = new Thread(h4);
		d4.start();
	}

	@Override
	public void run() {
		String url = "http://tp.xiaogan.com/tp/huodong/detail.php/xiaogan_tp/huodong/detail.php?";
		Random r = new Random();
		for (int i = 0; i < 8000; i++) {
			String sj = "13886" + (r.nextInt(900000) + 100000);
			String id = "" + (r.nextInt(40) + 1);
			// String id = "4";
			String tid = "2";
			if (!id.equals("4")) {
				sendGet(url + "id=" + id + "&tid=" + tid + "&sj=" + sj);
				System.out.println(i);
			}
			// Thread.sleep(10l);
			// System.out.println("id=" + id + "&tid=" + tid + "&sj=" + sj);
		}

	}

	/**
	 * 向指定URL发送GET方法的请求
	 * 
	 * @param url
	 *            发送请求的URL
	 * @return URL 所代表远程资源的响应结果
	 */
	public static String sendGet(String url) {
		String result = "";
		BufferedReader in = null;
		try {
			String urlNameString = url;
			URL realUrl = new URL(urlNameString);
			// 打开和URL之间的连接
			URLConnection connection = realUrl.openConnection();
			// 设置通用的请求属性
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			// 建立实际的连接
			connection.connect();
			// 获取所有响应头字段
			// Map<String, List<String>> map = connection.getHeaderFields();
			// 遍历所有的响应头字段
			// for (String key : map.keySet()) {
			// System.out.println(key + "--->" + map.get(key));
			// }
			// 定义 BufferedReader输入流来读取URL的响应
			in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			System.out.println("发送GET请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输入流
		finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

}
