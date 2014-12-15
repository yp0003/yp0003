package com.yfann.web.common;

import java.util.Date;

import com.yfann.web.pojo.Product;

/**
 * 编码生成类
 * @author gss-pc
 *
 */
public class CodeUtil {
	/**
	 * @return 订单编码( 课程编号+日期+序列号，中间用中横杠链接)
	 * ①课程编号，课程名称的前三个字母的大写+两位连续数字（初，中，高类似顺序编号）；
		②日期，即订单生成的日期，为8位；
		③序列号，10位，从0000000001开始的连续数字；
		例如：JGS-01-20140905-00000000001
	 */
	public static String orderCode(Product product){
		String code = product.getProductId()+"-"+product.getLevel()+"-"
					+TimeUtil.getDateString(new Date(),TimeUtil.FORMAT3)+"-";
		return code;
	}
	

}
