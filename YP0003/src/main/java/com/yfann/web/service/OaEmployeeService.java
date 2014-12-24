package com.yfann.web.service;

import java.io.File;
import java.util.List;

import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.User;
import com.yfann.web.vo.MailContext;

public interface OaEmployeeService {
	/**
	 * 更新用户头像
	 * 
	 * @param oaEmployee
	 */
	public void updateHeadImg(OaEmployee oaEmployee, File image);

	/**
	 * 存储员工
	 * 
	 * @param employee
	 * @throws Exception
	 */
	public void saveOaEmployee(OaEmployee oaEmployee) throws Exception;

	/**
	 * 更新员工
	 * 
	 * @param employee
	 * @throws Exception
	 */
	public void updateOaEmployee(OaEmployee oaEmployee) throws Exception;

	/**
	 * 更新客户
	 * 
	 * @param user
	 * @throws Exception
	 */
	public void updateUser(User user) throws Exception;

	/**
	 * 通过员工编号获取员工
	 * 
	 * @param employee
	 * @return
	 */
	public OaEmployee validateOaEmployee(String employeeId);

	/**
	 * 根据id获取员工
	 * 
	 * @param id
	 * @return
	 */
	public OaEmployee getEmpById(String id);

	/**
	 * 根据id获取客户
	 * 
	 * @param id
	 * @return
	 */
	public User getUserById(String id);

	/**
	 * 修改用户/客户与角色的关系
	 * 
	 * @param id
	 *            客户/用户ID
	 * @param roleIds
	 *            角色id
	 */
	public void updatePrivilege(String id, String[] roleIds);

	/**
	 * 通过employeeIds获取员工
	 * 
	 * @param employeeIds
	 * @return
	 */
	public List<OaEmployee> getEmpByIds(String[] employeeIds);

	/**
	 * 根据字段查询用户
	 * 
	 * @param empId
	 *            用户编号
	 * @param name
	 *            用户姓名
	 * @param RoleId
	 *            角色id
	 * @param off
	 *            从off开始查询
	 * @param lim
	 *            每次最多查询lim条
	 * @return
	 */
	public List<OaEmployee> getEmpByField(String empId, String name, String roleId, int off, int lim);

	/**
	 * 根据字段查询总数
	 * 
	 * @param empId
	 *            用户编号
	 * @param name
	 *            用户姓名
	 * @param RoleId
	 *            角色id
	 * @param off
	 *            从off开始查询
	 * @param lim
	 *            每次最多查询lim条
	 * @return
	 */
	public Integer getEmpCountByField(String empId, String name, String roleId);

	/**
	 * 根据字段查询客户
	 * 
	 * @param empId
	 *            客户编号
	 * @param name
	 *            客户姓名
	 * @param RoleId
	 *            角色id
	 * @param off
	 *            从off开始查询
	 * @param lim
	 *            每次最多查询lim条
	 * @return
	 */
	public List<User> getUserByField(String userId, String name, String roleId, int off, int lim);

	/**
	 * 根据字段查询客户的总数
	 * 
	 * @param empId
	 *            客户编号
	 * @param name
	 *            客户姓名
	 * @param RoleId
	 *            角色id
	 * @param off
	 *            从off开始查询
	 * @param lim
	 *            每次最多查询lim条
	 * @return
	 */
	public Integer getUserCountByField(String userId, String name, String roleId);

	/**
	 * 分页查询员工
	 * 
	 * @param offset
	 * @param limit
	 * @return
	 */
	public List<OaEmployee> getAllEmp(int offset, int limit);

	/**
	 * 查询员工总数
	 * 
	 * @return
	 */
	public Integer getAllEmpCount();

	/**
	 * 分页查询客户
	 * 
	 * @param offset
	 * @param limit
	 * @return
	 */
	public List<User> getAllUser(int offset, int limit);

	/**
	 * 查询客户总数
	 * 
	 * @return
	 */
	public Integer getAllUserCount();

	/**
	 * 发送邮件
	 * 
	 * @param toEmail
	 * @param mailContext
	 */
	public void sendMail(String toEmail, MailContext mailContext);
}
