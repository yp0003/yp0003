package com.yfann.web.vo;

import org.apache.commons.lang3.StringUtils;

public class RegisterMessage {
	private String userIdMessage;
	private String passwordMessage;
	private String emailMessage;
	private String valiCodeMessage;

	public String getUserIdMessage() {
		return userIdMessage;
	}

	public void setUserIdMessage(String userIdMessage) {
		this.userIdMessage = userIdMessage;
	}

	public String getPasswordMessage() {
		return passwordMessage;
	}

	public void setPasswordMessage(String passwordMessage) {
		this.passwordMessage = passwordMessage;
	}

	public String getEmailMessage() {
		return emailMessage;
	}

	public void setEmailMessage(String emailMessage) {
		this.emailMessage = emailMessage;
	}

	public String getValiCodeMessage() {
		return valiCodeMessage;
	}

	public void setValiCodeMessage(String valiCodeMessage) {
		this.valiCodeMessage = valiCodeMessage;
	}

	/**
	 * 如果无提示信息返回true;
	 * @return
	 */
	public boolean isNotEmpty() {
		if (StringUtils.isNotBlank(userIdMessage)
				&& StringUtils.isNotBlank(passwordMessage)
				&& StringUtils.isNotBlank(emailMessage)
				&& StringUtils.isNotBlank(valiCodeMessage)) {
			return true;
		}
		return false;
	}

}
