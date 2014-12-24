package com.yfann.web.service.impl;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.common.UUIDCreate;
import com.yfann.web.dao.OaSalesMapper;
import com.yfann.web.dao.OaSalesPicMapper;
import com.yfann.web.dao.OrderDetailMapper;
import com.yfann.web.pojo.OaSales;
import com.yfann.web.pojo.OaSalesExample;
import com.yfann.web.pojo.OaSalesPic;
import com.yfann.web.pojo.OaSalesPicExample;
import com.yfann.web.pojo.OrderDetail;
import com.yfann.web.service.OaSalesService;

@Service
public class OaSalesServiceImpl implements OaSalesService {
	@Autowired
	private OaSalesMapper oaSalesMapper;
	@Autowired
	private OaSalesPicMapper oaSalesPicMapper;
	@Autowired
	private OrderDetailMapper orderDetailMapper;

	@Override
	public void saveOaSales(OaSales oaSales) throws Exception {
		if (oaSales != null) {
			oaSalesMapper.insert(oaSales);
		}
	}

	@Override
	public List<OaSales> getOaSalesAllById(String id, int offset, int limit) {
		OaSalesExample example = new OaSalesExample();
		example.setOrderByClause("CREATE_TIME DESC");
		example.or().andEmployeeIdEqualTo(id);
		return oaSalesMapper.selectByExample(example, new RowBounds(offset, limit));
	}

	@Override
	public Integer getOaSalesAllCountById(String id) {
		OaSalesExample example = new OaSalesExample();
		example.or().andEmployeeIdEqualTo(id);
		return oaSalesMapper.countByExample(example);
	}

	@Override
	public OaSales getOaSalesById(String id) {
		return oaSalesMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean SalesCodeUsed(String salesCode) {
		boolean flag = false;
		if (StringUtils.isNotEmpty(salesCode)) {
			// 判断销售码是否存在，存在则进行下一步判断
			OrderDetail orderDetail = orderDetailMapper.selectByCode(salesCode);
			if (orderDetail != null) {
				// 判断销售码是否使用，没有被使用则返回true
				OaSalesExample example = new OaSalesExample();
				example.or().andSalesCodeEqualTo(salesCode);
				List<OaSales> OaSalesList = oaSalesMapper.selectByExample(example);
				if (OaSalesList.size() < 1) {
					flag = true;
				}
			}
		}
		return flag;
	}

	@Override
	public BigDecimal getPriceBySalesCode(String salesCode) {
		return orderDetailMapper.selectByCode(salesCode).getPrice();
	}

	@Override
	public List<OaSalesPic> getPicBySales(String id) {
		OaSalesPicExample example = new OaSalesPicExample();
		example.setOrderByClause("CREATE_TIME DESC");
		example.or().andSalesIdEqualTo(id);
		return oaSalesPicMapper.selectByExample(example);
	}

	@Override
	public OaSalesPic getPicById(String id) {
		return oaSalesPicMapper.selectByPrimaryKey(id);
	}

	@Override
	public void delOaSales(String id) throws Exception {
		oaSalesMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void savePic(OaSalesPic oaSalesPic) {
		if (oaSalesPic != null) {
			oaSalesPic.setCreateTime(new Date());
			oaSalesPic.setId(UUIDCreate.getUUID());
			oaSalesPicMapper.insert(oaSalesPic);
		}
	}

	@Override
	public void delPic(String id) {
		oaSalesPicMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updateOaSales(OaSales oaSales) throws Exception {
		if(oaSales!=null){
			oaSalesMapper.updateByPrimaryKeySelective(oaSales);
		}
	}

	@Override
	public void updateOaSales(OaSalesPic oaSalesPic) {
		if(oaSalesPic!=null){
			oaSalesPic.setFlag(1);
			oaSalesPicMapper.updateByPrimaryKeySelective(oaSalesPic);
		}
	}

	@Override
	public void delClearPic() {
		//获取当前日期的前两天
		Date date = new Date();
        Calendar calendar = Calendar.getInstance();  
        calendar.setTime(date);  
        calendar.add(Calendar.DAY_OF_MONTH, -2);  
        date = calendar.getTime(); 
        
        OaSalesPicExample example = new OaSalesPicExample();
        example.or().andFlagEqualTo(2).andCreateTimeLessThan(date);
		oaSalesPicMapper.deleteByExample(example);
	}

}
