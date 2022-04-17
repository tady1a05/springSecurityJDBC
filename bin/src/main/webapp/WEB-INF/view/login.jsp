<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${param.error != null}">
		Your user name or password is invalid.
	</c:if>
	<form:form method="post" action="authenticate">
		user name:
		<input type="text" name="username"/>
		password:
		<input type="password" name="password"/>
		<input type="submit" value="submit"/>
	</form:form>
</body>
</html>