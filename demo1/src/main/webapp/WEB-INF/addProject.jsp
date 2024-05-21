<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Projects List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid d-flex flex-column justify-content-center align-items-center gap-4">
    <h1>Add Project</h1>
    <div class="container-fluid d-flex flex-column justify-content-center align-items-center gap-4">
        <h1>Add Project</h1>
        <form action="${pageContext.request.contextPath}/add" method="post">
            <label for="id">Id:</label>
            <input type="text" id="id" name="id"><br>
            <label for="nom">Name:</label>
            <input type="text" id="nom" name="nom"><br>
            <label for="description">Description:</label>
            <input type="text" id="description" name="description"><br>
            <label for="debut">Start Date:</label>
            <input type="date" id="debut" name="debut"><br>
            <label for="fin">End Date:</label>
            <input type="date" id="fin" name="fin"><br>
            <label for="budget">Budget:</label>
            <input type="number" id="budget" name="budget"><br>
            <input type="submit" value="Add project">
        </form>
        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger">${errorMessage}</div>
        </c:if>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
