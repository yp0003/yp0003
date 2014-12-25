package com.yfann.web.service;

import java.math.BigDecimal;
import java.util.List;

import com.yfann.web.pojo.OaRoyalties;

public interface OaRoyaltiesService {
	/**
	 * 删除所有的提成
	 */
	public void delRoyalties();

	/**
	 * 保存提成
	 */
	public void saveRoyalties(OaRoyalties oaRoyalties);

	/**
	 * 更新最高奖励额度
	 */
	public void updateChampion(BigDecimal champion);

	/**
	 * 获取所有的提成额度
	 * 
	 * @return
	 */
	public List<OaRoyalties> getAll();

	/**
	 * 获取销售冠军提成
	 * 
	 * @return
	 */
	public BigDecimal getChampion();

	/**
	 * 根据id删除一行
	 * @param id
	 */
	public void delRoyalties(Integer id);

	/**
	 * 更新提成额度
	 * @param or
	 */
	public void updateOaRoyalties(OaRoyalties or);

}
