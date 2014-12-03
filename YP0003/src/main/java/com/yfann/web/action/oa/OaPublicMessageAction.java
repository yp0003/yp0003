package com.yfann.web.action.oa;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.PublicMessage;
import com.yfann.web.service.OaPublicMessageService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 */
public class OaPublicMessageAction extends CommonAction {
	private static final long serialVersionUID = -7589874192163449060L;
	/** 公告列表 */
	private List<PublicMessage> publicMessageList;
	/** 公告 */
	private PublicMessage publicMessage;
	/** 分页 */
	private PageInfo pageInfo;
	@Autowired
	private OaPublicMessageService oaPublicMessageService;

	public String forwardPulbicMessageList() {
		if(publicMessage==null)
			publicMessage = new PublicMessage();
		publicMessageList = oaPublicMessageService.selectPublicMessageList(publicMessage, pageInfo);
		return "forwardPulbicMessageList";
	}

	public String forwardAddPulbicMessageInfo() {
		publicMessage = new PublicMessage();
		return "forwardPulbicMessageInfo";
	}
	public String forwardEditPulbicMessageInfo(){
		publicMessage = oaPublicMessageService.getPublicMessageById(publicMessage.getId());
		return "forwardPulbicMessageInfo";
	}

	public String savePublicMessageInfo() throws Exception {
		try{
			oaPublicMessageService.savePublicMessage(publicMessage);
			addActionMessage("操作成功！");
		}catch(Exception e){
			addActionError("操作失败");
		}

		return forwardPulbicMessageList();
	}


	public String delPublicMessge()  {
		try{
			oaPublicMessageService.deletePublicMessageById(publicMessage.getId());
			addActionMessage("操作成功！");
		}catch(Exception e){
			addActionError("操作失败");
		}

		return forwardPulbicMessageList();
	}



	public PublicMessage getPublicMessage() {
		return publicMessage;
	}

	public void setPublicMessage(PublicMessage publicMessage) {
		this.publicMessage = publicMessage;
	}

	public List<PublicMessage> getPublicMessageList() {
		return publicMessageList;
	}

	public void setPublicMessageList(List<PublicMessage> publicMessageList) {
		this.publicMessageList = publicMessageList;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	
	
}
