package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.OaSales;

public interface OaSalesService {
	/**
	 * 新增销售记录
	 * 
	 * @param oaSales
	 * @throws Exception
	 */
	public void saveOaSales(OaSales oaSales) throws Exception;

	/**
	 * 获取所有的销售记录，按照时间倒序
	 * 
	 * @param id
	 * @return
	 */
	public List<OaSales> getOaSalesAllById(String id);

	/**
	 * 根据销售员id获取所有销售数据条数
	 * 
	 * @param id
	 * @return
	 */
	public Integer getOaSalesAllCountById(String id);

	/**
	 * 按照id获取销售记录
	 * 
	 * @param id
	 * @return
	 */
	public OaSales getOaSalesById(String id);
	
	/**
	 * 销售码是否使用
	 * @param salesCode
	 * @return
	 */
	public boolean SalesCodeUsed(String salesCode);

}
