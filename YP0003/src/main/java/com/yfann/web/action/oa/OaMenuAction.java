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
public class OaMenuAction extends CommonAction {
	private static final long serialVersionUID = 8574746594084487602L;

	@Autowired
	private OaMenuService oaMenuService;

	public String getOaMenu() throws Exception {
		List<OaMenu> list = oaMenuService.getAllOaMenu();
		ActionContext.getContext().getValueStack().push(list);
		return SUCCESS;
		
	}
}
