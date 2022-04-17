<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Role(s): <security:authentication property="principal.username" />
	Role(s): <security:authentication property="principal.authorities" />
	<form:form method="post" action="logout">
		<input type="submit" value="Log out"/>
	</form:form>
	<security:authorize access="hasRole('MANAGER')">
		<a href="${pageContext.request.contextPath}/manager">Manager page</a>
		<br/>
	</security:authorize>
	<security:authorize access="hasRole('ADMIN')">
		<a href="${pageContext.request.contextPath}/admin">Admin page</a>
		<br/>
	</security:authorize>
	
	${pageContext.request.contextPath}
</body>
</html>