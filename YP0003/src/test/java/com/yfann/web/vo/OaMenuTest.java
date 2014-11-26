package com.yfann.web.vo;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yfann.web.dao.OaEmployeeMapper;
import com.yfann.web.dao.OaMenuMapper;
import com.yfann.web.dao.OaRoleMapper;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaEmployeeExample;
import com.yfann.web.pojo.OaMenu;
import com.yfann.web.pojo.OaRole;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.service.OaMenuService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:spring/applicationContext-beans.xml",
		"classpath:spring/applicationContext-cache.xml",
		"classpath:spring/applicationContext-datasource.xml",
		"classpath:spring/applicationContext-mail.xml" })
public class OaMenuTest {
	@Autowired
	private OaMenuService oaMenuService;
	@Autowired
	private OaEmployeeService OaEmployeeService;
	@Autowired
	private OaEmployeeMapper oaEmployeeMapper;
	@Autowired
	private OaMenuMapper oaMenuMapper;
	@Autowired
	private OaRoleMapper oaRoleMapper;

	@Test
	public void getAllTest() throws Exception {
		List<OaMenu> list = oaMenuService.getAllOaMenu();
		for (OaMenu m : list) {
			System.out.println(m.getName());
		}
	}
	
	@Test
	public void getempname(){
		OaEmployeeExample oaEmployeeExample = new OaEmployeeExample();
		oaEmployeeExample.or().andEmployeeIdEqualTo("asd");
		List<OaEmployee> list1 = oaEmployeeMapper.selectByExample(oaEmployeeExample);
		System.out.println(list1.get(0).getEmployeeName());
		OaEmployee oaEmployee = OaEmployeeService.validateOaEmployee("asd");
		System.out.println(oaEmployee.getEmployeeName());
	}
	
	@Test
	public void getMenuByRole(){
		List<OaMenu> list = oaMenuMapper.selectByRole("1");
		System.out.println(list.get(0).getName());
	}
	
	@Test
	public void getRoleByEmp(){
		List<OaRole> list = oaRoleMapper.selectByEmployee("65842bb38b5d4d7aa731ac27e1105f1c");
		System.out.println(list.get(0).getName());
	}
}
