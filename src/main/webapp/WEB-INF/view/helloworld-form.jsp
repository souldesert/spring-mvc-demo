<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 06.01.2020
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World - input form</title>
</head>
<body>
<form action="processFormVersionThree" method="GET">
    <input type="text" name="studentName" placeholder="What's your name?"/>
    <input type="submit"/>
</form>
<hr>
<a href="${pageContext.request.contextPath}">Back to home page</a>
</body>
</html>
