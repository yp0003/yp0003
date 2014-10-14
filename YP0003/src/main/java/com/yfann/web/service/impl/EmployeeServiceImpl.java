package com.yfann.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.EmployeeMapper;
import com.yfann.web.pojo.Employee;
import com.yfann.web.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;

	@Override
	public void saveEmployee(Employee employee) throws Exception {
		employeeMapper.insertSelective(employee);
	}
}
