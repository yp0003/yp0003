package com.yfann.web.dao;

import com.yfann.web.pojo.OaRole;
import com.yfann.web.pojo.OaRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OaRoleMapper {
	/**
	 * 查询员工/客户所关联的角色
	 * 
	 * @param id
	 * @return
	 */
	List<OaRole> selectByEmployee(String id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int countByExample(OaRoleExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int deleteByExample(OaRoleExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int deleteByPrimaryKey(String roleId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int insert(OaRole record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int insertSelective(OaRole record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	List<OaRole> selectByExample(OaRoleExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	OaRole selectByPrimaryKey(String roleId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int updateByExampleSelective(@Param("record") OaRole record, @Param("example") OaRoleExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int updateByExample(@Param("record") OaRole record, @Param("example") OaRoleExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeySelective(OaRole record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table t_oa_role
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKey(OaRole record);
}