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
	public List<Message> getAllMessage(int off, int lim) {
		MessageExample example = new MessageExample();
		example.setOrderByClause("send_time desc");
		return messageMapper.selectByExample(example, new RowBounds(off, lim));
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
