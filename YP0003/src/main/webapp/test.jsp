<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<!-- 第一行 -->
		<tr>
			<td><input type="checkbox" name="select1"></td>
			<td>1,1</td>
			<td>1,2</td>
			<td>1,3</td>
			<td>1,4</td>
		</tr>
		<!-- 第二行 -->
		<tr>
			<td><input type="checkbox" name="select"></td>
			<td>2,1</td>
			<td>2,2</td>
			<td>2,3</td>
			<td>2,4</td>
		</tr>

		<!-- 第三行 -->
		<tr>
			<td><input type="checkbox" name="select"></td>
			<td>3,1</td>
			<td>3,2</td>
			<td>3,3</td>
			<td>3,4</td>
		</tr>
		<!-- 第四行 -->
		<tr>
			<td><input type="checkbox" name="select"></td>
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
		var aa = $("input:checked");
		alert(aa);
	}
</script>
</html>