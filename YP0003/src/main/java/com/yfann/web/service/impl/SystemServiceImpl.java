package com.yfann.web.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.yfann.web.common.ApplicationValue;
import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.User;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.MailContext;

@Service
public class SystemServiceImpl implements SystemService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private JavaMailSenderImpl javaMailSenderImpl;
	@Override
	public User findUserById(String id) {
		return userMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public User findUserByUserId(String userId) {
		return userMapper.selectUserByUserId(userId);
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
	public void saveUser(User user) throws Exception {
		if (user != null) {
			userMapper.insert(user);
		}
	}

	@Override
	public User validateUser(User user) {
		User userList = userMapper.selectUserByUserId(user.getUserId());
		if (userList != null)
			return user;
		else
			return null;
	}

	@Override
	public void updateUser(User user) throws Exception {
		userMapper.updateByPrimaryKeySelective(user);
	}

	/**
	 * 验证用户
	 *
	 * @param user
	 * @return
	 */
	@Override
	public User valiDateLogin(User user) {
		Map<String, Object> parames = getParames(user);
		User userInfo = userMapper.selectLoginUserByParames(parames);
		return userInfo;
	}

	private Map<String, Object> getParames(User user) {
		Map<String, Object> parames = new HashMap<String, Object>();
		if (user != null) {
			/* 用户名字 */
			if (StringUtils.isNotBlank(user.getUserName())) {
				parames.put("userName", user.getUserName());
			}
			// 用户名
			if (StringUtils.isNotBlank(user.getUserId())) {
				parames.put("userId", user.getUserId());
			}
			/* 密码 */
			if (StringUtils.isNotBlank(user.getNowPassword())) {
				parames.put("nowPassword", user.getNowPassword());
			}
		}
		return parames;
	}
}
