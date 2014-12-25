package com.yfann.web.action.oa;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.pojo.OaRoyalties;
import com.yfann.web.service.OaRoyaltiesService;

/**
 * 提成管理
 * 
 */
public class OaRoyaltiesAction extends CommonAction {
	private static final long serialVersionUID = 9099095902118189597L;

	/** 提成比例 */
	private List<OaRoyalties> list;
	/** 销售冠军奖励比例 */
	private BigDecimal champion;
	@Autowired
	private OaRoyaltiesService oaRoyaltiesService;
	Integer[] upper;
	Integer[] lower;
	BigDecimal[] scale;

	public String toUpdate() {
		list = oaRoyaltiesService.getAll();
		champion = oaRoyaltiesService.getChampion();
		return "to";
	}

	// 修改
	public String update() {
		// 修改销售冠军提成
		oaRoyaltiesService.updateChampion(champion);
		list = oaRoyaltiesService.getAll();
		OaRoyalties or = new OaRoyalties();
		for (int i = 0; i < list.size(); i++) {
			// 校验销售档位是否符合逻辑
			if (i > 0 && upper[i - 1] > upper[i]) {
				if (lower[i - 1] > lower[i]) {
					return "input";
				}
			}
			// 修改销售档位
			or = list.get(i);
			if (i == 0) {
				// 修改第一档
				or.setUpperLimit(upper[0]);
				or.setScale(scale[0]);
				oaRoyaltiesService.updateOaRoyalties(or);
			} else if (i == list.size() - 1) {
				// 修改最高档
				or.setLowerLimit(lower[list.size() - 2]);
				or.setScale(scale[list.size() - 1]);
				oaRoyaltiesService.updateOaRoyalties(or);
			} else {
				or.setUpperLimit(upper[i]);
				or.setLowerLimit(lower[i - 1]);
				or.setScale(scale[i]);
				oaRoyaltiesService.updateOaRoyalties(or);
			}
		}

		return toUpdate();
	}

	// 增加一档
	public String add() {
		list = oaRoyaltiesService.getAll();

		// 增加倒数第二高档，并且上限比前一挡+1
		OaRoyalties or = list.get(list.size() - 2);
		OaRoyalties temp = new OaRoyalties();
		temp.setId(or.getId() + 1);
		temp.setScale(new BigDecimal(10));
		temp.setLowerLimit(or.getUpperLimit());
		temp.setUpperLimit(or.getUpperLimit() + 1);
		oaRoyaltiesService.saveRoyalties(temp);

		// 修改最高档的下限
		or = list.get(list.size() - 1);
		or.setLowerLimit(temp.getUpperLimit());
		oaRoyaltiesService.updateOaRoyalties(or);

		return toUpdate();
	}

	// 删除一档
	public String reduce() {
		list = oaRoyaltiesService.getAll();
		// 最高档下限等于倒数第二档的上限
		OaRoyalties maxor = list.get(list.size() - 1);
		maxor.setLowerLimit(list.get(list.size() - 3).getUpperLimit());
		oaRoyaltiesService.updateOaRoyalties(maxor);
		// 删除倒数第二档
		OaRoyalties or = list.get(list.size() - 2);
		oaRoyaltiesService.delRoyalties(or.getId());

		return toUpdate();
	}

	public List<OaRoyalties> getList() {
		return list;
	}

	public void setList(List<OaRoyalties> list) {
		this.list = list;
	}

	public BigDecimal getChampion() {
		return champion;
	}

	public void setChampion(BigDecimal champion) {
		this.champion = champion;
	}

	public Integer[] getUpper() {
		return upper;
	}

	public void setUpper(Integer[] upper) {
		this.upper = upper;
	}

	public Integer[] getLower() {
		return lower;
	}

	public void setLower(Integer[] lower) {
		this.lower = lower;
	}

	public BigDecimal[] getScale() {
		return scale;
	}

	public void setScale(BigDecimal[] scale) {
		this.scale = scale;
	}

}
