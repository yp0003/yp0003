package com.yfann.web.action.oa;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.pojo.MyProduct;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.service.OaMyProductService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaMyProductAction extends CommonAction {
	private static final long serialVersionUID = 6894728340010945592L;

	/** 列表 */
	private List<MyProduct> list;
	private MyProduct myProduct;
	/** 分页组件 */
	private PageInfo pageInfo;

	@Autowired
	private OaMyProductService oaMyProductService;
	

	public String toList() {
		pageInfo.setCount(oaMyProductService.getAllMyProductCount());
		list = oaMyProductService.getAllMyProduct(pageInfo.getOffset(), pageInfo.getPageSize());
		return "tolist";
	}

	public String toUpdate() {
		myProduct = oaMyProductService.getMyProductById(request.getParameter("id"));
		return "update";
	}

	public String update() throws Exception {
		String id = ((OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION)).getId();
		myProduct.setAccreditUser(id);
		MyProduct m = new MyProduct();
		m.setId(myProduct.getId());
		m.setAccreditUser(id);
		m.setPlayerCode(myProduct.getPlayerCode());
		m.setAccreditStatus("1");
		m.setAccreditTime(new Date());
		oaMyProductService.updateMyProduct(m);
		return toList();
	}

	public List<MyProduct> getList() {
		return list;
	}

	public void setList(List<MyProduct> list) {
		this.list = list;
	}

	public MyProduct getMyProduct() {
		return myProduct;
	}

	public void setMyProduct(MyProduct myProduct) {
		this.myProduct = myProduct;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

}
