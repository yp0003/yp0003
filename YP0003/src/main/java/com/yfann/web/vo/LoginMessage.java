package com.yfann.web.vo;

import org.apache.commons.lang3.StringUtils;

public class LoginMessage {
	private String userIdMessage;
	private String passwordMessage;

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



	/**
	 * 如果有提示信息返回true;
	 * @return
	 */
	public boolean isNotEmpty() {
		if (StringUtils.isNotBlank(userIdMessage)
				|| StringUtils.isNotBlank(passwordMessage)) {
			return true;
		}
		return false;
	}

}
