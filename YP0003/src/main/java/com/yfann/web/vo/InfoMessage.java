package com.yfann.web.vo;

import org.apache.commons.lang3.StringUtils;

public class InfoMessage {
	private String nickMessage;
	private String userNameMessage;
	private String birthdayMessage;
	private String sexMessage;
	private String idcardNumberMessage;
	private String educationMessage;
	private String foreignCountrieMessage;
	private String graduateSchoolMessage;
	private String phoneNumberMessage;
	private String countrieMessage;
	private String provinceAndCityMessage;
	private String addressMessage;
	private String zipCodeMessage;
	private String emailMessage;
	private String qqMessage;

	public String getNickMessage() {
		return nickMessage;
	}

	public void setNickMessage(String nickMessage) {
		this.nickMessage = nickMessage;
	}

	public String getUserNameMessage() {
		return userNameMessage;
	}

	public void setUserNameMessage(String userNameMessage) {
		this.userNameMessage = userNameMessage;
	}

	public String getBirthdayMessage() {
		return birthdayMessage;
	}

	public void setBirthdayMessage(String birthdayMessage) {
		this.birthdayMessage = birthdayMessage;
	}

	public String getSexMessage() {
		return sexMessage;
	}

	public void setSexMessage(String sexMessage) {
		this.sexMessage = sexMessage;
	}

	public String getIdcardNumberMessage() {
		return idcardNumberMessage;
	}

	public void setIdcardNumberMessage(String idcardNumberMessage) {
		this.idcardNumberMessage = idcardNumberMessage;
	}

	public String getEducationMessage() {
		return educationMessage;
	}

	public void setEducationMessage(String educationMessage) {
		this.educationMessage = educationMessage;
	}

	public String getForeignCountrieMessage() {
		return foreignCountrieMessage;
	}

	public void setForeignCountrieMessage(String foreignCountrieMessage) {
		this.foreignCountrieMessage = foreignCountrieMessage;
	}

	public String getGraduateSchoolMessage() {
		return graduateSchoolMessage;
	}

	public void setGraduateSchoolMessage(String graduateSchoolMessage) {
		this.graduateSchoolMessage = graduateSchoolMessage;
	}

	public String getPhoneNumberMessage() {
		return phoneNumberMessage;
	}

	public void setPhoneNumberMessage(String phoneNumberMessage) {
		this.phoneNumberMessage = phoneNumberMessage;
	}

	public String getCountrieMessage() {
		return countrieMessage;
	}

	public void setCountrieMessage(String countrieMessage) {
		this.countrieMessage = countrieMessage;
	}

	public String getProvinceAndCityMessage() {
		return provinceAndCityMessage;
	}

	public void setProvinceAndCityMessage(String provinceAndCityMessage) {
		this.provinceAndCityMessage = provinceAndCityMessage;
	}

	public String getAddressMessage() {
		return addressMessage;
	}

	public void setAddressMessage(String addressMessage) {
		this.addressMessage = addressMessage;
	}

	public String getZipCodeMessage() {
		return zipCodeMessage;
	}

	public void setZipCodeMessage(String zipCodeMessage) {
		this.zipCodeMessage = zipCodeMessage;
	}

	public String getEmailMessage() {
		return emailMessage;
	}

	public void setEmailMessage(String emailMessage) {
		this.emailMessage = emailMessage;
	}

	public String getQqMessage() {
		return qqMessage;
	}

	public void setQqMessage(String qqMessage) {
		this.qqMessage = qqMessage;
	}

	/**
	 * 如果有提示信息返回true;
	 * @return
	 */
	public boolean isNotEmpty() {
		if (StringUtils.isNotBlank(nickMessage)
				|| StringUtils.isNotBlank(userNameMessage)
				|| StringUtils.isNotBlank(birthdayMessage)
				|| StringUtils.isNotBlank(sexMessage)
				|| StringUtils.isNotBlank(idcardNumberMessage)
				|| StringUtils.isNotBlank(educationMessage)
				|| StringUtils.isNotBlank(foreignCountrieMessage)
				|| StringUtils.isNotBlank(graduateSchoolMessage)
				|| StringUtils.isNotBlank(phoneNumberMessage)
				|| StringUtils.isNotBlank(countrieMessage)
				|| StringUtils.isNotBlank(provinceAndCityMessage)
				|| StringUtils.isNotBlank(addressMessage)
				|| StringUtils.isNotBlank(zipCodeMessage)
				|| StringUtils.isNotBlank(emailMessage)
				|| StringUtils.isNotBlank(qqMessage)) {
			return true;
		}
		return false;
	}

}
