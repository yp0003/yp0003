package com.yfann.web.vo;

import java.math.BigDecimal;

public class SalesCount {
	private String empid;
	private BigDecimal total;
	private BigDecimal money;

	public String getEmpid() {
		return empid;
	}

	public void setEmpid(String empid) {
		this.empid = empid;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public BigDecimal getMoney() {
		return money;
	}

	public void setMoney(BigDecimal money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "SalesCount [empid=" + empid + ", total=" + total + ", money=" + money + "]";
	}

}
