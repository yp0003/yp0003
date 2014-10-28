package com.yfann.web.vo;


public class Test {
	static Object object;
	
	public void getDate(){
		if(object == null){
			synchronized (new Test()) {
				if(object == null){
					object = new Object();
				}
			}
		}
	}
}
