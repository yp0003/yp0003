package com.yfann.web.service;

import com.yfann.web.pojo.Employee;

public interface EmployeeService {
	/**
	 * 存储员工
	 * @param employee
	 * @throws Exception
	 */
	public void saveEmployee(Employee employee) throws Exception;
}
