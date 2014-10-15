package com.yfann.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.User;
import com.yfann.web.service.SystemService;
@Service
public class SystemServiceImpl implements SystemService{
	@Autowired
	private UserMapper userMapper;

	@Override
	public void saveUser(User user) throws Exception {
			userMapper.insertSelective(user);
	}

	@Override
	public User validateUser(User user) {
		List<User> userList = userMapper.selectUserByUserId(user.getUserId());
		if(userList != null && !userList.isEmpty())
			return userList.get(0);
		else
		    return null;
	}
	
	
}
