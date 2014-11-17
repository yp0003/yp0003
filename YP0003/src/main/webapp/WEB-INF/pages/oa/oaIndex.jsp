<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>

<!-- zTREE -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/ztree/css/demo.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/ztree/css/zTreeStyle/zTreeStyle.css"
	type="text/css">
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/ztree/js/jquery-1.4.4.min.js"></script> --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ztree/js/jquery.ztree.core-3.5.js"></script>
<!--  <script type="text/javascript" src="../../../js/jquery.ztree.excheck-3.5.js"></script>
	  <script type="text/javascript" src="../../../js/jquery.ztree.exedit-3.5.js"></script>-->
<title>OA</title>
</head>
<body class="easyui-layout">
	<!-- 正上方panel -->
	<div region="north" style="height:100px;padding:10px;"
		href="http://www.baidu.com"></div>
	<!-- 正左边panel -->
	<div region="west" title="菜单栏" split="true"
		style="width:280px;padding1:1px;overflow:hidden;">

		<!-- <input type="button" onclick="addPanel()" value="fewwg" /> -->
			<ul id="treeDemo" class="ztree"></ul>
	</div>
	<!-- 正中间panel -->
	<div region="center">
		<div class="easyui-tabs" id="tt" fit="true" border="false">
			<div title="欢迎页" style="padding:20px;overflow:hidden;">
				<div style="margin-top:20px;">
					<h3>你好，欢迎来到权限管理系统</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- 正下方panel -->
	<div region="south" style="height:50px;" align="center">
		<label> 作者：王超<br />
		</label>
	</div>





	<script type="text/javascript">
		var index = 0;
		function addPanel() {
			index++;
			var url = 'http://www.baidu.com'
			$('#tt')
					.tabs(
							'add',
							{
								title : 'Tab' + index,
								content : '<iframe scrolling="auto" frameborder="0"  src="'
										+ url
										+ '" style="width:100%;height:100%;"></iframe>',
								closable : true
							});
		}
		function removePanel() {
			var tab = $('#tt').tabs('getSelected');
			if (tab) {
				var index = $('#tt').tabs('getTabIndex', tab);
				$('#tt').tabs('close', index);
			}
		}

		var setting = {
				data: {
					simpleData: {
						enable: true
					}
				}
			};

		var zNodes =[
		 			{ id:1, pId:0, name:"父节点1 - 展开", open:true},
		 			{ id:11, pId:1, name:"父节点11 - 折叠"},
		 			{ id:111, pId:11, name:"叶子节点111"},
		 			{ id:112, pId:11, name:"叶子节点112"},
		 			{ id:113, pId:11, name:"叶子节点113"},
		 			{ id:114, pId:11, name:"叶子节点114"},
		 			{ id:12, pId:1, name:"父节点12 - 折叠"},
		 			{ id:121, pId:12, name:"叶子节点121"},
		 			{ id:122, pId:12, name:"叶子节点122"},
		 			{ id:123, pId:12, name:"叶子节点123"},
		 			{ id:124, pId:12, name:"叶子节点124"},
		 			{ id:13, pId:1, name:"父节点13 - 没有子节点", isParent:true},
		 			{ id:2, pId:0, name:"父节点2 - 折叠"},
		 			{ id:21, pId:2, name:"父节点21 - 展开", open:true},
		 			{ id:211, pId:21, name:"叶子节点211"},
		 			{ id:212, pId:21, name:"叶子节点212"},
		 			{ id:213, pId:21, name:"叶子节点213"},
		 			{ id:214, pId:21, name:"叶子节点214"},
		 			{ id:22, pId:2, name:"父节点22 - 折叠"},
		 			{ id:221, pId:22, name:"叶子节点221"},
		 			{ id:222, pId:22, name:"叶子节点222"},
		 			{ id:223, pId:22, name:"叶子节点223"},
		 			{ id:224, pId:22, name:"叶子节点224"},
		 			{ id:23, pId:2, name:"父节点23 - 折叠"},
		 			{ id:231, pId:23, name:"叶子节点231"},
		 			{ id:232, pId:23, name:"叶子节点232"},
		 			{ id:233, pId:23, name:"叶子节点233"},
		 			{ id:234, pId:23, name:"叶子节点234"},
		 			{ id:3, pId:0, name:"父节点3 - 没有子节点", isParent:true}
		 		];

		$(document).ready(function() {
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
	</script>
</body>

</html>