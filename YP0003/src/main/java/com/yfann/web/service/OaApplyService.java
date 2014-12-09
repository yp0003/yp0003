package com.yfann.web.service;

import java.util.List;

import com.yfann.web.pojo.ApplyMoney;
import com.yfann.web.pojo.Dic;

public interface OaApplyService {
	/**
	 * 新增申请
	 * 
	 * @param applyMoney
	 * @throws Exception
	 */
	public void saveApply(ApplyMoney applyMoney) throws Exception;

	/**
	 * 根据id删除申请
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void deleteApplyById(String id) throws Exception;

	/**
	 * 更新申请
	 * 
	 * @param applyMoney
	 * @throws Exception
	 */
	public void updateApply(ApplyMoney applyMoney) throws Exception;

	/**
	 * 根据条件获取申请
	 * 
	 * @param uid
	 *            申请者id
	 * @param applyStatus
	 *            申请状态
	 * @param payStatus
	 *            支付状态
	 * @param offset
	 *            从那一条开始
	 * @param limit
	 *            最大显示多少条
	 * @return
	 */
	public List<ApplyMoney> getApplyByField(String uid, List<String> applyStatus, List<String> payStatus,
			int offset, int limit);

	/**
	 * 根据条件获取申请数量
	 * 
	 * @param uid
	 *            申请者id
	 * @param applyStatus
	 *            申请状态
	 * @param payStatus
	 *            支付状态
	 * @return
	 */
	public int getApplyCountByField(String uid, List<String> applyStatus, List<String> payStatus);

	/**
	 * 根据ids获取申请
	 * 
	 * @param ids
	 * @return
	 */
	public List<ApplyMoney> getApplyByIds(String[] ids);

	/**
	 * 根据id获取申请
	 * 
	 * @param menuId
	 * @return
	 */
	public ApplyMoney getApplyById(String id);

	/**
	 * 根据类型获取字典
	 * 
	 * @param type
	 *            类型
	 * @return
	 */
	public List<Dic> getDicByType(String type);
}
