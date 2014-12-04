package com.yfann.web.service.impl;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.MessageMapper;
import com.yfann.web.pojo.Message;
import com.yfann.web.pojo.MessageExample;
import com.yfann.web.service.OaMessageService;
import com.yfann.web.vo.PageInfo;

@Service
public class OaMessageServiceImpl implements OaMessageService {
	@Autowired
	private MessageMapper messageMapper;

	@Override
	public void saveMessage(Message message) throws Exception {
		if (message != null) {
			messageMapper.insert(message);
		}
	}

	@Override
	public void deleteMessageById(String id) throws Exception {
		messageMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updateMessage(Message message) throws Exception {
		messageMapper.updateByPrimaryKeySelective(message);
	}

	@Override
	public List<Message> selectMessageList(Message message,PageInfo pageInfo) {

		 if (null != pageInfo) {
	            pageInfo.setCount(messageMapper.countByMessageParam(message));
	            List<Message> list =messageMapper.selectByMessageParam(message, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));            
	            return   list;
	            }
		return messageMapper.selectByMessageParam(message);
	}

	@Override
	public Integer getAllCountMessage() {
		return messageMapper.countByExample(new MessageExample());
	}

	@Override
	public List<Message> getMessageByIds(String[] ids) {
		MessageExample example = new MessageExample();
		example.or().andIdIn(Arrays.asList(ids));
		return messageMapper.selectByExample(example);
	}

	@Override
	public Message getMessageById(String id) {
		return messageMapper.selectByPrimaryKey(id);
	}

}
