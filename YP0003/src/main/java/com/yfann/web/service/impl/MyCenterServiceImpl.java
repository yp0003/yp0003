package com.yfann.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.User;
import com.yfann.web.service.MyCenterService;

public class MyCenterServiceImpl implements MyCenterService{

	/**用户映射接口*/
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public boolean updatePassword(User user) {
		int result = userMapper.updateByPrimaryKeySelective(user);
		if(result > 0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateSingleInfo(User user) {
		int result = userMapper.updateByPrimaryKeySelective(user);
		if(result > 0){
			return true;
		}
		return false;
	}

}
