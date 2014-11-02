<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<table id="stupidtable" width="100%" align="center"
					class="table table-bordered">
					<caption>购物车列表</caption>
					<thead>
						<tr>
							<th>
								<div class="checkbox">
									<label> <input type="checkbox" id="allSelect">全选
									</label>
								</div>
							</th>
							<th>产品名称</th>
							<th>产品价格</th>
							<th>产品打折</th>
							<th>购买数量</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="buyCarList" id="bcList" status="status">
							<tr onmouseover="this.bgColor='#EAF2FF'"
								onmouseout="this.bgColor='#FFFFFF'" align="center">
								<th>
									<div class="checkbox">
										<input type="checkbox" />
									</div>
								</th>
						</s:iterator>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="14"><s:if test="ddzflist.size > 0">
									<div>
										<s:submit value="结算"></s:submit>
									</div>
								</s:if></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#allSelect").bind("click", function() {
				var flag = $('#allSelect').is(':checked');
				if(!flag){
			    $("[name='checkbox']").attr("checked",'true');//全选
				} else {
					$("[name='checkbox']").attr("checked",'flase');//全不选
				}
			});
		});
	</script>
</body>

</html>