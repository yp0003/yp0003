<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU_OA</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zTreeStyle.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/jquery.ztree.core-3.5.js"></script>
</head>
<body class="easyui-layout">
<!-- 顶部 -->
<div data-options="region:'north',border:false" style="height:75px;background:#FFFFFF;padding:10px;">
	<img src="${pageContext.request.contextPath}/images/img_logo2.png"/>
	<img src="${pageContext.request.contextPath}/images/txt_oaZH.png" width="160" height="28" style="padding-bottom: 10px;padding-left: 10px" />
	<div style="display:inline;float:right;margin-top: 20px;padding-right: 10px">
		<a href="oalogin!logout.html" onclick="javascript:return p_exit()">退出</a>
	</div>
	<div style="display:inline;float:right;margin-top: 20px;padding-right: 20px"><s:property value="oaEmployee.employeeName"/>,欢迎你</div>
</div>

<!-- 左侧菜单 -->
<div data-options="region:'west',split:true,title:'菜单'" style="width:150px;padding:10px;">
	<ul id="treeDemo" class="ztree"></ul>
</div>

<!-- 右侧内容
<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
-->

<!-- 主体页面 -->
<!-- <div data-options="region:'center',title:'',tools:'#tab-tools'" id="tt" class="easyui-tabs"> -->
<!--    <div title="欢迎页" style="padding:20px;overflow:hidden;">    -->
<!--        <div style="margin-top:20px;">   -->
<!--            <h3>你好，欢迎来到权限管理系统</h3>   -->
<!--        </div>   -->
<!--    </div>   -->
<!-- </div> -->

<div id="center" region="center" border="true">
	<div id="tab-tools" style="padding-right: 10px;border-width:0px 0px 1px 0px;">
        <a href="javascript:void(0)" title="关闭全部标签页" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" onclick="removePanel()">全部关闭</a>
    </div>
	<div id="tt" class="easyui-tabs" fit="true" border="false" tools="#tab-tools">
		<div title="欢迎" " >
			<iframe frameborder="0" id="iframe_center" name="iframe_center" width="100%" height="100%" src="oalogin!welcome.html" scrolling="auto"></iframe>
		</div>
	</div>
</div>

	
<!-- 底部内容 -->
<div data-options="region:'south',border:false" style="height:50px;background:#B9FACD;padding:10px;" align="center">
365ITEDU 版权所有
</div>

</body>
</html>
	<script type="text/javascript">
		//var index = 0;
		function addPanel(event, treeId, treeNode){
			if(treeNode.pid!=0 & treeNode.pid!=null){
				//var title1 = $("#"+treeNode.menuId);
				//if(title1.length==0){
				if (!$('#tt').tabs('exists', treeNode.name+'')){
					$('#tt').tabs('add',{
						title:treeNode.name+'',
						content: '<iframe scrolling="auto" frameborder="0" id="'+treeNode.menuId+'" src="'+treeNode.url+'" style="width:100%;height:100%;overflow-x:hidden; overflow-y:hidden;" ></iframe>',
						closable: true,
						loadingMessage : '加载中...'
					});
				}else{
					$('#tt').tabs('select', treeNode.name+'');  
					var tab = $('#tt').tabs('getSelected');  
					$('#tt').tabs('update',{
						tab:tab,
						options:{
						title:treeNode.name+'',
						content: '<iframe scrolling="auto" frameborder="0" id="'+treeNode.menuId+'" src="'+treeNode.url+'" style="width:100%;height:100%;overflow-x:hidden; overflow-y:hidden;" ></iframe>',
						closable: true,
						loadingMessage : '加载中...'
						}
					});
				}
			}
		}
		function removePanel(){
			var tabs = $("#tt").tabs("tabs");
			var length = tabs.length;
			for (var i = 1; i < length; i++) {
				var onetab = tabs[1];
				var title = onetab.panel('options').title;
				$("#tt").tabs("close", title);
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
					url:"null",
					icon:"ico"
				}
			},
			async: {
				enable: true,
				url:"oalogin!getOaMenu.html",
				//autoParam:["id=menuId","pid" ,"name=n"]
			},
			callback: {
				onClick: addPanel
			}

			
		};

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, null);
		});
		
		//退出
		function p_exit() {
			if (confirm("您真的确定要退出吗？\n\n请确认！")==true){
			return true;
			}else{
			return false;
			}
		}
	</script>