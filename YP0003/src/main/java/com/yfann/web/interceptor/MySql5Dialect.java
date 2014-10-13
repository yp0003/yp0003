package com.yfann.web.interceptor;

public class MySql5Dialect extends Dialect{

	@Override
	public String getLimitString(String sql, int skipResults, int maxResults) {
		sql = sql.trim();
		StringBuffer pagingSelect = new StringBuffer();
		pagingSelect.append(sql).append(" limit ").append(skipResults).append(",").append(maxResults);
		return pagingSelect.toString();
	}

}
