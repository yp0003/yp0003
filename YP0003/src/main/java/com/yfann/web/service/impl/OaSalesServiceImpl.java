package com.yfann.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.OaSalesMapper;
import com.yfann.web.pojo.OaSales;
import com.yfann.web.pojo.OaSalesExample;
import com.yfann.web.service.OaSalesService;

@Service
public class OaSalesServiceImpl implements OaSalesService {
	@Autowired
	private OaSalesMapper oaSalesMapper;

	@Override
	public void saveOaSales(OaSales oaSales) throws Exception {
		if(oaSales!=null){
			oaSalesMapper.insert(oaSales);
		}
	}

	@Override
	public List<OaSales> getOaSalesAllById(String id) {
		OaSalesExample example = new OaSalesExample();
		example.setOrderByClause("CREATE_TIME DESC");
		example.or().andUserIdEqualTo(id);
		return oaSalesMapper.selectByExample(example);
	}

	@Override
	public Integer getOaSalesAllCountById(String id) {
		OaSalesExample example = new OaSalesExample();
		example.or().andUserIdEqualTo(id);
		return oaSalesMapper.countByExample(example);
	}

	@Override
	public OaSales getOaSalesById(String id) {
		return oaSalesMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean SalesCodeUsed(String salesCode) {
		OaSalesExample example = new OaSalesExample();
		example.or().andSalesCodeEqualTo(salesCode);
		OaSales oaSales = oaSalesMapper.selectByExample(example).get(0);
		
		return false;
	}

}
