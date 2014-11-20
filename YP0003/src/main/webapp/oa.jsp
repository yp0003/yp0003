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
				//index++;
				//var url = 'http://www.baidu.com'
				var title1 = $("#"+treeNode.menuId);
				if(title1==undefined|title1.lenght==0){
					$('#tt').tabs('add',{
						//title: 'Tab'+index,
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

		var zNodes =[
			{ id:1, pId:0, name:"父节点1 - 展开", open:true},
			{ id:11, pId:1, name:"父节点11 - 折叠"},
			{ id:111, pId:11, name:"叶子节点111","click":"addPanel('http://www.qt86.com/');"},
			{ id:112, pId:11, name:"叶子节点112",url:"http://www.163.com"},
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