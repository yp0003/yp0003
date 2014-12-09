package com.yfann.web.service.impl;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.dao.PublicMessageMapper;
import com.yfann.web.pojo.PublicMessage;
import com.yfann.web.pojo.PublicMessageExample;
import com.yfann.web.service.OaPublicMessageService;
import com.yfann.web.vo.PageInfo;

@Service
public class OaPublicMessageServiceImpl implements OaPublicMessageService {
	@Autowired
	private PublicMessageMapper publicMessageMapper;

	@Override
	public void savePublicMessage(PublicMessage publicMessage) throws Exception {
		if(publicMessage.getId() == null ||"".equals(publicMessage.getId())){
			publicMessage.setId(OaUUIDCreate.getUUID());
			publicMessage.setSendTime(new Date());
			publicMessageMapper.insert(publicMessage);
		}else{
			publicMessageMapper.updateByPrimaryKeySelective(publicMessage);
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
	public List<PublicMessage> selectPublicMessageList(PublicMessage publicMessage,PageInfo pageInfo) {
		if (null != pageInfo) {
            pageInfo.setCount(publicMessageMapper.countByPublicMsgParam(publicMessage));
            List<PublicMessage> list = publicMessageMapper.SelectListByPublicMsgParam(publicMessage,new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));            
            return   list;
            }
     return publicMessageMapper.SelectListByPublicMsgParam(publicMessage);
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
