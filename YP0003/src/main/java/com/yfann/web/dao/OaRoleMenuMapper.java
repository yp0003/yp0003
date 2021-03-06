package com.yfann.web.dao;

import com.yfann.web.pojo.OaRoleMenu;
import com.yfann.web.pojo.OaRoleMenuExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OaRoleMenuMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_role_menu
     *
     * @mbggenerated
     */
    int countByExample(OaRoleMenuExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_role_menu
     *
     * @mbggenerated
     */
    int deleteByExample(OaRoleMenuExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_role_menu
     *
     * @mbggenerated
     */
    int insert(OaRoleMenu record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_role_menu
     *
     * @mbggenerated
     */
    int insertSelective(OaRoleMenu record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_role_menu
     *
     * @mbggenerated
     */
    List<OaRoleMenu> selectByExample(OaRoleMenuExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_role_menu
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") OaRoleMenu record, @Param("example") OaRoleMenuExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_oa_role_menu
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") OaRoleMenu record, @Param("example") OaRoleMenuExample example);
}