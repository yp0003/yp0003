package com.yfann.web.service.impl;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.OaEmpRoleMapper;
import com.yfann.web.dao.OaRoleMapper;
import com.yfann.web.dao.OaRoleMenuMapper;
import com.yfann.web.pojo.OaEmpRole;
import com.yfann.web.pojo.OaEmpRoleExample;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaMenu;
import com.yfann.web.pojo.OaRole;
import com.yfann.web.pojo.OaRoleExample;
import com.yfann.web.pojo.OaRoleMenu;
import com.yfann.web.pojo.OaRoleMenuExample;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaRoleService;

@Service
public class OaRoleServiceImpl implements OaRoleService {
	@Autowired
	private OaRoleMapper oaRoleMapper;
	@Autowired
	private OaRoleMenuMapper oaRoleMenuMapper;
	@Autowired
	private OaEmpRoleMapper oaEmpRoleMapper;

	private OaRoleMenuExample oaRoleMenuExample = new OaRoleMenuExample();
	private OaEmpRoleExample oaEmpRoleExample = new OaEmpRoleExample();
	private OaRoleExample oaRoleExample = new OaRoleExample();

	@Override
	public void saveOaRole(OaRole oaRole) throws Exception {
		if (oaRole != null) {
			// 保存角色

			oaRoleMapper.insert(oaRole);

			// 保存和菜单的关系
			// 保存pid
			Set<String> pids = new HashSet<String>();
			List<OaMenu> oaMenuList = oaRole.getOaMenuList();
			if (oaMenuList != null && oaMenuList.size() > 0) {
				OaRoleMenu oaRoleMenu = new OaRoleMenu();
				oaRoleMenu.setRoleId(oaRole.getRoleId());
				for (OaMenu m : oaMenuList) {
					pids.add(m.getPid());
					oaRoleMenu.setMenuId(m.getMenuId());
					oaRoleMenuMapper.insert(oaRoleMenu);
				}
				//保存父菜单
				for(String s : pids){
					oaRoleMenu.setMenuId(s);
					oaRoleMenuMapper.insert(oaRoleMenu);
				}
			}
		}
	}

	@Override
	public void deleteOaRoleById(String roleId) throws Exception {
		// 删除角色
		oaRoleMapper.deleteByPrimaryKey(roleId);

		// 删除与菜单的关系
		oaRoleMenuExample.clear();
		oaRoleMenuExample.or().andRoleIdEqualTo(roleId);
		oaRoleMenuMapper.deleteByExample(oaRoleMenuExample);

		// 删除与用户/客户的关系
		oaEmpRoleExample.clear();
		oaEmpRoleExample.or().andRoleIdEqualTo(roleId);
		oaEmpRoleMapper.deleteByExample(oaEmpRoleExample);
	}

	@Override
	public void updateOaRole(OaRole oaRole) throws Exception {
		// 更新角色
		oaRoleMapper.updateByPrimaryKeySelective(oaRole);

		// 更新与菜单的关系
		// 删除与菜单的关系
		Set<String> pids = new HashSet<String>();
		List<OaMenu> oaMenuList = oaRole.getOaMenuList();
		oaRoleMenuExample.clear();
		oaRoleMenuExample.or().andRoleIdEqualTo(oaRole.getRoleId());
		oaRoleMenuMapper.deleteByExample(oaRoleMenuExample);
		// 新增与菜单的关系
		if (oaMenuList != null && oaMenuList.size() > 0) {
			OaRoleMenu oaRoleMenu = new OaRoleMenu();
			oaRoleMenu.setRoleId(oaRole.getRoleId());
			for (OaMenu m : oaMenuList) {
				pids.add(m.getPid());
				oaRoleMenu.setMenuId(m.getMenuId());
				oaRoleMenuMapper.insert(oaRoleMenu);
			}
			//保存父菜单
			for(String s : pids){
				oaRoleMenu.setMenuId(s);
				oaRoleMenuMapper.insert(oaRoleMenu);
			}
		}
	}

	@Override
	public List<OaRole> getAllOaRole() {
		oaRoleExample.clear();
		oaRoleExample.setOrderByClause("ROLE_ID DESC");
		return oaRoleMapper.selectByExample(oaRoleExample);
	}

	@Override
	public OaRole getOaRoleById(String roleId) {
		return oaRoleMapper.selectByPrimaryKey(roleId);
	}

	@Override
	public List<OaRole> getOaRoleByIds(String[] roleIds) {
		oaRoleExample.clear();
		oaRoleExample.or().andRoleIdIn(Arrays.asList(roleIds));
		return oaRoleMapper.selectByExample(oaRoleExample);
	}

	@Override
	public void updatePrivilege(OaRole oaRole) {
		List<User> userList = oaRole.getUserList();
		List<OaEmployee> oaEmployeeList = oaRole.getOaEmployeeList();

		// 删除关系
		oaEmpRoleExample.clear();
		oaEmpRoleExample.or().andRoleIdEqualTo(oaRole.getRoleId());
		oaEmpRoleMapper.deleteByExample(oaEmpRoleExample);

		// 保存与客户的关系
		OaEmpRole oaEmpRole = new OaEmpRole();
		oaEmpRole.setRoleId(oaRole.getRoleId());
		if (userList != null && userList.size() > 0) {
			for (User u : userList) {
				oaEmpRole.setId(u.getId());
				oaEmpRoleMapper.insertSelective(oaEmpRole);
			}
		}
		// 保存与员工的关系
		if (oaEmployeeList != null && oaEmployeeList.size() > 0) {
			for (OaEmployee e : oaEmployeeList) {
				oaEmpRole.setId(e.getId());
				oaEmpRoleMapper.insertSelective(oaEmpRole);
			}
		}
	}

}
