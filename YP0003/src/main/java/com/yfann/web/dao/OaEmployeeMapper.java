package com.yfann.web.dao;

import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaEmployeeExample;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface OaEmployeeMapper {
	/**
	 * 根据条件查询员工信息 分页查询
	 * @param parames
	 * @param rowBounds
	 * @return
	 */
	List<OaEmployee> selectEmployeeByParames(Map<String,Object> parames,RowBounds rowBounds);
	/**
	 * 根据条件查询员工数辆
	 * @param parames
	 * @param rowBounds
	 * @return
	 */
	Integer selectEmployeeCountByParames(Map<String,Object> parames);
	/**
	 * 更新头像
	 * @param record
	 */
	void updateHeadImg(OaEmployee record);
	/**
	 * 根据字段查询用户
	 * 
	 * @param map
	 * @return
	 */
	List<OaEmployee> selectEmpByField(Map<String, Object> map);

	/**
	 * 查询符合条件的数量
	 * 
	 * @param map
	 * @return
	 */
	Integer selectEmpCountByField(Map<String, Object> map);

	/**
	 * 查询角色相关的用户
	 * 
	 * @param roleId
	 * @return
	 */
	List<OaEmployee> selectByRole(String roleId);

	/**
	 * 分页查询
	 * 
	 * @param oaEmployeeExample
	 * @param rowBounds
	 * @return
	 */
	List<OaEmployee> selectByExample(OaEmployeeExample oaEmployeeExample, RowBounds rowBounds);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int countByExample(OaEmployeeExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int deleteByExample(OaEmployeeExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int deleteByPrimaryKey(String id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int insert(OaEmployee record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int insertSelective(OaEmployee record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	List<OaEmployee> selectByExampleWithBLOBs(OaEmployeeExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	List<OaEmployee> selectByExample(OaEmployeeExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	OaEmployee selectByPrimaryKey(String id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int updateByExampleSelective(@Param("record") OaEmployee record,
			@Param("example") OaEmployeeExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int updateByExampleWithBLOBs(@Param("record") OaEmployee record,
			@Param("example") OaEmployeeExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int updateByExample(@Param("record") OaEmployee record, @Param("example") OaEmployeeExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeySelective(OaEmployee record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeyWithBLOBs(OaEmployee record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_employee
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKey(OaEmployee record);
}