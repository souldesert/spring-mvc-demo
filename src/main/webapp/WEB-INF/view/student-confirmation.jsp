<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 1/10/20
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>

The student is confirmed: ${student.firstName} ${student.lastName}
<br>

Country: ${student.country}
<br>

Favorite language: ${student.favoriteLanguage}
<br><br>

Operating systems:

<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">
        <li>${temp}</li>
    </c:forEach>
</ul>

<hr>
<a href="${pageContext.request.contextPath}">Back to home page</a>
</body>
</html>
