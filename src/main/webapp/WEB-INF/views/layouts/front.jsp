<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title>罗信记商城 - <sitemesh:title/></title>
	<c:set var="moduleName"><sitemesh:getProperty property="page.moduleName"/></c:set>
	<%@include file="/WEB-INF/views/include/head-front.jsp" %>
	<sitemesh:head/>
</head>
<body>
	<sitemesh:body/>
</body>
</html>