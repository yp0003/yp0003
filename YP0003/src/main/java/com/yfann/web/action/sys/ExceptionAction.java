package com.yfann.web.action.sys;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.yfann.web.pojo.User;

public class ExceptionAction extends CommonAction<User>{
	private Exception exception;
	final Logger logger = LoggerFactory.getLogger(ExceptionAction.class);
	@Override
	public String execute() {
		try {
			logger.error("********** 系统异常 **********",exception);
			logger.error(exception.getMessage());
		} catch (Exception e) {
			logger.error("输出错误日志异常！", e);
		}
		return ERROR;
	}
	
	public Exception getException() {
		return exception;
	}

	public void setException(Exception exception) {
		this.exception = exception;
	}

	private static final long serialVersionUID = -123616020297723800L;
}
