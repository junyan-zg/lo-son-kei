<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title>罗信记商城 - <sitemesh:title/></title>
	<c:set var="moduleName"><sitemesh:getProperty property="page.moduleName"/></c:set>
	<c:set var="nav"><sitemesh:getProperty property="page.nav"/></c:set>
	<%@include file="/WEB-INF/views/include/head-front.jsp" %>
	<sitemesh:head/>
</head>
<body>
	<%@include file="/WEB-INF/views/include/front-header.jsp" %>
	<sitemesh:body/>
	<%@include file="/WEB-INF/views/include/front-footer.jsp" %>
</body>
</html>