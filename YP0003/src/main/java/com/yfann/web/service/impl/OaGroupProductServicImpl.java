package com.yfann.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.common.UUIDCreate;
import com.yfann.web.dao.GroupProductMapper;
import com.yfann.web.dao.ProductGroupRelationMapper;
import com.yfann.web.dao.ProductMapper;
import com.yfann.web.pojo.GroupProduct;
import com.yfann.web.pojo.GroupProductExample;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductExample;
import com.yfann.web.pojo.ProductGroupRelation;
import com.yfann.web.pojo.ProductGroupRelationExample;
import com.yfann.web.service.OaGroupProductService;

@Service
public class OaGroupProductServicImpl implements OaGroupProductService {
	@Autowired
	private GroupProductMapper groupProductMapper;
	@Autowired
	private ProductGroupRelationMapper productGroupRelationMapper;
	@Autowired
	private ProductMapper productMapper;

	@Override
	public void addGroupProduct(GroupProduct groupProduct, String[] ids) {
		if (groupProduct != null) {
			groupProductMapper.insert(groupProduct);
		} else {
			return;
		}

		ProductGroupRelation pgr = new ProductGroupRelation();
		pgr.setGroupId(groupProduct.getGroupId());
		for (String id : ids) {
			pgr.setProductId(id);
			pgr.setId(UUIDCreate.getUUID());
			productGroupRelationMapper.insert(pgr);
		}
	}

	@Override
	public void delGroupProduct(String id) {
		groupProductMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updateGroupProduct(GroupProduct groupProduct, String[] ids) {
		if (groupProduct != null) {
			groupProductMapper.updateByPrimaryKeySelective(groupProduct);
		} else {
			return;
		}

		ProductGroupRelationExample example = new ProductGroupRelationExample();
		example.or().andGroupIdEqualTo(groupProduct.getGroupId());
		productGroupRelationMapper.deleteByExample(example);

		ProductGroupRelation pgr = new ProductGroupRelation();
		pgr.setGroupId(groupProduct.getGroupId());
		for (String id : ids) {
			pgr.setProductId(id);
			pgr.setId(UUIDCreate.getUUID());
			productGroupRelationMapper.insert(pgr);
		}
	}

	@Override
	public GroupProduct getGroupProductById(String id) {
		return groupProductMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<GroupProduct> getGroupProductAll(int offset, int limit) {
		List<GroupProduct> list = groupProductMapper.selectByExample(new GroupProductExample(),
				new RowBounds(offset, limit));
		return list;
	}

	@Override
	public Integer getGroupProductAllCount() {
		return groupProductMapper.countByExample(new GroupProductExample());
	}

	@Override
	public String[] getProductIds(String id) {
		ProductGroupRelationExample example = new ProductGroupRelationExample();
		example.or().andGroupIdEqualTo(id);
		List<ProductGroupRelation> list = productGroupRelationMapper.selectByExample(example);
		String[] s = new String[list.size()];
		for (int i = 0; i < s.length; i++) {
			s[i] = list.get(i).getProductId();
		}
		return s;
	}

	@Override
	public List<Product> getProductAll() {
		return productMapper.selectByExample(new ProductExample());
	}

}
