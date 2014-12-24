package com.yfann.web.dao;

import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.pojo.OrderDetailExample;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface OrderDetailMapper {
	/**
	 * 根据销售码查询
	 * 
	 * @param code
	 * @return
	 */
	OrderDetail selectByCode(String code);

	List<OrderDetail> selectOrderDetailListByOrderId(String orderId);

	/**
	 * 根据条件查询订单详情列表
	 * 
	 * @param parames
	 * @return
	 */
	List<OrderDetail> selectOrderDetailByParame(Map<String, Object> parames);

	/**************************************************************************************************************/
	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int countByExample(OrderDetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int deleteByExample(OrderDetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int deleteByPrimaryKey(String id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int insert(OrderDetail record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int insertSelective(OrderDetail record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	List<OrderDetail> selectByExampleWithBLOBs(OrderDetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	List<OrderDetail> selectByExample(OrderDetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	OrderDetail selectByPrimaryKey(String id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int updateByExampleSelective(@Param("record") OrderDetail record,
			@Param("example") OrderDetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int updateByExampleWithBLOBs(@Param("record") OrderDetail record,
			@Param("example") OrderDetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int updateByExample(@Param("record") OrderDetail record, @Param("example") OrderDetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeySelective(OrderDetail record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeyWithBLOBs(OrderDetail record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_order_detail
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKey(OrderDetail record);
}