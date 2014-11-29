package com.yfann.web.action.oa;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.PublicMessage;
import com.yfann.web.service.OaPublicMessageService;

/**
 * OA系统功能
 * 
 */
public class OaPublicMessageAction extends CommonAction {
	private static final long serialVersionUID = -7589874192163449060L;
	/** 公告列表 */
	public List<PublicMessage> pmList;
	/** 菜单 */
	public PublicMessage publicMessage;

	@Autowired
	private OaPublicMessageService oaPublicMessageService;

	public String toList() {
		pmList = oaPublicMessageService.getAllPublicMessage(0, Integer.MAX_VALUE);
		System.out.println(oaPublicMessageService.getAllCountPublicMessage());
		return "tolist";
	}

	public String toAdd() {
		return "add";
	}

	public String add() throws Exception {
		publicMessage.setId(OaUUIDCreate.getUUID());
		publicMessage.setSendTime(new Date());
		oaPublicMessageService.savePublicMessage(publicMessage);
		return "action2action";
	}

	public String toUpdate() {
		publicMessage = oaPublicMessageService.getPublicMessageById(request.getParameter("id"));
		return "update";
	}

	public String update() throws Exception {
		publicMessage.setSendTime(new Date());
		oaPublicMessageService.updatePublicMessage(publicMessage);
		return "action2action";
	}

	public String del() throws Exception {
		oaPublicMessageService.deletePublicMessageById(request.getParameter("id"));
		return "action2action";
	}

	public List<PublicMessage> getPmList() {
		return pmList;
	}

	public void setPmList(List<PublicMessage> pmList) {
		this.pmList = pmList;
	}

	public PublicMessage getPublicMessage() {
		return publicMessage;
	}

	public void setPublicMessage(PublicMessage publicMessage) {
		this.publicMessage = publicMessage;
	}

}
