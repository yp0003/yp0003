package com.yfann.web.pojo;

import java.util.Date;
import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties({"oaRoleList"})
public class OaEmployee {
	/** 用户所关联的角色 */
	private List<OaRole> oaRoleList;
	
    public List<OaRole> getOaRoleList() {
		return oaRoleList;
	}

	public void setOaRoleList(List<OaRole> oaRoleList) {
		this.oaRoleList = oaRoleList;
	}
	/*注册时重复密码**/
	private String repassword;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.ID
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.EMPLOYEE_ID
     *
     * @mbggenerated
     */
    private String employeeId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.NICK
     *
     * @mbggenerated
     */
    private String nick;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.EMPLOYEE_NAME
     *
     * @mbggenerated
     */
    private String employeeName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.DEPART_ID
     *
     * @mbggenerated
     */
    private String departId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.NOW_PASSWORD
     *
     * @mbggenerated
     */
    private String nowPassword;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.SELL_CODE
     *
     * @mbggenerated
     */
    private String sellCode;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.OLD_PASSWORD
     *
     * @mbggenerated
     */
    private String oldPassword;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.THAN_OLD_PASSWORD
     *
     * @mbggenerated
     */
    private String thanOldPassword;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.UPDATE_PASSWORD_DATE
     *
     * @mbggenerated
     */
    private Date updatePasswordDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.BIRTHDAY
     *
     * @mbggenerated
     */
    private Date birthday;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.SEX
     *
     * @mbggenerated
     */
    private String sex;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.IDCARD_NUMBER
     *
     * @mbggenerated
     */
    private String idcardNumber;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.EDUCATION
     *
     * @mbggenerated
     */
    private String education;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.FOREIGN_COUNTRIE
     *
     * @mbggenerated
     */
    private String foreignCountrie;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.GRADUATE_SCHOOL
     *
     * @mbggenerated
     */
    private String graduateSchool;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.PHONE_NUMBER
     *
     * @mbggenerated
     */
    private String phoneNumber;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.IP
     *
     * @mbggenerated
     */
    private String ip;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.COUNTRIE
     *
     * @mbggenerated
     */
    private String countrie;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.PROVINCE_AND_CITY
     *
     * @mbggenerated
     */
    private String provinceAndCity;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.ADDRESS
     *
     * @mbggenerated
     */
    private String address;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.ZIP_CODE
     *
     * @mbggenerated
     */
    private String zipCode;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.EMAIL
     *
     * @mbggenerated
     */
    private String email;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.QQ
     *
     * @mbggenerated
     */
    private String qq;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.STATUS
     *
     * @mbggenerated
     */
    private String status;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.PAGE_COUNT_SIZE
     *
     * @mbggenerated
     */
    private Boolean pageCountSize;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.GROUP_PAGE_SIZE
     *
     * @mbggenerated
     */
    private String groupPageSize;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.SHOW_STYLE
     *
     * @mbggenerated
     */
    private String showStyle;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.LAST_LOGIN_TIME
     *
     * @mbggenerated
     */
    private Date lastLoginTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.LOGIN_COUNT
     *
     * @mbggenerated
     */
    private Integer loginCount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.SELECTED_FLAG
     *
     * @mbggenerated
     */
    private String selectedFlag;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.REMARK
     *
     * @mbggenerated
     */
    private String remark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.LOGIN_DATE
     *
     * @mbggenerated
     */
    private Date loginDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_oa_employee.HEAD_IMG
     *
     * @mbggenerated
     */
    private byte[] headImg;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.ID
     *
     * @return the value of t_oa_employee.ID
     *
     * @mbggenerated
     */
    

	private String position;
	
