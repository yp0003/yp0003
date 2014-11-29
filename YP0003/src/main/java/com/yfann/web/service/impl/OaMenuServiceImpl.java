package com.yfann.web.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.OaMenuMapper;
import com.yfann.web.dao.OaRoleMenuMapper;
import com.yfann.web.pojo.OaMenu;
import com.yfann.web.pojo.OaMenuExample;
import com.yfann.web.pojo.OaRoleMenuExample;
import com.yfann.web.service.OaMenuService;

@Service
public class OaMenuServiceImpl implements OaMenuService {
	@Autowired
	private OaMenuMapper oaMenuMapper;
	@Autowired
	private OaRoleMenuMapper oaRoleMenuMapper;

	@Override
	public void saveOaMenu(OaMenu oaMenu) throws Exception {
		if (oaMenu != null) {
			oaMenuMapper.insert(oaMenu);
		}
	}

	@Override
	public void deleteOaMenuById(String menuId) throws Exception {
		if (menuId == null || "".equals(menuId)) {
			return;
		}
		// 删除菜单
		oaMenuMapper.deleteByPrimaryKey(menuId);
		// 删除关系
		OaRoleMenuExample oaRoleMenuExample = new OaRoleMenuExample();
		oaRoleMenuExample.or().andMenuIdEqualTo(menuId);
		oaRoleMenuMapper.deleteByExample(oaRoleMenuExample);
	}

	@Override
	public void updateOaMenu(OaMenu oaMenu) throws Exception {
		if (oaMenu != null) {
			oaMenuMapper.updateByPrimaryKeySelective(oaMenu);
		}
	}

	@Override
	public List<OaMenu> getAllOaMenu() {
		OaMenuExample oaMenuExample = new OaMenuExample();
		oaMenuExample.setOrderByClause("MENU_ID ASC");
		List<OaMenu> list;
		try {
			list = oaMenuMapper.selectByExample(oaMenuExample);
			return list;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public List<OaMenu> getAllOaMenuchild() {
		OaMenuExample oaMenuExample = new OaMenuExample();
		oaMenuExample.or().andPidNotEqualTo("0");
		oaMenuExample.setOrderByClause("MENU_ID ASC");
		return oaMenuMapper.selectByExample(oaMenuExample);
	}

	@Override
	public OaMenu getOaMenuById(String menuId) {
		return oaMenuMapper.selectByPrimaryKey(menuId);
	}

	@Override
	public List<OaMenu> getOaMenuByIds(String[] menuIds) {
		OaMenuExample oaMenuExample = new OaMenuExample();
		oaMenuExample.or().andMenuIdIn(Arrays.asList(menuIds));
		return oaMenuMapper.selectByExample(oaMenuExample);
	}

}
