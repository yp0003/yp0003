package com.yfann.web.action.oa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.OaMenu;
import com.yfann.web.pojo.OaRole;
import com.yfann.web.service.OaMenuService;
import com.yfann.web.service.OaRoleService;

/**
 * OA系统功能
 * 
 */
public class OaRoleAction extends CommonAction {
	private static final long serialVersionUID = -344595803339516326L;

	/** 角色列表 */
	public List<OaRole> roleList;
	/** 角色列表 */
	public List<OaMenu> menuList;
	/** 角色 */
	public OaRole oaRole;

	@Autowired
	private OaMenuService oaMenuService;
	@Autowired
	private OaRoleService oaRoleService;

	private String[] mids;
	
	// 列表显示
	public String toList() {
		roleList = oaRoleService.getAllOaRole();
		return "tolist";
	}

	// 转到新增页面
	public String toAdd() {
		menuList = oaMenuService.getAllOaMenuchild();
		ActionContext.getContext().put("menuList", menuList);
		return "add";
	}

	// 新增
	public String add() throws Exception {
		oaRole.setRoleId(OaUUIDCreate.getUUID());
		if (mids != null && mids.length > 0) {
			List<OaMenu> menus = oaMenuService.getOaMenuByIds(mids);
			oaRole.setOaMenuList(menus);
		}
		oaRoleService.saveOaRole(oaRole);
		return "action2action";
	}

	// 转到修改页面
	public String toUpdate() {
		menuList = oaMenuService.getAllOaMenuchild();
		oaRole = oaRoleService.getOaRoleById(request.getParameter("id"));
		List<OaMenu> list = oaRole.getOaMenuList();
		mids = new String[list.size()];
		int i = 0;
		for (OaMenu m : list) {
			mids[i] = m.getMenuId();
			i++;
		}
		ActionContext.getContext().put("menuList", menuList);
		return "update";
	}

	// 修改
	public String update() throws Exception {
		if (mids != null && mids.length > 0) {
			List<OaMenu> menus = oaMenuService.getOaMenuByIds(mids);
			oaRole.setOaMenuList(menus);
		}
		oaRoleService.updateOaRole(oaRole);
		return "action2action";
	}

	// 删除一个
	public String del() throws Exception {
		oaRoleService.deleteOaRoleById(request.getParameter("id"));
		return "action2action";
	}

	public String[] getMids() {
		return mids;
	}

	public void setMids(String[] mids) {
		this.mids = mids;
	}

	public List<OaRole> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<OaRole> roleList) {
		this.roleList = roleList;
	}

	public OaRole getOaRole() {
		return oaRole;
	}

	public void setOaRole(OaRole oaRole) {
		this.oaRole = oaRole;
	}

	public List<OaMenu> getMenuList() {
		return menuList;
	}

	public void setMenuList(List<OaMenu> menuList) {
		this.menuList = menuList;
	}

}