	private String personalDesc;
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.ID
     *
     * @param id the value for t_oa_employee.ID
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.EMPLOYEE_ID
     *
     * @return the value of t_oa_employee.EMPLOYEE_ID
     *
     * @mbggenerated
     */
    public String getEmployeeId() {
        return employeeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.EMPLOYEE_ID
     *
     * @param employeeId the value for t_oa_employee.EMPLOYEE_ID
     *
     * @mbggenerated
     */
    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId == null ? null : employeeId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.NICK
     *
     * @return the value of t_oa_employee.NICK
     *
     * @mbggenerated
     */
    public String getNick() {
        return nick;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.NICK
     *
     * @param nick the value for t_oa_employee.NICK
     *
     * @mbggenerated
     */
    public void setNick(String nick) {
        this.nick = nick == null ? null : nick.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.EMPLOYEE_NAME
     *
     * @return the value of t_oa_employee.EMPLOYEE_NAME
     *
     * @mbggenerated
     */
    public String getEmployeeName() {
        return employeeName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.EMPLOYEE_NAME
     *
     * @param employeeName the value for t_oa_employee.EMPLOYEE_NAME
     *
     * @mbggenerated
     */
    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName == null ? null : employeeName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.DEPART_ID
     *
     * @return the value of t_oa_employee.DEPART_ID
     *
     * @mbggenerated
     */
    public String getDepartId() {
        return departId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.DEPART_ID
     *
     * @param departId the value for t_oa_employee.DEPART_ID
     *
     * @mbggenerated
     */
    public void setDepartId(String departId) {
        this.departId = departId == null ? null : departId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.NOW_PASSWORD
     *
     * @return the value of t_oa_employee.NOW_PASSWORD
     *
     * @mbggenerated
     */
    public String getNowPassword() {
        return nowPassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.NOW_PASSWORD
     *
     * @param nowPassword the value for t_oa_employee.NOW_PASSWORD
     *
     * @mbggenerated
     */
    public void setNowPassword(String nowPassword) {
        this.nowPassword = nowPassword == null ? null : nowPassword.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.SELL_CODE
     *
     * @return the value of t_oa_employee.SELL_CODE
     *
     * @mbggenerated
     */
    public String getSellCode() {
        return sellCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.SELL_CODE
     *
     * @param sellCode the value for t_oa_employee.SELL_CODE
     *
     * @mbggenerated
     */
    public void setSellCode(String sellCode) {
        this.sellCode = sellCode == null ? null : sellCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.OLD_PASSWORD
     *
     * @return the value of t_oa_employee.OLD_PASSWORD
     *
     * @mbggenerated
     */
    public String getOldPassword() {
        return oldPassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.OLD_PASSWORD
     *
     * @param oldPassword the value for t_oa_employee.OLD_PASSWORD
     *
     * @mbggenerated
     */
    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword == null ? null : oldPassword.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.THAN_OLD_PASSWORD
     *
     * @return the value of t_oa_employee.THAN_OLD_PASSWORD
     *
     * @mbggenerated
     */
    public String getThanOldPassword() {
        return thanOldPassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.THAN_OLD_PASSWORD
     *
     * @param thanOldPassword the value for t_oa_employee.THAN_OLD_PASSWORD
     *
     * @mbggenerated
     */
    public void setThanOldPassword(String thanOldPassword) {
        this.thanOldPassword = thanOldPassword == null ? null : thanOldPassword.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.UPDATE_PASSWORD_DATE
     *
     * @return the value of t_oa_employee.UPDATE_PASSWORD_DATE
     *
     * @mbggenerated
     */
    public Date getUpdatePasswordDate() {
        return updatePasswordDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.UPDATE_PASSWORD_DATE
     *
     * @param updatePasswordDate the value for t_oa_employee.UPDATE_PASSWORD_DATE
     *
     * @mbggenerated
     */
    public void setUpdatePasswordDate(Date updatePasswordDate) {
        this.updatePasswordDate = updatePasswordDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.BIRTHDAY
     *
     * @return the value of t_oa_employee.BIRTHDAY
     *
     * @mbggenerated
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.BIRTHDAY
     *
     * @param birthday the value for t_oa_employee.BIRTHDAY
     *
     * @mbggenerated
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.SEX
     *
     * @return the value of t_oa_employee.SEX
     *
     * @mbggenerated
     */
    public String getSex() {
        return sex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.SEX
     *
     * @param sex the value for t_oa_employee.SEX
     *
     * @mbggenerated
     */
    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.IDCARD_NUMBER
     *
     * @return the value of t_oa_employee.IDCARD_NUMBER
     *
     * @mbggenerated
     */
    public String getIdcardNumber() {
        return idcardNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.IDCARD_NUMBER
     *
     * @param idcardNumber the value for t_oa_employee.IDCARD_NUMBER
     *
     * @mbggenerated
     */
    public void setIdcardNumber(String idcardNumber) {
        this.idcardNumber = idcardNumber == null ? null : idcardNumber.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.EDUCATION
     *
     * @return the value of t_oa_employee.EDUCATION
     *
     * @mbggenerated
     */
    public String getEducation() {
        return education;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.EDUCATION
     *
     * @param education the value for t_oa_employee.EDUCATION
     *
     * @mbggenerated
     */
    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.FOREIGN_COUNTRIE
     *
     * @return the value of t_oa_employee.FOREIGN_COUNTRIE
     *
     * @mbggenerated
     */
    public String getForeignCountrie() {
        return foreignCountrie;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.FOREIGN_COUNTRIE
     *
     * @param foreignCountrie the value for t_oa_employee.FOREIGN_COUNTRIE
     *
     * @mbggenerated
     */
    public void setForeignCountrie(String foreignCountrie) {
        this.foreignCountrie = foreignCountrie == null ? null : foreignCountrie.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.GRADUATE_SCHOOL
     *
     * @return the value of t_oa_employee.GRADUATE_SCHOOL
     *
     * @mbggenerated
     */
    public String getGraduateSchool() {
        return graduateSchool;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.GRADUATE_SCHOOL
     *
     * @param graduateSchool the value for t_oa_employee.GRADUATE_SCHOOL
     *
     * @mbggenerated
     */
    public void setGraduateSchool(String graduateSchool) {
        this.graduateSchool = graduateSchool == null ? null : graduateSchool.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.PHONE_NUMBER
     *
     * @return the value of t_oa_employee.PHONE_NUMBER
     *
     * @mbggenerated
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.PHONE_NUMBER
     *
     * @param phoneNumber the value for t_oa_employee.PHONE_NUMBER
     *
     * @mbggenerated
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.IP
     *
     * @return the value of t_oa_employee.IP
     *
     * @mbggenerated
     */
    public String getIp() {
        return ip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.IP
     *
     * @param ip the value for t_oa_employee.IP
     *
     * @mbggenerated
     */
    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.COUNTRIE
     *
     * @return the value of t_oa_employee.COUNTRIE
     *
     * @mbggenerated
     */
    public String getCountrie() {
        return countrie;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.COUNTRIE
     *
     * @param countrie the value for t_oa_employee.COUNTRIE
     *
     * @mbggenerated
     */
    public void setCountrie(String countrie) {
        this.countrie = countrie == null ? null : countrie.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.PROVINCE_AND_CITY
     *
     * @return the value of t_oa_employee.PROVINCE_AND_CITY
     *
     * @mbggenerated
     */
    public String getProvinceAndCity() {
        return provinceAndCity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.PROVINCE_AND_CITY
     *
     * @param provinceAndCity the value for t_oa_employee.PROVINCE_AND_CITY
     *
     * @mbggenerated
     */
    public void setProvinceAndCity(String provinceAndCity) {
        this.provinceAndCity = provinceAndCity == null ? null : provinceAndCity.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.ADDRESS
     *
     * @return the value of t_oa_employee.ADDRESS
     *
     * @mbggenerated
     */
    public String getAddress() {
        return address;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.ADDRESS
     *
     * @param address the value for t_oa_employee.ADDRESS
     *
     * @mbggenerated
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.ZIP_CODE
     *
     * @return the value of t_oa_employee.ZIP_CODE
     *
     * @mbggenerated
     */
    public String getZipCode() {
        return zipCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.ZIP_CODE
     *
     * @param zipCode the value for t_oa_employee.ZIP_CODE
     *
     * @mbggenerated
     */
    public void setZipCode(String zipCode) {
        this.zipCode = zipCode == null ? null : zipCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.EMAIL
     *
     * @return the value of t_oa_employee.EMAIL
     *
     * @mbggenerated
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.EMAIL
     *
     * @param email the value for t_oa_employee.EMAIL
     *
     * @mbggenerated
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.QQ
     *
     * @return the value of t_oa_employee.QQ
     *
     * @mbggenerated
     */
    public String getQq() {
        return qq;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.QQ
     *
     * @param qq the value for t_oa_employee.QQ
     *
     * @mbggenerated
     */
    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.STATUS
     *
     * @return the value of t_oa_employee.STATUS
     *
     * @mbggenerated
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.STATUS
     *
     * @param status the value for t_oa_employee.STATUS
     *
     * @mbggenerated
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.PAGE_COUNT_SIZE
     *
     * @return the value of t_oa_employee.PAGE_COUNT_SIZE
     *
     * @mbggenerated
     */
    public Boolean getPageCountSize() {
        return pageCountSize;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.PAGE_COUNT_SIZE
     *
     * @param pageCountSize the value for t_oa_employee.PAGE_COUNT_SIZE
     *
     * @mbggenerated
     */
    public void setPageCountSize(Boolean pageCountSize) {
        this.pageCountSize = pageCountSize;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.GROUP_PAGE_SIZE
     *
     * @return the value of t_oa_employee.GROUP_PAGE_SIZE
     *
     * @mbggenerated
     */
    public String getGroupPageSize() {
        return groupPageSize;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.GROUP_PAGE_SIZE
     *
     * @param groupPageSize the value for t_oa_employee.GROUP_PAGE_SIZE
     *
     * @mbggenerated
     */
    public void setGroupPageSize(String groupPageSize) {
        this.groupPageSize = groupPageSize == null ? null : groupPageSize.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.SHOW_STYLE
     *
     * @return the value of t_oa_employee.SHOW_STYLE
     *
     * @mbggenerated
     */
    public String getShowStyle() {
        return showStyle;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.SHOW_STYLE
     *
     * @param showStyle the value for t_oa_employee.SHOW_STYLE
     *
     * @mbggenerated
     */
    public void setShowStyle(String showStyle) {
        this.showStyle = showStyle == null ? null : showStyle.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.LAST_LOGIN_TIME
     *
     * @return the value of t_oa_employee.LAST_LOGIN_TIME
     *
     * @mbggenerated
     */
    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.LAST_LOGIN_TIME
     *
     * @param lastLoginTime the value for t_oa_employee.LAST_LOGIN_TIME
     *
     * @mbggenerated
     */
    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.LOGIN_COUNT
     *
     * @return the value of t_oa_employee.LOGIN_COUNT
     *
     * @mbggenerated
     */
    public Integer getLoginCount() {
        return loginCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.LOGIN_COUNT
     *
     * @param loginCount the value for t_oa_employee.LOGIN_COUNT
     *
     * @mbggenerated
     */
    public void setLoginCount(Integer loginCount) {
        this.loginCount = loginCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.SELECTED_FLAG
     *
     * @return the value of t_oa_employee.SELECTED_FLAG
     *
     * @mbggenerated
     */
    public String getSelectedFlag() {
        return selectedFlag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.SELECTED_FLAG
     *
     * @param selectedFlag the value for t_oa_employee.SELECTED_FLAG
     *
     * @mbggenerated
     */
    public void setSelectedFlag(String selectedFlag) {
        this.selectedFlag = selectedFlag == null ? null : selectedFlag.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.REMARK
     *
     * @return the value of t_oa_employee.REMARK
     *
     * @mbggenerated
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.REMARK
     *
     * @param remark the value for t_oa_employee.REMARK
     *
     * @mbggenerated
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.LOGIN_DATE
     *
     * @return the value of t_oa_employee.LOGIN_DATE
     *
     * @mbggenerated
     */
    public Date getLoginDate() {
        return loginDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.LOGIN_DATE
     *
     * @param loginDate the value for t_oa_employee.LOGIN_DATE
     *
     * @mbggenerated
     */
    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_oa_employee.HEAD_IMG
     *
     * @return the value of t_oa_employee.HEAD_IMG
     *
     * @mbggenerated
     */
    public byte[] getHeadImg() {
        return headImg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_oa_employee.HEAD_IMG
     *
     * @param headImg the value for t_oa_employee.HEAD_IMG
     *
     * @mbggenerated
     */
    public void setHeadImg(byte[] headImg) {
        this.headImg = headImg;
    }

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getPersonalDesc() {
		return personalDesc;
	}

	public void setPersonalDesc(String personalDesc) {
		this.personalDesc = personalDesc;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
    
    
}