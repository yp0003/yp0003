package com.yfann.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.EmployeeMapper;
import com.yfann.web.pojo.Employee;
import com.yfann.web.pojo.EmployeeExample;
import com.yfann.web.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;

	@Override
	public void saveEmployee(Employee employee) throws Exception {
		employeeMapper.insert(employee);
	}

	@Override
	public Employee validateEmployee(Employee employee) {
		EmployeeExample employeeExample = new EmployeeExample();
		employeeExample.or().andEmpIdEqualTo(employee.getEmpId());
		List<Employee> employeeList = employeeMapper.selectByExample(employeeExample);
		if (employeeList != null && employeeList.size() > 0) {
			return employeeList.get(0);
		} else {
			return null;
		}
	}

	@Override
	public void updateEmployee(Employee employee) throws Exception {
		employeeMapper.updateByPrimaryKeySelective(employee);
	}
}
