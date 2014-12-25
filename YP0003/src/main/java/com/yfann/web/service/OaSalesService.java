package com.yfann.web.service;

import java.math.BigDecimal;
import java.util.List;

import com.yfann.web.pojo.OaSales;
import com.yfann.web.pojo.OaSalesPic;

public interface OaSalesService {
	/**
	 * 新增销售记录
	 * 
	 * @param oaSales
	 * @throws Exception
	 */
	public void saveOaSales(OaSales oaSales) throws Exception;

	/**
	 * 更新销售记录
	 * 
	 * @param oaSales
	 * @throws Exception
	 */
	public void updateOaSales(OaSales oaSales) throws Exception;

	/**
	 * 根据id删除销售信息
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void delOaSales(String id) throws Exception;

	/**
	 * 获取所有的销售记录，按照时间倒序
	 * 
	 * @param id
	 * @return
	 */
	public List<OaSales> getOaSalesAllById(String id, int offset, int limit);

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
	 * 销售码存在且未被使用
	 * 
	 * @param salesCode
	 * @return
	 */
	public boolean SalesCodeUsed(String salesCode);

	/**
	 * 通过销售码获取单价
	 * 
	 * @param salesCode
	 * @return
	 */
	public BigDecimal getPriceBySalesCode(String salesCode);

	/**
	 * 根据销售id获取图片
	 * 
	 * @param id
	 * @return
	 */
	public List<OaSalesPic> getPicBySales(String id);

	/**
	 * 根据图片id获取图片
	 * 
	 * @return
	 */
	public OaSalesPic getPicById(String id);

	/**
	 * 保存图片
	 * 
	 * @param oaSalesPic
	 */
	public void savePic(OaSalesPic oaSalesPic);

	/**
	 * 根据销售id删除图片
	 * 
	 * @param id
	 */
	public void delPic(String id);

	/**
	 * 更新图片
	 * @param oaSalesPic
	 */
	public void updateOaSales(OaSalesPic oaSalesPic);

	/**
	 * 清除无用的销售图片
	 */
	public void delClearPic();
	
	/**
	 * 根据日期查询销售信息
	 * @param date
	 * @return
	 */
	public List<Object> getSalesCountAll(String date, int offset, int limit);

}
