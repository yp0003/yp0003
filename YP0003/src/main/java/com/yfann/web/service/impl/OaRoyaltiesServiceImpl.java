package com.yfann.web.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.OaRoyaltiesMapper;
import com.yfann.web.dao.OaSalesChampionMapper;
import com.yfann.web.pojo.OaRoyalties;
import com.yfann.web.pojo.OaRoyaltiesExample;
import com.yfann.web.pojo.OaSalesChampion;
import com.yfann.web.service.OaRoyaltiesService;

@Service
public class OaRoyaltiesServiceImpl implements OaRoyaltiesService {
	@Autowired
	private OaRoyaltiesMapper oaRoyaltiesMapper;
	@Autowired
	private OaSalesChampionMapper oaSalesChampionMapper;

	@Override
	public void delRoyalties() {
		oaRoyaltiesMapper.deleteByExample(new OaRoyaltiesExample());
	}

	@Override
	public void saveRoyalties(OaRoyalties oaRoyalties) {
		if (oaRoyalties != null) {
			oaRoyaltiesMapper.insert(oaRoyalties);
		}
	}

	@Override
	public void updateChampion(BigDecimal champion) {
			OaSalesChampion sc = oaSalesChampionMapper.selectByPrimaryKey("1");
			sc.setScale(champion);
			oaSalesChampionMapper.updateByPrimaryKeySelective(sc);
	}

	@Override
	public List<OaRoyalties> getAll() {
		OaRoyaltiesExample example = new OaRoyaltiesExample();
		example.setOrderByClause("id asc");
		return oaRoyaltiesMapper.selectByExample(example);
	}

	@Override
	public BigDecimal getChampion() {
		return oaSalesChampionMapper.selectByPrimaryKey("1").getScale();
	}

	@Override
	public void delRoyalties(Integer id) {
		oaRoyaltiesMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updateOaRoyalties(OaRoyalties or) {
		if(or!=null){
			oaRoyaltiesMapper.updateByPrimaryKeySelective(or);
		}
		
	}
}
