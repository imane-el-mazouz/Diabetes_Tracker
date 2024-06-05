<%--
  Created by IntelliJ IDEA.
  User: Dell PC
  Date: 05/06/2024
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conseil</title>
</head>
<body>
<h1>Conseil</h1>
<p>Level: ${conseil.level}</p>
<p>Message: ${conseil.message}</p>
<a href="${pageContext.request.contextPath}/glycemie">Back to list</a>
</body>
</html>
