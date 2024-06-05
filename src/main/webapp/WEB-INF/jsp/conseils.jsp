<%--
  Created by IntelliJ IDEA.
  User: Dell PC
  Date: 05/06/2024
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conseils</title>
</head>
<body>
<h1>Conseils</h1>
<table>
    <thead>
    <tr>
        <th>Level</th>
        <th>Message</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="conseil" items="${listConseils}">
        <tr>
            <td>${conseil.level}</td>
            <td>${conseil.message}</td>
            <td><a href="${pageContext.request.contextPath}/deleteConseil/${conseil.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="${pageContext.request.contextPath}/newConseil">Add New Conseil</a>
</body>
</html>
