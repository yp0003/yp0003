<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
</head>
<body>
<%@ include file="common/common.jsp" %>
	<div id="main" class="mt49">
	<div class="container1200" id="course_intro">
	<div class="cidnav">
		<ul>
			<li><span class="orther">3.付款</span></li>
			<li><span>></span></li>	
			<li><span class="orther">2.确认订单信息</span></li>
			<li><span>></span></li>
			<li><span class="cidcolor">1.我的购物车</span></li>
		</ul>
	</div>
		<div class="title">我的购物车</div>
		<div style='margin-bottom: 50px;'>
			<table class="table table-bordered table-striped table-hover">
				<thead>
					<tr>
						<!-- <th><input type="checkbox" name="" class="check-g" /></th> -->
						<th>商品</th>
						<th>商品信息</th>
						<th>单价</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="ids[]" /></td>
						<td><img alt=""
							src="${pageContext.request.contextPath}/image/53e4ba4c0001f2d206000338-590-330.jpg" width="100" /></td>
						<td>PHP工程师</td>
						<td>200</td>
						<td class="num"><span class="jian" pic="200">&nbsp;</span><label
							class="num-z"> 1 </label><span class="jia" pic="200">&nbsp;</span></td>
						<td class="pic">200</td>
						<td><a href="#">删除</a></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ids[]" /></td>
						<td><img alt=""
							src="${pageContext.request.contextPath}/image/53e4ba4c0001f2d206000338-590-330.jpg" width="100" /></td>
						<td>PHP工程师</td>
						<td>200</td>
						<td class="num"><span class="jian" pic="200">&nbsp;</span><label
							class="num-z"> 1 </label><span class="jia" pic="200">&nbsp;</span></td>
						<td class="pic">200</td>
						<td><a href="#">删除</a></td>
					</tr>





                <s:iterator value="buyCarList" id="bcl">
                    <tr>
                        <td><input type="checkbox" name="ids[]" /></td>
                        <td><img alt=""
                                 src="${pageContext.request.contextPath}/image/53e4ba4c0001f2d206000338-590-330.jpg" width="100" /></td>
                        <td><s:property value="#bcl.productName"></s:property>课程名称</td>
                        <td><s:property value="#bcl.productName"></s:property>购买数量</td>
                        <td class="num"><span class="jian" pic="200">&nbsp;</span><label
                                class="num-z"> 1 </label><span class="jia" pic="200">&nbsp;</span></td>
                        <td class="pic">200</td>
                        <td><a href="#">删除</a></td>
                    </tr>
                </s:iterator>
				</tbody>
			</table>
		</div>
		<div class="statistics fn-clear">
			<div class="fn-left qx">
				<input type="checkbox" name="" class="check-g" /> 全选
				&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">清除购物车 </a>
			</div>
			<div class="fn-right">
				共计<span class="red-1"> 0 </span>件商品合计（不含运费）<label class="red-1">￥<span>20</span></label>&nbsp;&nbsp;&nbsp;
				<a href="order.html"><button class="btn">结算</button></a>
				<a href="list.html"><button class="btn">继续购物</button></a>
			</div>
		</div>

		<div class="tab">
			<div class="title">
				<ul class="fn-clear tab-ul">
					<li class="def tab-s" n="1">今日特价</li>
					<li class="tab-s" n="2">我的关注</li>
					<li class="tab-s" n="3">猜你喜欢</li>
					<li class="tab-s" n="4">最近浏览</li>
				</ul>
			</div>
			<div class="tj_1 sp fn-clear">
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/53ec5a590001d85606000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/53ec5a590001d85606000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/53ec5a590001d85606000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/53ec5a590001d85606000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/53ec5a590001d85606000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
			</div>
			<div class="tj_2 sp fn-clear">
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/54125edc0001ce6306000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/54125edc0001ce6306000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/54125edc0001ce6306000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/54125edc0001ce6306000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/54125edc0001ce6306000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
			</div>
			<div class="tj_3 sp fn-clear">
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/542376b20001374c06000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/542376b20001374c06000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/542376b20001374c06000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/542376b20001374c06000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/542376b20001374c06000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
			</div>
			<div class="tj_4 sp fn-clear">
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/541943720001c89206000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/541943720001c89206000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/541943720001c89206000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/541943720001c89206000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/image/541943720001c89206000338-590-330.jpg" />
					</dt>
					<dd>java 眼中的 XML</dd>
					<dd>
						价格：<span class="red-1">￥20</span>
					</dd>
				</dl>
			</div>
		</div>

	</div>

</div>
</body>

</html>