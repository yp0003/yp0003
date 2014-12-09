package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.Department;

public interface OaDepartmentService {
	/**
	 * 新增部门
	 * 
	 * @param department
	 * @throws Exception
	 */
	public void saveDepartment(Department department) throws Exception;

	/**
	 * 根据id删除部门,并删除所有其关联关系
	 * 
	 * @param menuId
	 * @throws Exception
	 */
	public void deleteDepartmentById(String id) throws Exception;

	/**
	 * 更新部门
	 * 
	 * @param department
	 * @throws Exception
	 */
	public void updateDepartment(Department department) throws Exception;

	/**
	 * 获取所有部门,按照层级关系排序
	 * 
	 * @return
	 */
	public List<Department> getAllDepartment();

	/**
	 * 根据ids获取部门
	 * 
	 * @param menuIds
	 * @return
	 */
	public List<Department> getDepartmentByIds(String[] ids);

	/**
	 * 根据menuId获取部门
	 * 
	 * @param menuId
	 * @return
	 */
	public Department getDepartmentById(String id);

}
