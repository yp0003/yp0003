package com.yfann.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.OaEmployeeMapper;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaEmployeeExample;
import com.yfann.web.service.OaEmployeeService;

@Service
public class OaEmployeeServiceImpl implements OaEmployeeService {
	@Autowired
	private OaEmployeeMapper oaEmployeeMapper;

	@Override
	public void saveOaEmployee(OaEmployee oaEmployee) throws Exception {
		oaEmployeeMapper.insert(oaEmployee);
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
		oaEmployeeMapper.updateByPrimaryKeySelective(oaEmployee);
	}
}
