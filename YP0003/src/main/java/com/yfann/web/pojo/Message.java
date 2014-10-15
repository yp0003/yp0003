package com.yfann.web.pojo;

import java.util.Date;

public class Message {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_message.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_message.send_user_id
     *
     * @mbggenerated
     */
    private String sendUserId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_message.send_time
     *
     * @mbggenerated
     */
    private Date sendTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_message.send_content
     *
     * @mbggenerated
     */
    private String sendContent;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_message.mess_status
     *
     * @mbggenerated
     */
    private String messStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_message.receive_user_id
     *
     * @mbggenerated
     */
    private String receiveUserId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_sys_message.open_time
     *
     * @mbggenerated
     */
    private Date openTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_message.id
     *
     * @return the value of t_sys_message.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_message.id
     *
     * @param id the value for t_sys_message.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_message.send_user_id
     *
     * @return the value of t_sys_message.send_user_id
     *
     * @mbggenerated
     */
    public String getSendUserId() {
        return sendUserId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_message.send_user_id
     *
     * @param sendUserId the value for t_sys_message.send_user_id
     *
     * @mbggenerated
     */
    public void setSendUserId(String sendUserId) {
        this.sendUserId = sendUserId == null ? null : sendUserId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_message.send_time
     *
     * @return the value of t_sys_message.send_time
     *
     * @mbggenerated
     */
    public Date getSendTime() {
        return sendTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_message.send_time
     *
     * @param sendTime the value for t_sys_message.send_time
     *
     * @mbggenerated
     */
    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_message.send_content
     *
     * @return the value of t_sys_message.send_content
     *
     * @mbggenerated
     */
    public String getSendContent() {
        return sendContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_message.send_content
     *
     * @param sendContent the value for t_sys_message.send_content
     *
     * @mbggenerated
     */
    public void setSendContent(String sendContent) {
        this.sendContent = sendContent == null ? null : sendContent.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_message.mess_status
     *
     * @return the value of t_sys_message.mess_status
     *
     * @mbggenerated
     */
    public String getMessStatus() {
        return messStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_message.mess_status
     *
     * @param messStatus the value for t_sys_message.mess_status
     *
     * @mbggenerated
     */
    public void setMessStatus(String messStatus) {
        this.messStatus = messStatus == null ? null : messStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_message.receive_user_id
     *
     * @return the value of t_sys_message.receive_user_id
     *
     * @mbggenerated
     */
    public String getReceiveUserId() {
        return receiveUserId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_message.receive_user_id
     *
     * @param receiveUserId the value for t_sys_message.receive_user_id
     *
     * @mbggenerated
     */
    public void setReceiveUserId(String receiveUserId) {
        this.receiveUserId = receiveUserId == null ? null : receiveUserId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_sys_message.open_time
     *
     * @return the value of t_sys_message.open_time
     *
     * @mbggenerated
     */
    public Date getOpenTime() {
        return openTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_sys_message.open_time
     *
     * @param openTime the value for t_sys_message.open_time
     *
     * @mbggenerated
     */
    public void setOpenTime(Date openTime) {
        this.openTime = openTime;
    }
}