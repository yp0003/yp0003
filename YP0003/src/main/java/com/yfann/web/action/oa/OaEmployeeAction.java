package com.yfann.web.action.oa;

import java.io.ByteArrayInputStream;

import java.io.File;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.pojo.Department;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaRole;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaDepartmentService;
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
	@Autowired
	private OaDepartmentService oaDepartmentService;

	/** 用户列表 */
	private List<OaEmployee> empList;
	/** 客户列表 */
	private List<User> userList;
	/** 角色列表 */
	private List<OaRole> roleList;
	/** 部门列表 */
	private List<Department> departmentList;
	/** 分页组件 */
	private PageInfo pageInfo;

	private OaRegisterMessage oaRegisterMessage = new OaRegisterMessage();
	private OaEmployee oaEmployee;
	private User user;
	private String birthday;
	private String[] rids;
	private String rid;

	/** Struts2下载(内存数据下载) */
	public ByteArrayInputStream byteArrayInputStream;

	private File fileupload; // 和JSP中input标记name同名
	private String fileuploadFileName;

	// 上传图片
	private File scan;
	// 上传图片文件类型
	private String scanContentType;
	// 上传图片文件名称
	private String scanFileName;

	/** 头像 */
	private ByteArrayInputStream inputStreamCre;

	private String empId;

	private OaEmployee emp;

	// 用户列表显示
	public String toEmpList() {
		roleList = oaRoleService.getAllOaRole();
		pageInfo.setCount(oaEmployeeService.getAllEmpCount());
		empList = oaEmployeeService.getAllEmp(pageInfo.getOffset(), pageInfo.getPageSize());
		return "toEmpList";
	}

	// 客户列表查找显示
	public String selectEmp() {
		roleList = oaRoleService.getAllOaRole();
		pageInfo.setCount(oaEmployeeService.getEmpCountByField(oaEmployee.getEmployeeId(),
				oaEmployee.getEmployeeName(), rid));
		empList = oaEmployeeService.getEmpByField(oaEmployee.getEmployeeId(), oaEmployee.getEmployeeName(),
				rid, pageInfo.getOffset(), pageInfo.getPageSize());
		return "selectEmp";
	}

	// 转到用户修改页面
	public String toUpdate() {
		oaEmployee = oaEmployeeService.getEmpById(request.getParameter("id"));
		departmentList = oaDepartmentService.getAllDepartment();
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
		pageInfo.setCount(oaEmployeeService.getAllUserCount());
		userList = oaEmployeeService.getAllUser(pageInfo.getOffset(), pageInfo.getPageSize());
		return "toUserList";
	}

	// 客户列表查找显示
	public String selectUser() {
		pageInfo.setCount(oaEmployeeService.getUserCountByField(user.getUserId(), user.getUserName(), rid));
		userList = oaEmployeeService.getUserByField(user.getUserId(), user.getUserName(), rid,
				pageInfo.getOffset(), pageInfo.getPageSize());
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
		emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
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
	public String toUpdateImage() {
		oaEmployee = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		return "updateImage";
	}

	/** 上传图片 */
	public String updateImage() {
		if (ifScanContentType()) {
			oaEmployeeService.updateHeadImg(oaEmployee, scan);
		}
		return toUpdateImage();
	}

	/** 头像展示 */
	public String headImage() {
		if (null != empId) {
			OaEmployee emp = oaEmployeeService.getEmpById(empId);
			if (null != emp) {
				inputStreamCre = new ByteArrayInputStream(emp.getHeadImg());
			}

		}
		return "headImage";
	}

	// public void updateImage() {
	// oaEmployee = (OaEmployee)
	// session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
	// OaEmployee temp = new OaEmployee();
	// temp.setId(oaEmployee.getId());
	// PrintWriter out = null;
	// try {
	// out = response.getWriter();
	// // 检查上传的是否过大
	// if (fileupload.length()>(1024*1024)) {
	// out.print("<font color='red'>文件大小不能超过1M!</font>");
	// return;
	// }
	// String extName =
	// fileuploadFileName.substring(fileuploadFileName.lastIndexOf("."));
	// // 检查上传的是否是图片
	// if (!checkIsImage(extName)) {
	// out.print("<font color='red'>请上传图片格式!</font>");
	// return;
	// }
	// FileInputStream fis = new FileInputStream(fileupload);
	// ByteArrayOutputStream bos = new ByteArrayOutputStream();
	// byte[] b = new byte[1024];
	// int n, m = 0;
	// while ((n = fis.read(b)) != -1) {
	// bos.write(b, 0, n);
	// }
	// temp.setHeadImg(bos.toByteArray());
	// fis.close();
	// bos.close();
	// // 检查上传的是否是图片
	// out.print("<font color='red'>" + fileuploadFileName + "上传成功!</font>");
	// oaEmployeeService.updateOaEmployee(temp);
	// oaEmployeeService.updateOaEmployee(temp);
	// } catch (Exception e) {
	// out.print("<font color='red'>上传失败,请联系管理员或稍候再试!</font>");
	// e.printStackTrace();
	// }
	// }

	/** 显示图片 */
	public String showImage() throws Exception {
		oaEmployee = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		OaEmployee temp = oaEmployeeService.getEmpById(oaEmployee.getId());
		byteArrayInputStream = new ByteArrayInputStream(temp.getHeadImg());
		return "showImage";
	}

	// 检查是否是图片格式
	public static boolean checkIsImage(String imgStr) {
		boolean flag = false;
		if (imgStr != null) {
			if (imgStr.equalsIgnoreCase(".gif") || imgStr.equalsIgnoreCase(".jpg")
					|| imgStr.equalsIgnoreCase(".jpeg") || imgStr.equalsIgnoreCase(".png")) {
				flag = true;
			}
		}
		return flag;

	}

	/**
	 * 判断上传图片的类型
	 * 
	 * @return
	 */
	private boolean ifScanContentType() {
		if (scan == null) {
			addActionMessage("请选择扫描件图片");
			return false;
		}
		if ("image/png".equals(scanContentType) || "image/gif".equals(scanContentType)
				|| "image/jpg".equals(scanContentType) || "image/jpeg".equals(scanContentType)
				|| "image/bmp".equals(scanContentType)) {
			return true;
		}
		addActionMessage("请不要上传非图片文件");
		return false;
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

	public List<Department> getDepartmentList() {
		return departmentList;
	}

	public void setDepartmentList(List<Department> departmentList) {
		this.departmentList = departmentList;
	}

	public File getScan() {
		return scan;
	}

	public void setScan(File scan) {
		this.scan = scan;
	}

	public String getScanContentType() {
		return scanContentType;
	}

	public void setScanContentType(String scanContentType) {
		this.scanContentType = scanContentType;
	}

	public String getScanFileName() {
		return scanFileName;
	}

	public void setScanFileName(String scanFileName) {
		this.scanFileName = scanFileName;
	}

	public ByteArrayInputStream getInputStreamCre() {
		return inputStreamCre;
	}

	public void setInputStreamCre(ByteArrayInputStream inputStreamCre) {
		this.inputStreamCre = inputStreamCre;
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public OaEmployee getEmp() {
		return emp;
	}

	public void setEmp(OaEmployee emp) {
		this.emp = emp;
	}

	public OaRegisterMessage getOaRegisterMessage() {
		return oaRegisterMessage;
	}

	public void setOaRegisterMessage(OaRegisterMessage oaRegisterMessage) {
		this.oaRegisterMessage = oaRegisterMessage;
	}

	public File getFileupload() {
		return fileupload;
	}

	public void setFileupload(File fileupload) {
		this.fileupload = fileupload;
	}

	public String getFileuploadFileName() {
		return fileuploadFileName;
	}

	public void setFileuploadFileName(String fileuploadFileName) {
		this.fileuploadFileName = fileuploadFileName;
	}

	public ByteArrayInputStream getByteArrayInputStream() {
		return byteArrayInputStream;
	}

	public void setByteArrayInputStream(ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}

}
