<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 1/10/20
  Time: 5:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer Registration form</title>
    <style>
        .error {color: red}
    </style>
</head>
<body>

<i>Fill out the form. Asterisk (*) means required.</i>

<form:form action="processForm" modelAttribute="customer">

    First name: <form:input path="firstName" />
    <br><br>

    Last name (*): <form:input path="lastName" />
    <form:errors path="lastName" cssClass="error" />
    <br><br>

    Free passes: <form:input path="freePasses" />
    <form:errors path="freePasses" cssClass="error" />
    <br><br>

    <input type="submit" value="Submit" />

</form:form>
<hr>
<a href="${pageContext.request.contextPath}">Back to home page</a>
</body>
</html>
