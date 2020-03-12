<%--
  Created by IntelliJ IDEA.
  User: Mercury
  Date: 14.02.2020
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Home</title>
</head>
<hr>
<h2>Welcome to the app</h2>
<br>
<hr>
<p>
    User: <security:authentication property="principal.username" />
    <br>
    Role (s): <security:authentication property="principal.authorities" />
</p>
<hr>
<security:authorize access="hasRole('MANAGER')">
<br>
<p>
    <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
</p>
<hr>
<br>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
<hr>
<p>
    <a href="${pageContext.request.contextPath}/system">Leadership Meeting</a>
</p>
<hr>
</security:authorize>
<br>
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>
