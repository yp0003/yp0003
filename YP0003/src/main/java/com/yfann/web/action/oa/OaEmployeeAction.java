package com.yfann.web.action.oa;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaRole;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.service.OaRoleService;
import com.yfann.web.vo.OaRegisterMessage;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaEmployeeAction extends CommonAction {
	private static final long serialVersionUID = 4368413822678304252L;

	@Autowired
	private OaEmployeeService oaEmployeeService;
	@Autowired
	private OaRoleService oaRoleService;

	/** 用户列表 */
	public List<OaEmployee> empList;
	/** 客户列表 */
	public List<User> userList;
	/** 角色列表 */
	public List<OaRole> roleList;
	/** 分页组件 */
	private PageInfo pageInfo;

	private OaRegisterMessage oaRegisterMessage = new OaRegisterMessage();
	private OaEmployee oaEmployee;
	private User user;
	private String birthday;
	private String[] rids;
	private String rid;

	/*
	 * // 转到新增页面 public String toAdd() { return "add"; }
	 * 
	 * // 超级管理员新增用户 public String add() throws Exception { if (birthday != null
	 * && !"".equals(birthday)) { Date bir = (new
	 * SimpleDateFormat("yyyy-MM-dd")).parse(birthday);
	 * oaEmployee.setBirthday(bir); }
	 * 
	 * oaEmployeeService.saveOaEmployee(oaEmployee); return "action2action"; }
	 */

	// 用户列表显示
	public String toEmpList() {
		roleList = oaRoleService.getAllOaRole();
		empList = oaEmployeeService.getAllEmp(0, Integer.MAX_VALUE);
		return "toEmpList";
	}

	// 客户列表查找显示
	public String selectEmp() {
		roleList = oaRoleService.getAllOaRole();
		empList = oaEmployeeService.getEmpByField(oaEmployee.getEmployeeId(), oaEmployee.getEmployeeName(),
				rid, 0, Integer.MAX_VALUE);
		System.out.println(oaEmployeeService.getEmpByField(oaEmployee.getEmployeeId(),
				oaEmployee.getEmployeeName(), rid, 0, Integer.MAX_VALUE));
		return "selectEmp";
	}

	// 转到用户修改页面
	public String toUpdate() {
		oaEmployee = oaEmployeeService.getEmpById(request.getParameter("id"));

		if (oaEmployee.getBirthday() != null) {
			birthday = (new SimpleDateFormat("yyyy-MM-dd")).format(oaEmployee.getBirthday());
		}
		return "update";
	}

	// 超级管理员修改用户
	public String update() throws Exception {
		if (birthday != null && !"".equals(birthday)) {
			Date bir = (new SimpleDateFormat("yyyy-MM-dd")).parse(birthday);
			oaEmployee.setBirthday(bir);
		}

		oaEmployeeService.updateOaEmployee(oaEmployee);
		return "action2action";
	}

	// 转向分配用户角色页面
	public String toUpdatePE() {
		oaEmployee = oaEmployeeService.getEmpById(request.getParameter("id"));
		List<OaRole> roles = oaEmployee.getOaRoleList();
		this.rids = new String[roles.size()];
		int index = 0;
		for (OaRole r : roles) {
			rids[index] = r.getRoleId();
			index++;
		}
		this.roleList = oaRoleService.getAllOaRole();
		return "privilegeByEmp";
	}

	// 分配用户角色
	public String updatePrivilegeByEmp() {
		oaEmployeeService.updatePrivilege(oaEmployee.getId(), rids);
		return "action2action";
	}

	// 客户列表显示
	public String toUserList() {
		roleList = oaRoleService.getAllOaRole();
		userList = oaEmployeeService.getAllUser(0, Integer.MAX_VALUE);
		return "toUserList";
	}

	// 客户列表查找显示
	public String selectUser() {
		roleList = oaRoleService.getAllOaRole();
		userList = oaEmployeeService.getUserByField(user.getUserId(), user.getUserName(), rid, 0,
				Integer.MAX_VALUE);
		System.out.println(oaEmployeeService.getUserCountByField(user.getUserId(), user.getUserName(), rid,
				0, Integer.MAX_VALUE));
		return "selectUser";
	}

	// 转到客户修改页面
	public String toUserUpdate() {
		user = oaEmployeeService.getUserById(request.getParameter("id"));

		if (user.getBirthday() != null) {
			birthday = (new SimpleDateFormat("yyyy-MM-dd")).format(user.getBirthday());
		}
		return "updateUser";
	}

	// 超级管理员修改客户信息
	public String updateUser() throws Exception {
		if (birthday != null && !"".equals(birthday)) {
			Date bir = (new SimpleDateFormat("yyyy-MM-dd")).parse(birthday);
			user.setBirthday(bir);
		}
		oaEmployeeService.updateUser(user);
		return "action2actionUser";
	}

	// 转向分配客户角色页面
	public String toUpdatePU() {
		user = oaEmployeeService.getUserById(request.getParameter("id"));
		List<OaRole> roles = user.getOaRoleList();
		this.rids = new String[roles.size()];
		int index = 0;
		for (OaRole r : roles) {
			rids[index] = r.getRoleId();
			index++;
		}
		this.roleList = oaRoleService.getAllOaRole();
		return "privilegeByUser";
	}

	// 分配客户角色
	public String updatePrivilegeByUser() {
		oaEmployeeService.updatePrivilege(user.getId(), rids);
		return "action2actionUser";
	}

	// 转向个人信息修改
	public String toMyInfo() {
		oaEmployee = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (oaEmployee == null) {
			return "forwardLogin";
		}
		oaEmployee = oaEmployeeService.getEmpById(oaEmployee.getId());
		if (oaEmployee.getBirthday() != null) {
			birthday = (new SimpleDateFormat("yyyy-MM-dd")).format(oaEmployee.getBirthday());
		}
		return "myinfo";

	}

	// 修改用户自己的信息
	public String updateMyInfo() throws Exception {
		if (birthday != null && !"".equals(birthday)) {
			Date bir = (new SimpleDateFormat("yyyy-MM-dd")).parse(birthday);
			oaEmployee.setBirthday(bir);
		}
		oaEmployeeService.updateOaEmployee(oaEmployee);
		return toMyInfo();
	}

	// 转向修改密码页面
	public String updatePasswordUI() {
		oaEmployee = null;
		return "updatePasswordUI";
	}

	/** 修改密码 */
	public String updatePassword() throws Exception {
		// 验证当前密码
		if ("".equals(oaEmployee.getOldPassword())) {
			addActionError("当前密码不能为空！");
			// oaRegisterMessage.setPasswordMessage("当前密码不能为空！");
			return updatePasswordUI();
		}
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		if (!emp.getNowPassword().equals(oaEmployee.getOldPassword())) {
			addActionError("当前密码输入错误！");
			// oaRegisterMessage.setPasswordMessage("当前密码输入错误！");
			return updatePasswordUI();
		}
		String nowPD;
		// 验证新密码
		if (!(StringUtils.isNotBlank(oaEmployee.getNowPassword()))) {
			addActionError("密码为空!");
			// oaRegisterMessage.setPasswordMessage("密码为空!");
			return updatePasswordUI();
		} else {
			String[] passwords = oaEmployee.getNowPassword().split(",");
			nowPD = passwords[0];
			if (passwords.length != 2) {
				addActionError("密码非法!");
				// oaRegisterMessage.setPasswordMessage("密码非法!");
				return updatePasswordUI();
			} else if (passwords.length > 1) {
				if (passwords[0].trim().length() < 5 && passwords[0].trim().length() > 20) {
					addActionError("密码过长或过短!");
					// oaRegisterMessage.setPasswordMessage("密码过长或过短!");
					return updatePasswordUI();
				} else if (!passwords[0].trim().equals(passwords[1].trim())) {
					addActionError("两次密码不一致!");
					oaRegisterMessage.setPasswordMessage("两次密码不一致!");
					return updatePasswordUI();
				}
			}
		}

		if (emp.getOldPassword() != null && !"".equals(emp.getOldPassword())) {
			emp.setThanOldPassword(emp.getOldPassword());
		}
		emp.setOldPassword(oaEmployee.getOldPassword());
		emp.setNowPassword(nowPD);
		oaEmployeeService.updateOaEmployee(emp);
		return "logout";
	}
	
	/** 转向图片上传页面 */
	public String toUpdateImage(){
		return "updateImage";
	}
	
	/** 上传图片*/
	public void updateImage(){
		Enumeration att = request.getAttributeNames();
		while (att.hasMoreElements()) {
			String object = (String) att.nextElement();
			System.out.println("att:"+object);
		}
		
		Enumeration par = request.getParameterNames();
		while (par.hasMoreElements()) {
			String object = (String) par.nextElement();
			System.out.println(object+":"+request.getParameter(object));
		}
		System.out.println(1);
	}

	public OaEmployee getOaEmployee() {
		return oaEmployee;
	}

	public void setOaEmployee(OaEmployee oaEmployee) {
		this.oaEmployee = oaEmployee;
	}

	public List<OaEmployee> getEmpList() {
		return empList;
	}

	public void setEmpList(List<OaEmployee> empList) {
		this.empList = empList;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public List<OaRole> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<OaRole> roleList) {
		this.roleList = roleList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String[] getRids() {
		return rids;
	}

	public void setRids(String[] rids) {
		this.rids = rids;
	}

	private int total;
	private List<Object> rows;

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<Object> getRows() {
		return rows;
	}

	public void setRows(List<Object> rows) {
		this.rows = rows;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	// public String getData() {
	// try {
	// int page = Integer.parseInt(request.getParameter("page"));
	// int row = Integer.parseInt(request.getParameter("rows"));// 接受参数page和rows
	// System.out.println(page+":"+row);
	// } catch (NumberFormatException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// this.total = oaRoleService.getAllOaRole().size();
	// this.rows = new ArrayList<Object>();
	// List<OaEmployee> list = oaEmployeeService.getAllEmp(0, 2);//
	// 分页，将数据保存到list中
	//
	// for(OaEmployee emp : list){
	// Map<String, String> map = new HashMap<String, String>();
	// map.put("id", emp.getId());
	// map.put("empid",emp.getEmployeeId());
	// map.put("name", emp.getEmployeeName());
	// map.put("opet", "<a href='#'>"+emp.getEmployeeName()+"</a>");
	// this.rows.add(map); // 循环保存map到list对象this.rows中
	// }
	// // ActionContext.getContext().getValueStack().push(rows);
	// System.out.println(request.getParameter("page"));
	// System.out.println(request.getParameter("rows"));
	// return SUCCESS;
	// }

}
