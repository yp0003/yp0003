<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zTreeStyle.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/jquery.ztree.core-3.5.js"></script>
</head>
	<script type="text/javascript">
		//var index = 0;
		function addPanel(event, treeId, treeNode){
			if(treeNode.pid!=0 & treeNode.pid!=null){
				var title1 = $("#"+treeNode.menuId);
				if(title1.length==0){
					$('#tt').tabs('add',{
						title:treeNode.name+'',
						content: '<iframe scrolling="auto" frameborder="0" id="'+treeNode.menuId+'" src="'+treeNode.url+'" style="width:100%;height:100%;" ></iframe>',
						closable: true
					});
				}
			}
		}
		function removePanel(){
			var tab = $('#tt').tabs('getSelected');
			if (tab){
				var index = $('#tt').tabs('getTabIndex', tab);
				$('#tt').tabs('close', index);
			}
		}
		var setting = {
			data: {
				simpleData: {
					enable: true,
					idKey: "menuId",
					pIdKey: "pid"
				},
				key:{
					url:"null"
				}
			},
			async: {
				enable: true,
				url:"login!getOaMenu.html",
				//autoParam:["id=menuId","pid" ,"name=n"]
			},
			callback: {
				onClick: addPanel
			}

			
		};

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, null);
		});
		
	</script>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">顶部文字</div>
	<div data-options="region:'west',split:true,title:'West'" style="width:200px;padding:10px;">
	<!-- <input type="button" onclick="addPanel('http://www.baidu.com')" value="按钮"/> -->
	<ul id="treeDemo" class="ztree"></ul>
	</div>
	<!--
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	-->
	<div data-options="region:'center',title:'',tools:'#tab-tools'" id="tt" class="easyui-tabs"></div>
</body>
</html>