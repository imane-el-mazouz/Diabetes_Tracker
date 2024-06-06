<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<h2>Recommended Medications</h2>
<ul>
    <c:forEach var="medicament" items="${medicaments}">
        <li>${medicament.name}: ${medicament.description}</li>
    </c:forEach>
</ul>

<a href="${pageContext.request.contextPath}/glycemie">Back to list</a>
</body>
</html>
