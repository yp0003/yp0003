package com.yfann.web.vo;

import java.io.IOException;
import java.io.Writer;
import java.util.Date;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.struts2.StrutsStatics;
import org.apache.struts2.components.Component;
import org.apache.struts2.dispatcher.StrutsRequestWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.util.ValueStack;

/**
 * 分页逻辑Bean
 * 
 */
public class Pages extends Component {
	private String pageNo;
	private String total;
	private String count;
	private String includes;
	private String pageSize;//每页显示个数
	
	public Pages(ValueStack arg0) {
		super(arg0);
	}
	
	@Override
	public boolean start(Writer writer) {

		boolean result = super.start(writer);
		StringBuilder str = new StringBuilder();
		Map<String, Object> cont = stack.getContext();
		StrutsRequestWrapper req = (StrutsRequestWrapper) cont
				.get(StrutsStatics.HTTP_REQUEST);

		String url = (String) req.getAttribute("javax.servlet.forward.request_uri");

		// 从ValueStack中取出数值
		Object obj = stack.findValue(pageNo);
		String pageNo = String.valueOf(obj);
		obj = stack.findValue(total);
		String total = String.valueOf(obj);
		obj = stack.findValue(pageSize);     
		String pageSize = String.valueOf(obj);
		Integer pagesizeInt = Integer.valueOf(pageSize); 
		
		StringBuilder perUrl = new StringBuilder("");
		if (includes != null && includes.trim().length() > 0) {
			String[] perm = includes.split(",");
			for (int i = 0; i < perm.length; i++) {
				String permName = perm[i];
			
				String obje = null;
				if (stack.findValue(permName) != null) {
					// 如果是时间需要格式化
					if (stack.findValue(permName).getClass().equals(Date.class)) {
						Date date = (Date) stack.findValue(permName);
						obje = DateFormatUtils.format(date, "yyyy-MM-dd HH:mm:ss");
					} else if(stack.findValue(permName).getClass().equals(String[].class)){
						String[] arr = (String[])stack.findValue(permName);
						if(null != arr && arr.length>0){// 拼成数字参数
							for (String strVal : arr) {
								perUrl.append("&");
								perUrl.append(permName);
								perUrl.append("=");
								perUrl.append(strVal);
							}
						}
					}else {
						obje = stack.findValue(permName).toString();
					}
				}
				
				if (StringUtils.isNotBlank(obje)) {
					perUrl.append("&");
					perUrl.append(permName);
					perUrl.append("=");
					perUrl.append(obje);
				}
			}
		}

		//用于计算的当前页整数形式
		int cpageInt = Integer.valueOf(pageNo);
		str.append("<div class='pagination'>");
		Integer totalInt = Integer.valueOf(total);

		/*str.append("<select name='pageInfo.pageSize' style='width: 50px' onchange=\"window.location.href='" + url + "?pageInfo.pageNo=" + (cpageInt > totalInt ? totalInt : cpageInt)+ "&pageInfo.pageSize=' + this.options[this.selectedIndex].value + '" + perUrl + "'\"><option value='10' " + (pagesizeInt == 10 ? "selected='selected'" : "") + ">10</option><option value='20' " + (pagesizeInt == 20 ? "selected='selected'" : "") + ">20</option><option value='30' " + (pagesizeInt == 30 ? "selected='selected'" : "") + ">30</option><option value='40' " + (pagesizeInt == 40 ? "selected='selected'" : "") + ">40</option><option value='50' " + (pagesizeInt == 50 ? "selected='selected'" : "") + ">50</option><option value='100' " + (pagesizeInt == 100 ? "selected='selected'" : "") + ">100</option></select>&nbsp;&nbsp;&nbsp;&nbsp;");*/
		// 如果只有一页，则无需分页
		//总页数
		if (totalInt == 1) {
			str.append("<li><a href='#'>1</a></li>");
		} else {

			//用户点击第几页
			// 显示上一页与第一页
			if (cpageInt == 1) {
				str.append("<li class='disabled'><a href='#'>上一页</a></li>");
				str.append("<li class='active'><a href='#'>1</a></li>");
			} else {
				str.append("<li><a href='");
				str.append(url);
				str.append("?pageInfo.pageNo=");
				str.append(cpageInt - 1);
				str.append("&pageInfo.pageSize=");
				str.append(pageSize);
				str.append(perUrl);
				str.append("'>上一页</a></li>");
				
				str.append("<li><a href='");
				str.append(url);
				str.append("?pageInfo.pageNo=1");
				str.append("&pageInfo.pageSize=");
				str.append(pageSize);
				str.append(perUrl);
				str.append("'>1</a></li>");
			}

			// 当前页超过5时第一页后面加点，因为中间相隔了第二页
			if (cpageInt - 4 > 1)
				str.append("<li><a href='#'>...</a></li>");

			// v,v1分别代表中间页数的最小值和最大值,3表示显示当前页的前后三页
			int v = (cpageInt - 3) > 1 ? (cpageInt - 3) : 2;
			int v1 = (cpageInt + 3) < totalInt ? (cpageInt + 3) : totalInt - 1;
			if (v1 == totalInt) {
				v = totalInt - 10;
			} else if (v == 1 && v1 < totalInt) {
				v1 = totalInt > 10 ? 10 : totalInt;
			}

			// 
			for (int i = v; i <= v1; i++) {
				if (cpageInt == i) { // 当前页要加粗显示
					str.append("<li class='active'><a href='#'>");
					str.append(i);
					str.append("</a></li>");
				} else {
					str.append("<li><a href='");
					str.append(url);
					str.append("?pageInfo.pageNo=");
					str.append(i);
					str.append("&pageInfo.pageSize=");
					str.append(pageSize);
					str.append(perUrl);
					str.append("'>");
					str.append(i);
					str.append("</a></li>");
				}
			}

			if (cpageInt < totalInt - 4)
				str.append("<li><a href='#'>...</a></li>");
			// 显示最后一页

			if (cpageInt != totalInt) {
				str.append("<li><a href='");
				str.append(url);
				str.append("?pageInfo.pageNo=");
				str.append(totalInt);
				str.append("&pageInfo.pageSize=");
				str.append(pageSize);
				str.append(perUrl);
				str.append("'>");
				str.append(totalInt);
				str.append("</a></li>");
			} else {
				str.append("<li class='active'><a href='#'>" + cpageInt + "</a></li>");
			}
			
			
			if (cpageInt == totalInt) {
				//TODO EWGW
				str.append("<li class='disabled'><a href='#'>下一页</a> </li>");
			} else {
				str.append("<li><a href='");
				str.append(url);
				str.append("?pageInfo.pageNo=");
				str.append(cpageInt + 1);
				str.append("&pageInfo.pageSize=");
				str.append(pageSize);
				str.append(perUrl);
				str.append("'>下一页</a></li>");
			}
		}

		//总记录数
		obj = stack.findValue(count);
		String count = String.valueOf(obj);
		Integer totalCount = Integer.valueOf(count);
		
		//b1:当前页开始数  b2:当前页结束数
		Integer b1 = 0;
		Integer b2 = 0;
		if (totalInt == 1){//如果只有一页
			b1 = 1;
			b2 = totalCount;
		} else {
			if(cpageInt == totalInt){//最后一页
				b1 = (cpageInt - 1) * pagesizeInt + 1;
				b2 = totalCount;
			}else{
				b1 = (cpageInt - 1) * pagesizeInt + 1;
				b2 = cpageInt  * pagesizeInt;
			}
		}
		
		str.append("&nbsp;&nbsp;&nbsp;&nbsp;<span class='label label-default'>显示"+b1 + "到" + b2 + "，共" + totalCount +"条记录</span>");
		str.append("</div>");

		// logger.debug("=============================\n{}", str.toString());
		try {
			writer.write(str.toString());
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
		return result;
	}
	
	public String getIncludes() {
		return includes;
	}
	public void setIncludes(String includes) {
		this.includes = includes;
	}
	public String getPageNo() {
		return pageNo;
	}
	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getPageSize() {
		return pageSize;
	}
	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}

	final Logger logger = LoggerFactory.getLogger(Pages.class);
}
