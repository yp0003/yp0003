package com.yfann.web.vo;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yfann.web.pojo.OaMenu;
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

	@Test
	public void getAllTest() throws Exception {
		List<OaMenu> list = oaMenuService.getAllOaMenu();
		for (OaMenu m : list) {
			System.out.println(m.getName());
		}
	}
}
