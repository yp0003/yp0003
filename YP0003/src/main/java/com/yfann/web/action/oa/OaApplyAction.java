package com.yfann.web.action.oa;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.ApplyMoney;
import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.service.OaApplyService;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaApplyAction extends CommonAction {
	private static final long serialVersionUID = 7499940716395234852L;

	/** 申请列表 */
	private List<ApplyMoney> applylist;
	/** 批准列表 */
	private List<ApplyMoney> authorizelist;
	/** 支付列表 */
	private List<ApplyMoney> paylist;
	/** 申请 */
	private ApplyMoney applyMoney;
	/** 重要度列表 */
	private List<Dic> importanceList;
	/** 申请种别列表 */
	private List<Dic> kindList;
	/** 目标种别列表 */
	private List<Dic> tagerList;

	@Autowired
	private OaApplyService oaApplyService;
	@Autowired
	private OaEmployeeService oaEmployeeService;
	
	/** 分页 */
	private PageInfo pageInfo;
	
	private ApplyMoney apply;

	/** 申请列表 */
	public String toApplyList() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		if(null == apply)
			apply = new ApplyMoney();
		applylist = oaApplyService.getApplyByField(apply,pageInfo);
		return "applylist";
	}

	/** 批准列表 */
	public String toAuthorizeList() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		// 显示所有待申请
		List<String> applyStatus = new ArrayList<String>();
		applyStatus.add("006");
		if(null == apply)
			apply = new ApplyMoney();
		apply.setApplyStatus("006");
		applylist = oaApplyService.getApplyByField(apply,pageInfo);
		return "authorizelist";
	}

	/** 支付列表 */
	public String toPayList() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		// 显示所有申请成功和未支付的
		List<String> applyStatus = new ArrayList<String>();
		applyStatus.add("008");
		List<String> payStatus = new ArrayList<String>();
		payStatus.add("009");
		if(null == apply)
			apply = new ApplyMoney();
		apply.setApplyStatus("008");
		apply.setPayStatus("009");
		applylist = oaApplyService.getApplyByField(apply,pageInfo);
		
		return "paylist";
	}

	/** 转向申请 */
	public String toApplyAdd() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		applyMoney = new ApplyMoney();
		applyMoney.setApplyId(emp.getId());
		applyMoney.setApply(emp);
		importanceList = oaApplyService.getDicByType("DIC_IMPORTANCE");
		kindList = oaApplyService.getDicByType("DIC_KIND");
		tagerList = oaApplyService.getDicByType("DIC_TARGET");
		return "applyadd";
	}

	/** 申请 */
	public String addApply() throws Exception {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		applyMoney.setApplyId(emp.getId());
		applyMoney.setId(OaUUIDCreate.getUUID());
		applyMoney.setApplyStatus("006");
		applyMoney.setPayStatus("009");
		
		oaApplyService.saveApply(applyMoney);
		return toApplyList();
	}

	/** 取消申请 */
	public String removeApply() throws Exception {
		oaApplyService.deleteApplyById(apply.getId());
		return toApplyList();
	}
	
	/** 查看申请 */
	public String viewApply() throws Exception {
		importanceList = oaApplyService.getDicByType("DIC_IMPORTANCE");
		kindList = oaApplyService.getDicByType("DIC_KIND");
		tagerList = oaApplyService.getDicByType("DIC_TARGET");
		applyMoney = oaApplyService.getApplyById(apply.getId());
		return "applyview";
	}

	/** 转向审批 */
	public String toAuthorizeUpdate() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		applyMoney = oaApplyService.getApplyById(apply.getId());
		applyMoney.setAuthorizeUserId(emp.getId());
		applyMoney.setAuthorize(emp);
		importanceList = oaApplyService.getDicByType("DIC_IMPORTANCE");
		kindList = oaApplyService.getDicByType("DIC_KIND");
		tagerList = oaApplyService.getDicByType("DIC_TARGET");
		return "authorizeupdate";
	}

	/** 审批通过 */
	public String authorizeSuccess() throws Exception {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		applyMoney.setAuthorizeUserId(emp.getId());
		applyMoney.setApplyStatus("008");
		
		oaApplyService.updateApply(applyMoney);
		return toAuthorizeList();
	}
	
	/** 审批失败 */
	public String authorizeFail() throws Exception {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		applyMoney.setAuthorizeUserId(emp.getId());
		applyMoney.setApplyStatus("007");
		
		oaApplyService.updateApply(applyMoney);
		return toAuthorizeList();
	}

	/** 支付成功 */
	public String PaySuccess() throws Exception {
		applyMoney = oaApplyService.getApplyById(apply.getId());
		applyMoney.setPayStatus("010");
		
		oaApplyService.updateApply(applyMoney);
		return toPayList();
	}

	public List<ApplyMoney> getApplylist() {
		return applylist;
	}

	public void setApplylist(List<ApplyMoney> applylist) {
		this.applylist = applylist;
	}

	public List<ApplyMoney> getAuthorizelist() {
		return authorizelist;
	}

	public void setAuthorizelist(List<ApplyMoney> authorizelist) {
		this.authorizelist = authorizelist;
	}

	public List<ApplyMoney> getPaylist() {
		return paylist;
	}

	public void setPaylist(List<ApplyMoney> paylist) {
		this.paylist = paylist;
	}

	public ApplyMoney getApplyMoney() {
		return applyMoney;
	}

	public void setApplyMoney(ApplyMoney applyMoney) {
		this.applyMoney = applyMoney;
	}

	public List<Dic> getImportanceList() {
		return importanceList;
	}

	public void setImportanceList(List<Dic> importanceList) {
		this.importanceList = importanceList;
	}

	public List<Dic> getKindList() {
		return kindList;
	}

	public void setKindList(List<Dic> kindList) {
		this.kindList = kindList;
	}

	public List<Dic> getTagerList() {
		return tagerList;
	}

	public void setTagerList(List<Dic> tagerList) {
		this.tagerList = tagerList;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public ApplyMoney getApply() {
		return apply;
	}

	public void setApply(ApplyMoney apply) {
		this.apply = apply;
	}

}
