<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 1/10/20
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<hr>
<a href="${pageContext.request.contextPath}">Back to home page</a>
</body>
</html>
