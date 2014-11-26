package com.yfann.web.action.oa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.yfann.web.action.CommonAction;
import com.yfann.web.pojo.OaMenu;
import com.yfann.web.service.OaMenuService;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaRoleAction extends CommonAction {
	private static final long serialVersionUID = -344595803339516326L;

	/** 菜单列表 */
	public List<OaMenu> menuList;
	/** 菜单 */
	public OaMenu oaMenu;

	@Autowired
	private OaMenuService oaMenuService;

	public String toList() {
		menuList = oaMenuService.getAllOaMenu();
		return "tolist";
	}
	
	public String toAdd(){
		return "add";
	}
	
	public String add() throws Exception{
		oaMenuService.saveOaMenu(oaMenu);
		return toList();
	}

	public String toUpdate() {
		oaMenu = oaMenuService.getOaMenuById(request.getParameter("id"));
		ActionContext.getContext().getValueStack().push(oaMenu);
		return "update";
	}

	public String update() throws Exception {
		oaMenuService.updateOaMenu(oaMenu);
		return toList();
	}

	public String del() throws Exception {
		oaMenuService.deleteOaMenuById(request.getParameter("id"));
		return toList();
	}

	public List<OaMenu> getMenuList() {
		return menuList;
	}

	public void setMenuList(List<OaMenu> menuList) {
		this.menuList = menuList;
	}

	public OaMenu getOaMenu() {
		return oaMenu;
	}

	public void setOaMenu(OaMenu oaMenu) {
		this.oaMenu = oaMenu;
	}

}
