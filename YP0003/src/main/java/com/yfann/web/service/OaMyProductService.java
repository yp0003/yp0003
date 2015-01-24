package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.Department;
import com.yfann.web.pojo.MyProduct;

public interface OaMyProductService {
	/**
	 * 根据id获取我的课程
	 * 
	 * @param id
	 * @return
	 */
	public MyProduct getMyProductById(String id);

	/**
	 * 获取所有需要填写播放码的课程
	 * 
	 * @param off
	 *            从off开始查询
	 * @param lim
	 *            每次最多查询lim条
	 * @return
	 */
	public List<MyProduct> getAllMyProduct(int off, int lim);

	/**
	 * 获取所有需要填写播放码的课程总数
	 * 
	 * @return
	 */
	public Integer getAllMyProductCount();

	/**
	 * 更新播放码
	 * 
	 * @param myProduct
	 */
	public void updateMyProduct(MyProduct myProduct);

}
