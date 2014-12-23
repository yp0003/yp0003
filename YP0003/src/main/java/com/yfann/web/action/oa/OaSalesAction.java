package com.yfann.web.action.oa;

import java.io.ByteArrayInputStream;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaSales;
import com.yfann.web.pojo.OaSalesPic;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaSalesService;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaSalesAction extends CommonAction {
	private static final long serialVersionUID = -4434093708933939827L;
	
	/** 销售列表 */
	private List<OaSales> oaSaleslist;
	/** 销售图片列表 */
	private List<OaSalesPic> oaSalesPicList;

	@Autowired
	private SystemService systemService;
	@Autowired
	private OaSalesService oaSalesService;

	/** 分页 */
	private PageInfo pageInfo;
	private OaSales oaSales;
	/** Struts2下载(内存数据下载) */
	public ByteArrayInputStream byteArrayInputStream;

	/** 申请列表 */
	public String toOaSalesList() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		pageInfo.setCount(oaSalesService.getOaSalesAllCountById(emp.getId()));
		oaSaleslist = oaSalesService.getOaSalesAllById(emp.getId());
		return "oasaleslist";
	}
	
	public String toAdd(){
		return "oasalesadd";
	}
	
	public String add(){
		User user = systemService.findUserByUserId(oaSales.getUserId());
		if(user==null){
			return toOaSalesList();
		}
		oaSales.setId(UUIDCreate.getUUID());
		oaSales.setCreateTime(new Date());
		return toOaSalesList();
	}
	

	public List<OaSales> getOaSaleslist() {
		return oaSaleslist;
	}

	public void setOaSaleslist(List<OaSales> oaSaleslist) {
		this.oaSaleslist = oaSaleslist;
	}

	public List<OaSalesPic> getOaSalesPicList() {
		return oaSalesPicList;
	}

	public void setOaSalesPicList(List<OaSalesPic> oaSalesPicList) {
		this.oaSalesPicList = oaSalesPicList;
	}

	public OaSales getOaSales() {
		return oaSales;
	}

	public void setOaSales(OaSales oaSales) {
		this.oaSales = oaSales;
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

}
