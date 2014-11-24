package com.yfann.web.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.vo.LoginMessage;
import com.yfann.web.vo.RegisterMessage;

/**
 * @Description: 页面转向action
 * @author Tree
 * 
 */
public class EmployeeAction extends CommonAction {
	private static final long serialVersionUID = 4598057907535359991L;

	private RegisterMessage registerMessage = new RegisterMessage();
	private LoginMessage loginMessage = new LoginMessage();
	final Logger logger = LoggerFactory.getLogger(EmployeeAction.class);
	private OaEmployee employee;
	private String birthday;
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	@Autowired
	private OaEmployeeService employeeService;
	/** 注册页面验证码 */
	private String validateCode;

	private String remPass;
	// 转向修改用户资料页面
	public String updateInfoUI() {
		employee = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (employee == null) {
			return "forwardLogin";
		}
		this.birthday = (new SimpleDateFormat("yyyy-MM-dd")).format(employee.getBirthday());
		return "updateInfoUI";
	}

	// 修改用户资料
	public String updateInfo() throws Exception {
		OaEmployee u = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (u == null) {
			return "forwardLogin";
		}
		if (employee.getNick() != null)
			u.setNick(employee.getNick());
		if (employee.getUserName() != null)
			u.setUserName(employee.getUserName());

		if (birthday != null && !"".equals(birthday)) {
			Date bir = (new SimpleDateFormat("yyyy-MM-dd")).parse(birthday);
			u.setBirthday(bir);
		}

		if (employee.getSex() != null)
			u.setSex(employee.getSex());
		if (employee.getIdcardNumber() != null)
			u.setIdcardNumber(employee.getIdcardNumber());
		if (employee.getEducation() != null)
			u.setEducation(employee.getEducation());
		if (employee.getForeignCountrie() != null)
			u.setForeignCountrie(employee.getForeignCountrie());
		if (employee.getGraduateSchool() != null)
			u.setGraduateSchool(employee.getGraduateSchool());
		if (employee.getPhoneNumber() != null)
			u.setPhoneNumber(employee.getPhoneNumber());
		if (employee.getCountrie() != null)
			u.setCountrie(employee.getCountrie());
		if (employee.getProvinceAndCity() != null)
			u.setProvinceAndCity(employee.getProvinceAndCity());
		if (employee.getAddress() != null)
			u.setAddress(employee.getAddress());
		if (employee.getZipCode() != null)
			u.setZipCode(employee.getZipCode());
		if (employee.getEmail() != null)
			u.setEmail(employee.getEmail());
		if (employee.getQq() != null)
			u.setQq(employee.getQq());

		employeeService.updateOaEmployee(u);
		return "updateInfo";
	}
	
	// 转向修改密码页面
	public String updatePasswordUI() {
		return "updatePasswordUI";
	}

	// 修改密码
	public String updatePassword() throws Exception {
		//验证当前密码
		if ("".equals(employee.getOldPassword())) {
			registerMessage.setPasswordMessage("当前密码不能为空！");
			return "updatePasswordUI";
		}
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if(emp==null){
			return "forwardLogin";
		}
		if(!emp.getNowPassword().equals(employee.getOldPassword())){
			registerMessage.setPasswordMessage("当前密码输入错误！");
			return "updatePasswordUI";
		}
		String nowPD;
		// 验证新密码
		if (!(StringUtils.isNotBlank(employee.getNowPassword()))) {
			registerMessage.setPasswordMessage("密码为空!");
			return "updatePasswordUI";
		} else {
			String[] passwords = employee.getNowPassword().split(",");
			nowPD = passwords[0];
			if (passwords.length != 2) {
				registerMessage.setPasswordMessage("密码非法!");
				return "updatePasswordUI";
			} else if (passwords.length > 1) {
				if (passwords[0].trim().length() < 5
						&& passwords[0].trim().length() > 20) {
					registerMessage.setPasswordMessage("密码过长或过短!");
					return "updatePasswordUI";
				} else if (!passwords[0].trim().equals(passwords[1].trim())) {
					registerMessage.setPasswordMessage("两次密码不一致!");
					return "updatePasswordUI";
				}
			}
		}
		
		if (emp.getOldPassword() != null && !"".equals(emp.getOldPassword())){
			emp.setThanOldPassword(emp.getOldPassword());
		}
		emp.setOldPassword(employee.getOldPassword());
		emp.setNowPassword(nowPD);
		employeeService.updateOaEmployee(emp);
		return "logout";
	}











	/**
	 * 注册功能
	 * 
	 * @return
	 */




	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public RegisterMessage getRegisterMessage() {
		return registerMessage;
	}

	public void setRegisterMessage(RegisterMessage registerMessage) {
		this.registerMessage = registerMessage;
	}

	public OaEmployee getEmployee() {
		return employee;
	}

	public void setEmployee(OaEmployee employee) {
		this.employee = employee;
	}

	public LoginMessage getLoginMessage() {
		return loginMessage;
	}

	public void setLoginMessage(LoginMessage loginMessage) {
		this.loginMessage = loginMessage;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getRemPass() {
		return remPass;
	}

	public void setRemPass(String remPass) {
		this.remPass = remPass;
	}

}
