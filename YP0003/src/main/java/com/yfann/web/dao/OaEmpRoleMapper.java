package com.yfann.web.dao;

import com.yfann.web.pojo.OaEmpRole;
import com.yfann.web.pojo.OaEmpRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OaEmpRoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_emp_role
     *
     * @mbggenerated
     */
    int countByExample(OaEmpRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_emp_role
     *
     * @mbggenerated
     */
    int deleteByExample(OaEmpRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_emp_role
     *
     * @mbggenerated
     */
    int insert(OaEmpRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_emp_role
     *
     * @mbggenerated
     */
    int insertSelective(OaEmpRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_emp_role
     *
     * @mbggenerated
     */
    List<OaEmpRole> selectByExample(OaEmpRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_emp_role
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") OaEmpRole record, @Param("example") OaEmpRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_emp_role
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") OaEmpRole record, @Param("example") OaEmpRoleExample example);
}