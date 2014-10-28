package com.yfann.web.vo;

public class After {
	static After data;
	// 静态成员变量
	private static int initializationCount = 0;

	// 取值：线程安全懒惰初始化方式
	public After getData() {
		if (data == null) {
			synchronized (new After()) {
				if (data == null) {
					data = new After();
					initializationCount++;
				}
				System.out.println(initializationCount);
			}
		}
		return data;
	}
}
