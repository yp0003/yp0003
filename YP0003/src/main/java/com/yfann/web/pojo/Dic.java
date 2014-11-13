package com.yfann.web.pojo;

import java.io.Serializable;

public class Dic implements Serializable{
	private static final long serialVersionUID = -2448734212366191164L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_dic.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_dic.dic_type
     *
     * @mbggenerated
     */
    private String dicType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_dic.dic_en
     *
     * @mbggenerated
     */
    private String dicEn;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_dic.dic_cn
     *
     * @mbggenerated
     */
    private String dicCn;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_dic.dic_note
     *
     * @mbggenerated
     */
    private String dicNote;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_dic.dic_status
     *
     * @mbggenerated
     */
    private String dicStatus;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_dic.id
     *
     * @return the value of t_sys_dic.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_dic.id
     *
     * @param id the value for t_sys_dic.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_dic.dic_type
     *
     * @return the value of t_sys_dic.dic_type
     *
     * @mbggenerated
     */
    public String getDicType() {
        return dicType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_dic.dic_type
     *
     * @param dicType the value for t_sys_dic.dic_type
     *
     * @mbggenerated
     */
    public void setDicType(String dicType) {
        this.dicType = dicType == null ? null : dicType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_dic.dic_en
     *
     * @return the value of t_sys_dic.dic_en
     *
     * @mbggenerated
     */
    public String getDicEn() {
        return dicEn;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_dic.dic_en
     *
     * @param dicEn the value for t_sys_dic.dic_en
     *
     * @mbggenerated
     */
    public void setDicEn(String dicEn) {
        this.dicEn = dicEn == null ? null : dicEn.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_dic.dic_cn
     *
     * @return the value of t_sys_dic.dic_cn
     *
     * @mbggenerated
     */
    public String getDicCn() {
        return dicCn;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_dic.dic_cn
     *
     * @param dicCn the value for t_sys_dic.dic_cn
     *
     * @mbggenerated
     */
    public void setDicCn(String dicCn) {
        this.dicCn = dicCn == null ? null : dicCn.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_dic.dic_note
     *
     * @return the value of t_sys_dic.dic_note
     *
     * @mbggenerated
     */
    public String getDicNote() {
        return dicNote;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_dic.dic_note
     *
     * @param dicNote the value for t_sys_dic.dic_note
     *
     * @mbggenerated
     */
    public void setDicNote(String dicNote) {
        this.dicNote = dicNote == null ? null : dicNote.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_dic.dic_status
     *
     * @return the value of t_sys_dic.dic_status
     *
     * @mbggenerated
     */
    public String getDicStatus() {
        return dicStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_dic.dic_status
     *
     * @param dicStatus the value for t_sys_dic.dic_status
     *
     * @mbggenerated
     */
    public void setDicStatus(String dicStatus) {
        this.dicStatus = dicStatus == null ? null : dicStatus.trim();
    }
}