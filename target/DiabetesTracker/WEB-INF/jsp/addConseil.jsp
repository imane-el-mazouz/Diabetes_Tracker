<%--
  Created by IntelliJ IDEA.
  User: Dell PC
  Date: 05/06/2024
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Conseil</title>
</head>
<body>
<h1>Add Conseil</h1>
<form action="${pageContext.request.contextPath}/newConseil" method="post">
    <label for="level">Level:</label>
    <select id="level" name="level">
        <option value="NORMAL">Normal</option>
        <option value="HYPOGLYCEMIA">Hypoglycemia</option>
        <option value="HYPERGLYCEMIA">Hyperglycemia</option>
    </select>
    <br>
    <label for="message">Message:</label>
    <textarea id="message" name="message"></textarea>
    <br>
    <button type="submit">Add Conseil</button>
</form>
<a href="${pageContext.request.contextPath}/conseils">Back to list</a>
</body>
</html>

