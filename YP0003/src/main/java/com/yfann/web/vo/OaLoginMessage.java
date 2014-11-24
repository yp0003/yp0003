package com.yfann.web.vo;

import org.apache.commons.lang3.StringUtils;

public class OaLoginMessage {
	private String employeeIdMessage;
	private String passwordMessage;
	private String valiCodeMessage;

	public String getValiCodeMessage() {
		return valiCodeMessage;
	}

	public void setValiCodeMessage(String valiCodeMessage) {
		this.valiCodeMessage = valiCodeMessage;
	}

	public String getEmployeeIdMessage() {
		return employeeIdMessage;
	}

	public void setEmployeeIdMessage(String employeeIdMessage) {
		this.employeeIdMessage = employeeIdMessage;
	}

	public String getPasswordMessage() {
		return passwordMessage;
	}

	public void setPasswordMessage(String passwordMessage) {
		this.passwordMessage = passwordMessage;
	}

	/**
	 * 如果有提示信息返回true;
	 * 
	 * @return
	 */
	public boolean isNotEmpty() {
		if (StringUtils.isNotBlank(employeeIdMessage)
				|| StringUtils.isNotBlank(passwordMessage)
				|| StringUtils.isNotBlank(valiCodeMessage)) {
			return true;
		}
		return false;
	}

}
