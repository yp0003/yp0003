package com.yfann.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.MyProductMapper;
import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.User;
import com.yfann.web.service.MyCenterService;
import com.yfann.web.vo.PageInfo;
@Service
public class MyCenterServiceImpl implements MyCenterService{

	/**用户映射接口*/
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private MyProductMapper myProductMapper;
	@Override
	public boolean commitSmartCode(MyProduct myProduct) {
		int reslut = myProductMapper.updateByPrimaryKeySelective(myProduct);
		if(reslut > 0){
			return true;
		}
		return false;
	}
	@Override
	public List<MyProduct> findMyProductList(User user, MyProduct myProduct,PageInfo pageInfo) {
		Map<String, Object> parames = getMyProductParames(myProduct);
		parames.put("userId", user.getId());
		pageInfo.setCount(myProductMapper.selectMyProductListCountByParames(parames));
		return myProductMapper.selectMyProductListByParames(parames, new RowBounds(pageInfo.getOffset(), pageInfo.getPageSize()));
	}
	
	private Map<String, Object> getMyProductParames(MyProduct myProduct){
		Map<String, Object> parames = new HashMap<String, Object>();
		if(myProduct != null){
			if(StringUtils.isNotBlank(myProduct.getUserId())){
				parames.put("userId", myProduct.getUserId());
			}
			
		}
		return parames;
	}
	
	@Override
	public boolean updatePassword(User user) {
		user.setNowPassword(user.getNowPassword().split(",")[0]);
		int result = userMapper.updateByPrimaryKeySelective(user);
		if(result > 0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateSingleInfo(User user) {
		int result = userMapper.updateByPrimaryKeySelective(user);
		if(result > 0){
			return true;
		}
		return false;
	}

	@Override
	public User findUserInfoById(User user) {
		return userMapper.selectByPrimaryKey(user.getId());
	}
}
