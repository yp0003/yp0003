package com.yfann.web.action.oa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.Department;
import com.yfann.web.service.OaDepartmentService;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaDepartmentAction extends CommonAction {
	private static final long serialVersionUID = -344595803339516326L;

	/** 部门列表 */
	public List<Department> departmentList;
	/** 部门 */
	public Department department;

	@Autowired
	private OaDepartmentService oaDepartmentService;

	public String toList() {
		departmentList = oaDepartmentService.getAllDepartment();
		return "tolist";
	}

	public String toAdd() {
		departmentList = oaDepartmentService.getAllDepartment();
		return "add";
	}

	public String add() throws Exception {
		int level = oaDepartmentService.getDepartmentById(department.getPdepartId()).getLevel() + 1;
		department.setLevel(level);
		department.setId(OaUUIDCreate.getUUID());
		oaDepartmentService.saveDepartment(department);
		return toList();
	}

	public String toUpdate() {
		departmentList = oaDepartmentService.getAllDepartment();
		department = oaDepartmentService.getDepartmentById(request.getParameter("id"));
		ActionContext.getContext().getValueStack().push(department);
		return "update";
	}

	public String update() throws Exception {
		int level = oaDepartmentService.getDepartmentById(department.getPdepartId()).getLevel() + 1;
		department.setLevel(level);
		oaDepartmentService.updateDepartment(department);
		return toList();
	}

	public String del() throws Exception {
		oaDepartmentService.deleteDepartmentById(request.getParameter("id"));
		return toList();
	}

	public List<Department> getDepartmentList() {
		return departmentList;
	}

	public void setDepartmentList(List<Department> departmentList) {
		this.departmentList = departmentList;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

}
