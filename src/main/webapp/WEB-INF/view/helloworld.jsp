<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 06.01.2020
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
Hello World of Spring
<br><br>
Student name: ${param.studentName}
<br><br>
The message: ${message}
<hr>
<a href="${pageContext.request.contextPath}">Back to home page</a>
</body>
</html>
