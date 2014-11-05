package com.yfann.web.vo;

import java.io.Serializable;
/**
 * 邮件内容
 * @author Simon
 *
 */
public class MailContext implements Serializable{
	private static final long serialVersionUID = -6833957917526672460L;
	/**文本内容*/
	private String textContext;

	public String getTextContext() {
		return textContext;
	}

	public void setTextContext(String textContext) {
		this.textContext = textContext;
	}
}
