package com.yfann.web.service.impl;

import java.util.Arrays;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.ApplyMoneyMapper;
import com.yfann.web.dao.DicMapper;
import com.yfann.web.pojo.ApplyMoney;
import com.yfann.web.pojo.ApplyMoneyExample;
import com.yfann.web.pojo.ApplyMoneyExample.Criteria;
import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.DicExample;
import com.yfann.web.service.OaApplyService;
import com.yfann.web.vo.PageInfo;

@Service
public class OaApplyServiceImpl implements OaApplyService {
	@Autowired
	private ApplyMoneyMapper applyMoneyMapper;
	@Autowired
	private DicMapper dicMapper;

	@Override
	public void saveApply(ApplyMoney applyMoney) throws Exception {
		if(applyMoney!=null)
			applyMoneyMapper.insert(applyMoney);
//		if (applyMoney != null && (null == applyMoney.getId()||"".equals(applyMoney.getId()))) {
//			applyMoneyMapper.insert(applyMoney);
//		}else if(applyMoney != null && null != applyMoney.getId() && !"".equals(applyMoney.getId())){
//			applyMoneyMapper.updateByPrimaryKeySelective(applyMoney);
//		}
	}

	@Override
	public void deleteApplyById(String id) throws Exception {
		applyMoneyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updateApply(ApplyMoney applyMoney) throws Exception {
		if (applyMoney != null) {
			applyMoneyMapper.updateByPrimaryKeySelective(applyMoney);
		}
	}

	@Override
	public List<ApplyMoney> getApplyByField(ApplyMoney applyMoney,PageInfo pageInfo) {
		
		 if (null != pageInfo) {
	            pageInfo.setCount(applyMoneyMapper.selectCountByApply(applyMoney));
	            List<ApplyMoney> list =applyMoneyMapper.selectListByApply(applyMoney, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));            
	            return   list;
	            }
	    return applyMoneyMapper.selectListByApply(applyMoney);
	}

	@Override
	public int getApplyCountByField(String uid, List<String> applyStatus, List<String> payStatus) {
		ApplyMoneyExample example = new ApplyMoneyExample();
		Criteria criteria = example.createCriteria();
		if (StringUtils.isNotEmpty(uid)) {
			criteria.andApplyIdEqualTo(uid);
		}
		if (applyStatus != null && applyStatus.size() > 0) {
			criteria.andApplyStatusIn(applyStatus);
		}
		if (applyStatus != null && payStatus.size() > 0) {
			criteria.andPayStatusIn(payStatus);
		}
		example.or(criteria);
		return applyMoneyMapper.countByExample(example);
	}

	@Override
	public List<ApplyMoney> getApplyByIds(String[] ids) {
		ApplyMoneyExample example = new ApplyMoneyExample();
		example.or().andIdIn(Arrays.asList(ids));
		return applyMoneyMapper.selectByExample(example);
	}

	@Override
	public ApplyMoney getApplyById(String id) {
		return applyMoneyMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Dic> getDicByType(String type) {
		DicExample example = new DicExample();
		example.or().andDicTypeEqualTo(type);
		return dicMapper.selectByExample(example);
	}

}
