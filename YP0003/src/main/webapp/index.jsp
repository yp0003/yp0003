<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%-- <%
String userI18nLanguage = RequestUtil.getUserI18LanguageName(request);
request.getSession().setAttribute(FrameworkConst.USER_I18N_LOCALE_KEY, userI18nLanguage);
response.sendRedirect("struts-global/welcome.do");
%> --%>

The project started success!!
<a href="${pageContext.request.contextPath}/sys/system!forwardLogin.html">登录</a>
</br>
<a href="${pageContext.request.contextPath}/sys/system!forwardRegister.html">注册</a>