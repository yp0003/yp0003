<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>

<link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet" />

</head>
<body>
  <s:form action="oaEmp!update.html" id="register">
    <ul>
    <li>
    <label for="passWord">用户ID:</label>
    <s:textfield id="passWord"  name="oaEmployee.employeeId" readonly="true"/>
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">昵称:</label>
    <s:textfield id="passWord"  name="oaEmployee.nick" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">用户名称:</label>
    <s:textfield id="passWord"  name="oaEmployee.employeeName" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">部门:</label>
	<s:select list="departmentList" listKey="id" listValue="departName" name="oaEmployee.departId"/></td>
    </li>
    <li>
    <label for="passWord">生日:</label>
    <s:textfield id="d121" name="birthday" readonly="true" onfocus="WdatePicker({isShowWeek:true})"/>
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">性别:</label>
    <s:radio name="oaEmployee.sex" list="#{'0':'男','1':'女'}" value="0"/>
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">身份证号:</label>
    <s:textfield id="passWord"  name="oaEmployee.idcardNumber" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.idcardNumberMessage != null">
      <span class="redStar"><s:property value="infoMessage.idcardNumberMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">学历:</label>
    <s:select id="passWord" list="#{0:'高中',1:'大专',2:'本科',3:'研究生',4:'博士'}" name="oaEmployee.education" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">留学国家:</label>
    <s:textfield id="passWord"  name="oaEmployee.foreignCountrie" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">毕业学校:</label>
    <s:textfield id="passWord"  name="oaEmployee.graduateSchool" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">手机:</label>
    <s:textfield id="passWord"  name="oaEmployee.phoneNumber" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">国家:</label>
    <s:textfield id="passWord"  name="oaEmployee.countrie" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">省市:</label>
    <s:textfield id="passWord"  name="oaEmployee.provinceAndCity" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">地址:</label>
    <s:textfield id="passWord"  name="oaEmployee.address" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">邮编:</label>
    <s:textfield id="passWord"  name="oaEmployee.zipCode" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">邮箱:</label>
    <s:textfield id="passWord"  name="oaEmployee.email" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">QQ:</label>
    <s:textfield id="passWord"  name="oaEmployee.qq" />
    <span class="redStar">*</span>
    </li>
    <li>
    <s:hidden name="oaEmployee.id"></s:hidden>
    <button type="submit" value="">保存</button>
    <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
    </li>
    </ul>
  </s:form>
</body>
</html>