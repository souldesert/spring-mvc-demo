<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 1/10/20
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Confirmation</title>
</head>
<body>
The customer is confirmed: ${customer.firstName} ${customer.lastName}
<br>
Free passes: ${customer.freePasses}
<hr>
<a href="${pageContext.request.contextPath}">Back to home page</a>
</body>
</html>
