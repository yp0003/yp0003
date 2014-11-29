package com.yfann.web.service.impl;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.PublicMessageMapper;
import com.yfann.web.pojo.PublicMessage;
import com.yfann.web.pojo.PublicMessageExample;
import com.yfann.web.service.OaPublicMessageService;

@Service
public class OaPublicMessageServiceImpl implements OaPublicMessageService {
	@Autowired
	private PublicMessageMapper publicMessageMapper;

	@Override
	public void savePublicMessage(PublicMessage publicMessage) throws Exception {
		if (publicMessage != null) {
			publicMessageMapper.insert(publicMessage);
		}
	}

	@Override
	public void deletePublicMessageById(String id) throws Exception {
		publicMessageMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updatePublicMessage(PublicMessage publicMessage) throws Exception {
		if (publicMessage != null) {
			publicMessageMapper.updateByPrimaryKeySelective(publicMessage);
		}
	}

	@Override
	public List<PublicMessage> getAllPublicMessage(int off, int lim) {
		PublicMessageExample publicMessageExample = new PublicMessageExample();
		publicMessageExample.setOrderByClause("send_time desc");
		return publicMessageMapper.selectByExample(new PublicMessageExample(), new RowBounds(off, lim));
	}

	@Override
	public Integer getAllCountPublicMessage() {
		return publicMessageMapper.countByExample(new PublicMessageExample());
	}

	@Override
	public List<PublicMessage> getPublicMessageByIds(String[] ids) {
		PublicMessageExample publicMessageExample = new PublicMessageExample();
		publicMessageExample.or().andIdIn(Arrays.asList(ids));
		return publicMessageMapper.selectByExample(publicMessageExample);
	}

	@Override
	public PublicMessage getPublicMessageById(String id) {
		return publicMessageMapper.selectByPrimaryKey(id);
	}

}
