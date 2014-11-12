package com.yfann.web.vo;


import java.util.Date;

import com.yfann.web.common.TimeUtil;


public class Test {
	
	public static void main(String[] args) throws Exception {
		System.out.println(TimeUtil.getDateString(new Date(), TimeUtil.FORMAT5));
	}
}
