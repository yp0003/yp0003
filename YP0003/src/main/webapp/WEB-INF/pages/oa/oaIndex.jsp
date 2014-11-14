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
<title>OA</title>
<!-- <style>
	*{
	font-size:12px;
}
body {
    font-family:verdana,helvetica,arial,sans-serif;
    padding:20px;
    font-size:12px;
    margin:0;
}
h2 {
    font-size:18px;
    font-weight:bold;
    margin:0;
    margin-bottom:15px;
}
.demo-info{
	padding:0 0 12px 0;
}
.demo-tip{
	display:none;
}
</style> -->
</head>
    <body class="easyui-layout">  
        <!-- 正上方panel -->  
        <div region="north" style="height:100px;padding:10px;" href="http://www.baidu.com"></div>  
        <!-- 正左边panel -->  
        <div region="west" title="菜单栏" split="true" style="width:280px;padding1:1px;overflow:hidden;">
        
        <input type="button" onclick="addPanel()" value="fewwg"/>
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
            <label>  
                作者：王超<br/> 
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
	</script>
</body>

</html>