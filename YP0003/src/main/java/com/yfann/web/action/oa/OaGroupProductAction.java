package com.yfann.web.action.oa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.GroupProduct;
import com.yfann.web.pojo.Product;
import com.yfann.web.service.OaGroupProductService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaGroupProductAction extends CommonAction {
	private static final long serialVersionUID = -7519573504160565563L;

	/** 产品组合列表 */
	private List<GroupProduct> groupProducts;
	/** 产品列表 */
	private List<Product> products;
	/** 产品组合 */
	private GroupProduct groupProduct;
	/** 产品列表 */
	private String[] ids ;

	@Autowired
	private OaGroupProductService oaGroupProductService;

	/** 分页 */
	private PageInfo pageInfo;

	/** 列表显示 */
	public String toList() {
		pageInfo.setCount(oaGroupProductService.getGroupProductAllCount());
		groupProducts = oaGroupProductService
				.getGroupProductAll(pageInfo.getOffset(), pageInfo.getPageSize());
		return "tolist";
	}

	/** 转向增加页面 */
	public String toAdd() {
		products = oaGroupProductService.getProductAll();
		ids = new String[]{};
		return "add";
	}

	/** 增加产品组合 */
	public String add(){
		groupProduct.setId(UUIDCreate.getUUID());
		groupProduct.setGroupId(UUIDCreate.getUUID());
		oaGroupProductService.addGroupProduct(groupProduct, ids);
		return toList();
	}
	
	/** 转向修改页面 */
	public String toUpdate(){
		products = oaGroupProductService.getProductAll();
		String id = request.getParameter("id");
		groupProduct = oaGroupProductService.getGroupProductById(id);
		ids = oaGroupProductService.getProductIds(id);
		return "update";
	}
	
	/** 修改产品组合 */
	public String update(){
		oaGroupProductService.updateGroupProduct(groupProduct, ids);
		return toList();
	}

	/** 删除销售信息 */
	public String del() throws Exception {
		oaGroupProductService.delGroupProduct(request.getParameter("id"));
		return toList();
	}

	public List<GroupProduct> getGroupProducts() {
		return groupProducts;
	}

	public void setGroupProducts(List<GroupProduct> groupProducts) {
		this.groupProducts = groupProducts;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public GroupProduct getGroupProduct() {
		return groupProduct;
	}

	public void setGroupProduct(GroupProduct groupProduct) {
		this.groupProduct = groupProduct;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String[] getIds() {
		return ids;
	}

	public void setIds(String[] ids) {
		this.ids = ids;
	}

}
