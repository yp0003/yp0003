<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>365ITEDU</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/itedu.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>

<link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet" />

</head>
<body>
  <s:form action="system!updateInfo.html" id="register">
    <ul>
    <li>
    <label for="passWord">用户ID:</label>
    <s:textfield id="passWord"  name="user.userId" readonly="true"/>
    <span class="redStar">*</span>
     <s:if test="infoMessage.userIdMessage != null">
      <span class="redStar"><s:property value="infoMessage.userIdMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">昵称:</label>
    <s:textfield id="passWord"  name="user.nick" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.nickMessage != null">
      <span class="redStar"><s:property value="infoMessage.nickMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">用户名称:</label>
    <s:textfield id="passWord"  name="user.userName" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.userNameMessage != null">
      <span class="redStar"><s:property value="infoMessage.userNameMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">生日:</label>
    <s:textfield id="d121" name="birthday" readonly="true" onfocus="WdatePicker({isShowWeek:true})"/>
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">性别:</label>
    <s:radio name="user.sex" list="#{'0':'男','1':'女'}" value="0"/>
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">身份证号:</label>
    <s:textfield id="passWord"  name="user.idcardNumber" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.idcardNumberMessage != null">
      <span class="redStar"><s:property value="infoMessage.idcardNumberMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">学历:</label>
    <s:select id="passWord" list="#{0:'高中',1:'大专',2:'本科',3:'研究生',4:'博士'}" name="user.education" />
    <span class="redStar">*</span>
    </li>
    <li>
    <label for="passWord">留学国家:</label>
    <s:textfield id="passWord"  name="user.foreignCountrie" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.foreignCountrieMessage != null">
      <span class="redStar"><s:property value="infoMessage.foreignCountrieMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">毕业学校:</label>
    <s:textfield id="passWord"  name="user.graduateSchool" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.graduateSchoolMessage != null">
      <span class="redStar"><s:property value="infoMessage.graduateSchoolMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">手机:</label>
    <s:textfield id="passWord"  name="user.phoneNumber" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.phoneNumberMessage != null">
      <span class="redStar"><s:property value="infoMessage.phoneNumberMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">国家:</label>
    <s:textfield id="passWord"  name="user.countrie" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.countrieMessage != null">
      <span class="redStar"><s:property value="infoMessage.countrieMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">省市:</label>
    <s:textfield id="passWord"  name="user.provinceAndCity" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.provinceAndCityMessage != null">
      <span class="redStar"><s:property value="infoMessage.provinceAndCityMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">地址:</label>
    <s:textfield id="passWord"  name="user.address" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.addressMessage != null">
      <span class="redStar"><s:property value="infoMessage.addressMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">邮编:</label>
    <s:textfield id="passWord"  name="user.zipCode" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.zipCodeMessage != null">
      <span class="redStar"><s:property value="infoMessage.zipCodeMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">邮箱:</label>
    <s:textfield id="passWord"  name="user.email" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.emailMessage != null">
      <span class="redStar"><s:property value="infoMessage.emailMessage" /></span>
     </s:if>
    </li>
    <li>
    <label for="passWord">QQ:</label>
    <s:textfield id="passWord"  name="user.qq" />
    <span class="redStar">*</span>
     <s:if test="infoMessage.qqMessage != null">
      <span class="redStar"><s:property value="infoMessage.qqMessage" /></span>
     </s:if>
    </li>
    <li>
    <button  type="submit" value="">保存</button>
    <div class="clear"></div>
    </li>
    </ul>
  </s:form>
</body>
</html>