package com.yfann.web.action.oa;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.GroupProduct;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaSales;
import com.yfann.web.pojo.OaSalesPic;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaGroupProductService;
import com.yfann.web.service.OaSalesService;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.PageInfo;
import com.yfann.web.vo.SalesCount;

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

	@Autowired
	private OaGroupProductService oaGroupProductService;

	/** 分页 */
	private PageInfo pageInfo;
	private GroupProduct groupProduct;
	/** Struts2下载(内存数据下载) */
	public ByteArrayInputStream byteArrayInputStream;
	// 上传图片
	private File pic;
	// 上传图片文件类型
	private String picContentType;
	// 上传图片文件名称
	private String picFileName;
	// 上传图片id
	private String picid;

	/** 列表 */
	public String toList() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		pageInfo.setCount(oaGroupProductService.getGroupProductAllCount());
		groupProducts = oaGroupProductService
				.getGroupProductAll(pageInfo.getOffset(), pageInfo.getPageSize());
		return "tolist";
	}

	public String toAdd() {
		products = oaGroupProductService.getProductAll();
		return "oasalesadd";
	}

	// 检查是否是图片格式
	public static boolean checkIsImage(String imgStr) {
		boolean flag = false;
		if (imgStr != null) {
			if (imgStr.equalsIgnoreCase(".gif") || imgStr.equalsIgnoreCase(".jpg")
					|| imgStr.equalsIgnoreCase(".jpeg") || imgStr.equalsIgnoreCase(".png")) {
				flag = true;
			}
		}
		return flag;

	}

	/** 删除销售信息 */
	public String del() throws Exception {
		oaGroupProductService.delGroupProduct(request.getParameter("id"));
		return toList();
	}


	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public ByteArrayInputStream getByteArrayInputStream() {
		return byteArrayInputStream;
	}

	public void setByteArrayInputStream(ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}

	public File getPic() {
		return pic;
	}

	public void setPic(File pic) {
		this.pic = pic;
	}

	public String getPicContentType() {
		return picContentType;
	}

	public void setPicContentType(String picContentType) {
		this.picContentType = picContentType;
	}

	public String getPicFileName() {
		return picFileName;
	}

	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}

	public String getPicid() {
		return picid;
	}

	public void setPicid(String picid) {
		this.picid = picid;
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


}
