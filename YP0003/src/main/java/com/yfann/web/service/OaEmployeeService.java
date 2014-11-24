package com.yfann.web.service;

import com.yfann.web.pojo.OaEmployee;

public interface OaEmployeeService {
	/**
	 * 存储员工
	 * @param employee
	 * @throws Exception
	 */
	public void saveOaEmployee(OaEmployee oaEmployee) throws Exception;
	
	/**
	 * 更新员工
	 * @param employee
	 * @throws Exception
	 */
	public void updateOaEmployee(OaEmployee oaEmployee) throws Exception;
	
	/**
	 * 通过员工编号获取员工
	 * @param employee
	 * @return
	 */
	public OaEmployee validateOaEmployee(String employeeId);
	
}
