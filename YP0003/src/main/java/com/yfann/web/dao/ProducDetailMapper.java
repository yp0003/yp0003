package com.yfann.web.dao;

import com.yfann.web.pojo.ProducDetail;
import com.yfann.web.pojo.ProducDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProducDetailMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int countByExample(ProducDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int deleteByExample(ProducDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int insert(ProducDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int insertSelective(ProducDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    List<ProducDetail> selectByExample(ProducDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    ProducDetail selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ProducDetail record, @Param("example") ProducDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ProducDetail record, @Param("example") ProducDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ProducDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_produc_detail
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ProducDetail record);
}