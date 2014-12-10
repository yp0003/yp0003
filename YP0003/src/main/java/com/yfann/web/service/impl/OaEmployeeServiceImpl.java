package com.yfann.web.service.impl;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.yfann.web.common.ApplicationValue;
import com.yfann.web.common.FileUtil;
import com.yfann.web.dao.OaEmpRoleMapper;
import com.yfann.web.dao.OaEmployeeMapper;
import com.yfann.web.dao.OaRoleMapper;
import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.OaEmpRole;
import com.yfann.web.pojo.OaEmpRoleExample;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaEmployeeExample;
import com.yfann.web.pojo.User;
import com.yfann.web.pojo.UserExample;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.vo.MailContext;

@Service
public class OaEmployeeServiceImpl implements OaEmployeeService {
	@Autowired
	private OaEmployeeMapper oaEmployeeMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private OaRoleMapper oaRoleMapper;
	@Autowired
	private OaEmpRoleMapper oaEmpRoleMapper;
	@Autowired
	private JavaMailSenderImpl javaMailSenderImpl;

	@Override
	public void saveOaEmployee(OaEmployee oaEmployee) throws Exception {
		if (oaEmployee != null) {
			oaEmployeeMapper.insert(oaEmployee);
		}
	}

	@Override
	public OaEmployee validateOaEmployee(String employeeId) {
		OaEmployeeExample oaEmployeeExample = new OaEmployeeExample();
		oaEmployeeExample.or().andEmployeeIdEqualTo(employeeId);
		List<OaEmployee> list = oaEmployeeMapper.selectByExample(oaEmployeeExample);
		if (list != null && list.size() > 0) {
			return list.get(0);
		} else {
			return null;
		}
	}

	@Override
	public void updateOaEmployee(OaEmployee oaEmployee) throws Exception {
		if (oaEmployee != null) {
			oaEmployeeMapper.updateByPrimaryKeySelective(oaEmployee);
		}
	}

	@Override
	public void updateUser(User user) throws Exception {
		if (user != null) {
			userMapper.updateByPrimaryKeySelective(user);
		}
	}

	@Override
	public void updatePrivilege(String id, String[] roleIds) {
		OaEmpRoleExample oaEmpRoleExample = new OaEmpRoleExample();
		OaEmpRole oaEmpRole = new OaEmpRole();
		oaEmpRole.setId(id);

		// 判断是否是客户
		User user = userMapper.selectByPrimaryKey(id);
		if (user != null) {
			// 删除原关系
			oaEmpRoleExample.clear();
			oaEmpRoleExample.or().andIdEqualTo(id);
			oaEmpRoleMapper.deleteByExample(oaEmpRoleExample);
			// 保存新关系
			if (roleIds != null && roleIds.length > 0) {
				for (String s : roleIds) {
					oaEmpRole.setRoleId(s);
					oaEmpRoleMapper.insert(oaEmpRole);
				}
			}
		} else {
			// 如果不是客户判断是否是用户
			OaEmployee oaEmployee = oaEmployeeMapper.selectByPrimaryKey(id);
			if (oaEmployee != null) {
				// 删除原关系
				oaEmpRoleExample.clear();
				oaEmpRoleExample.or().andIdEqualTo(id);
				oaEmpRoleMapper.deleteByExample(oaEmpRoleExample);
				// 保存新关系
				if (roleIds != null && roleIds.length > 0) {
					for (String s : roleIds) {
						oaEmpRole.setRoleId(s);
						oaEmpRoleMapper.insert(oaEmpRole);
					}
				}
			}
		}
	}

	@Override
	public List<OaEmployee> getEmpByIds(String[] employeeIds) {
		OaEmployeeExample oaEmployeeExample = new OaEmployeeExample();
		oaEmployeeExample.or().andEmployeeIdIn(Arrays.asList(employeeIds));
		return oaEmployeeMapper.selectByExample(oaEmployeeExample);
	}

	@Override
	public List<OaEmployee> getEmpByField(String empId, String name, String roleId, int off, int lim) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (StringUtils.isNotEmpty(empId))
			map.put("empId", "%" + empId + "%");
		if (StringUtils.isNotEmpty(name))
			map.put("name", "%" + name + "%");
		if (StringUtils.isNotEmpty(roleId))
			map.put("roleId", roleId);
		map.put("off", off);
		map.put("lim", lim);
		return oaEmployeeMapper.selectEmpByField(map);
	}

	@Override
	public List<User> getUserByField(String userId, String name, String roleId, int off, int lim) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (StringUtils.isNotEmpty(userId))
			map.put("empId", "%" + userId + "%");
		if (StringUtils.isNotEmpty(name))
			map.put("name", "%" + name + "%");
		if (StringUtils.isNotEmpty(roleId))
			map.put("roleId", roleId);
		map.put("off", off);
		map.put("lim", lim);
		return userMapper.selectUserByField(map);
	}

	@Override
	public Integer getEmpCountByField(String empId, String name, String roleId, int off, int lim) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (StringUtils.isNotEmpty(empId))
			map.put("empId", "%" + empId + "%");
		if (StringUtils.isNotEmpty(name))
			map.put("name", "%" + name + "%");
		if (StringUtils.isNotEmpty(roleId))
			map.put("roleId", roleId);
		map.put("off", off);
		map.put("lim", lim);
		return oaEmployeeMapper.selectEmpCountByField(map);
	}

	@Override
	public Integer getUserCountByField(String userId, String name, String roleId, int off, int lim) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (StringUtils.isNotEmpty(userId))
			map.put("empId", "%" + userId + "%");
		if (StringUtils.isNotEmpty(name))
			map.put("name", "%" + name + "%");
		if (StringUtils.isNotEmpty(roleId))
			map.put("roleId", roleId);
		map.put("off", off);
		map.put("lim", lim);
		return userMapper.selectUserCountByField(map);
	}
	

	@Override
	public void sendMail(String toEmail, MailContext mailContext) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(toEmail);
		mailMessage.setFrom(ApplicationValue.MAIL_SEND_FROM);
		mailMessage.setSubject(mailContext.getMailSubject());
		mailMessage.setText(mailContext.getTextContext());
		// 发送邮件
		javaMailSenderImpl.send(mailMessage);
	}

	@Override
	public List<OaEmployee> getAllEmp(int offset, int limit) {
		return oaEmployeeMapper.selectByExample(new OaEmployeeExample(), new RowBounds(offset, limit));
	}

	@Override
	public Integer getAllEmpCount() {
		return oaEmployeeMapper.countByExample(new OaEmployeeExample());
	}

	@Override
	public OaEmployee getEmpById(String id) {
		return oaEmployeeMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<User> getAllUser(int offset, int limit) {
		return userMapper.selectByExample(new UserExample(), new RowBounds(offset, limit));
	}

	@Override
	public Integer getAllUserCount() {
		return userMapper.countByExample(new UserExample());
	}

	@Override
	public User getUserById(String id) {
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateHeadImg(OaEmployee oaEmployee,File image) {
		//转换产品的缩略图
		byte[] picData = image==null?null:FileUtil.fileToPicData(image,logger);
		oaEmployee.setHeadImg(picData);
		oaEmployeeMapper.updateHeadImg(oaEmployee);
	}
	
	final Logger logger = LoggerFactory.getLogger(OaEmployeeServiceImpl.class);
}
