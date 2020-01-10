<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 1/10/20
  Time: 1:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">

    First name: <form:input path="firstName" />
    <br><br>

    Last name: <form:input path="lastName" />
    <br><br>

    Country:
    <form:select path="country">
        <form:options items="${countryOptions}"/>
    </form:select>
    <br><br>

    Favorite language:
    Java <form:radiobutton path="favoriteLanguage" value="Java"/>
    C# <form:radiobutton path="favoriteLanguage" value="C#"/>
    Python <form:radiobutton path="favoriteLanguage" value="Python"/>
    Haskell <form:radiobutton path="favoriteLanguage" value="Haskell"/>

    <input type="submit" value="Submit">
</form:form>
<hr>
<a href="${pageContext.request.contextPath}">Back to home page</a>
</body>
</html>
