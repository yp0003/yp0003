package com.yfann.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.User;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.MailContext;
@Service
public class SystemServiceImpl implements SystemService{
	@Autowired
	private UserMapper userMapper;

	@Override
	public void saveUser(User user) throws Exception {
			userMapper.insert(user);
	}

	@Override
	public User validateUser(User user) {
		List<User> userList = userMapper.selectUserByUserId(user.getUserId());
		if(userList != null && !userList.isEmpty())
			return userList.get(0);
		else
		    return null;
	}

	@Override
	public void updateUser(User user) throws Exception {
		userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public void sendMail(User user, MailContext mailContext) {
		
		
	}
	
	
}
