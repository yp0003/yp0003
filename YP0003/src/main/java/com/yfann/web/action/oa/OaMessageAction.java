package com.yfann.web.action.oa;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.Message;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaMessageService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 */
public class OaMessageAction extends CommonAction {
	private static final long serialVersionUID = -1856593393463253422L;

	/** 消息列表 */
	public List<Message> messageList;
	/** 分页 */
	private PageInfo pageInfo;
	/** 消息 */
	public Message message;

	@Autowired
	private OaMessageService oaMessageService;

	public String toList() {
		if(message == null)
			message = new Message();
		messageList = oaMessageService.selectMessageList(message, pageInfo);
		return "tolist";
	}

	public String toAdd() {
		return "add";
	}

	public String add() throws Exception {
		message.setId(OaUUIDCreate.getUUID());
		message.setSendTime(new Date());

		// 从session中取用户信息
		OaEmployee oaEmployee = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		User user = (User) session.getAttribute(ApplicationValue.USER_KEY_ON_SESSION);
		if (oaEmployee != null) {
			message.setSendUserId(oaEmployee.getId());
		} else if (user != null) {
			message.setSendUserId(user.getId());
		} else {
			//如果没登录则先登录
			return "forwardLogin";
		}
		oaMessageService.saveMessage(message);
		return "action2action";
	}

	public String toUpdate() throws Exception {
		message = oaMessageService.getMessageById(request.getParameter("id"));
		// TODO 增加消息状态判断 已读消息不更新读取时间
		message.setOpenTime(new Date());
		oaMessageService.updateMessage(message);
		return "update";
	}

	public String del() throws Exception {
		oaMessageService.deleteMessageById(request.getParameter("id"));
		return "action2action";
	}

	public List<Message> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<Message> messageList) {
		this.messageList = messageList;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

}
