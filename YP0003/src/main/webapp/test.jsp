<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table border="1" id="myTable">
		<!-- 第一行 -->
		<tr>
			<td><input type="checkbox" name="select" value="1111"></td>
			<td>1,1</td>
			<td>1,2</td>
			<td>1,3</td>
			<td>1,4</td>
		</tr>
		<!-- 第二行 -->
		<tr>
			<td><input type="checkbox" name="select" value="2222"></td>
			<td>2,1</td>
			<td>2,2</td>
			<td>2,3</td>
			<td>2,4</td>
		</tr>

		<!-- 第三行 -->
		<tr>
			<td><input type="checkbox" name="select" value="3333"></td>
			<td>3,1</td>
			<td>3,2</td>
			<td>3,3</td>
			<td>3,4</td>
		</tr>
		<!-- 第四行 -->
		<tr>
			<td><input type="checkbox" name="select" value="4444"></td>
			<td>4,1</td>
			<td>4,2</td>
			<td>4,3</td>
			<td>4,4</td>
		</tr>

	</table>

	<button id="btn" onclick="btnEvent();">dwfwwf</button>

</body>
<script type="text/javascript">
	function btnEvent() {
		var chenked = $("input[type='checkbox']:checked").val([]);
		for (var i = 0; i < chenked.length; i++) {
			var hang = $(this).parent("tr").prevAll().length;
			var lie = $(this).prevAll().length;
			hang = Number(hang) + 1;//字符串变为数字    
			lie = Number(lie) + 1;
			alert("第" + hang + "行" + "第" + lie + "列");
		}
		//alert($("#myTable tr:eq(1) td:eq(2)").html());
	}
</script>
</html>