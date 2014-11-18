package com.yfann.web.dao;

import com.yfann.web.pojo.User;
import com.yfann.web.pojo.UserExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    /**
     * 根据ID查询用户
     * @param userId
     * @return
     */
	User selectUserByUserId(String userId);

    /**
     * 根据条件查询用户数量
     * @param parames
     * @return
     */
    User selectLoginUserByParames(Map<String,Object> parames);

    /****************************************************************************************************************************************************************************************************/
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int countByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int deleteByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int insertSelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    List<User> selectByExampleWithBLOBs(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    List<User> selectByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    User selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int updateByExampleWithBLOBs(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int updateByPrimaryKeyWithBLOBs(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_user
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(User record);
}