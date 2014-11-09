package com.yfann.web.dao;

import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.DicExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DicMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int countByExample(DicExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int deleteByExample(DicExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int insert(Dic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int insertSelective(Dic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    List<Dic> selectByExample(DicExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    Dic selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Dic record, @Param("example") DicExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Dic record, @Param("example") DicExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Dic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sys_dic
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Dic record);
}