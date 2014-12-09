package com.yfann.web.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.DepartmentMapper;
import com.yfann.web.pojo.Department;
import com.yfann.web.pojo.DepartmentExample;
import com.yfann.web.service.OaDepartmentService;

@Service
public class OaDepartmentServiceImpl implements OaDepartmentService {
	@Autowired
	private DepartmentMapper departmentMapper;

	@Override
	public void saveDepartment(Department department) throws Exception {
		if (department != null) {
			departmentMapper.insert(department);
		}
	}

	@Override
	public void deleteDepartmentById(String id) throws Exception {
		departmentMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updateDepartment(Department department) throws Exception {
		if (department != null) {
			departmentMapper.updateByPrimaryKeySelective(department);
		}
	}

	@Override
	public List<Department> getAllDepartment() {
		// 获取所有的部门
		DepartmentExample example = new DepartmentExample();
		example.setOrderByClause("level,depart_id asc");
		List<Department> list = departmentMapper.selectByExample(example);
		// 对部门按照层级关系进行排序
		List<Department> departments = new ArrayList<Department>();
		for (Department d : list) {
			// 如果是第0级，则放在第一个
			if (d.getLevel() == 0) {
				// departments.add(0, d);
			} else if (d.getLevel() == 1) {
				departments.add(d);
			} else {
				for (int i = 0; i < departments.size(); i++) {
					// 找到上级部门，并放在其上级部门的后面
					if (departments.get(i).getId().equals(d.getPdepartId())) {
						departments.add(departments.indexOf(departments.get(i)) + 1, d);
						continue;
					}
				}
			}
		}
		return departments;
	}

	@Override
	public List<Department> getDepartmentByIds(String[] ids) {
		DepartmentExample example = new DepartmentExample();
		example.or().andIdIn(Arrays.asList(ids));
		return departmentMapper.selectByExample(example);
	}

	@Override
	public Department getDepartmentById(String id) {
		return departmentMapper.selectByPrimaryKey(id);
	}

}
