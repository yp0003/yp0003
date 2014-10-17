package com.yfann.web.vo;

import org.apache.commons.lang3.StringUtils;

public class RegisterMessage {
	private String userIdMessage;
	private String oldPasswordMessage;
	private String passwordMessage;
	private String emailMessage;
	private String valiCodeMessage;

	public String getOldPasswordMessage() {
		return oldPasswordMessage;
	}

	public void setOldPasswordMessage(String oldPasswordMessage) {
		this.oldPasswordMessage = oldPasswordMessage;
	}

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
	 * 如果有提示信息返回true;
	 * 
	 * @return
	 */
	public boolean isNotEmpty() {
		if (StringUtils.isNotBlank(userIdMessage)
				|| StringUtils.isNotBlank(oldPasswordMessage)
				|| StringUtils.isNotBlank(passwordMessage)
				|| StringUtils.isNotBlank(emailMessage)
				|| StringUtils.isNotBlank(valiCodeMessage)) {
			return true;
		}
		return false;
	}

}
