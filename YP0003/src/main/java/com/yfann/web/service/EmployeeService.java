package com.yfann.web.service;

import com.yfann.web.pojo.Employee;

public interface EmployeeService {
	/**
	 * 存储员工
	 * @param employee
	 * @throws Exception
	 */
	public void saveEmployee(Employee employee) throws Exception;
	
	/**
	 * 更新员工
	 * @param employee
	 * @throws Exception
	 */
	public void updateEmployee(Employee employee) throws Exception;
	
	/**
	 * 通过员工编号获取员工
	 * @param employee
	 * @return
	 */
	public Employee validateEmployee(Employee employee);
	
}
