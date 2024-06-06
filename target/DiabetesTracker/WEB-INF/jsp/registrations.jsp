<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 04/06/2024
  Time: 09:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet">
    <!-- CSS -->

    <style><%@include file="/CSS/style.css"%></style>
    <link rel="stylesheet" href="./CSS/style.css">

</head>
<body>
<header></header>
<div class="container-fluid container-fluid-two d-flex flex-column justify-content-centre align-items-center gap-4">

    <h1>list of recorded blood glucose readings with their details.</h1>

    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Date</th>
            <th>Level</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="glycemie" items="${listGlycemies}">
            <tr>
                <td>${glycemie.id}</td>
                <td>${glycemie.date}</td>
                <td>${glycemie.level}</td>

                <td>
                    <button><a href="${pageContext.request.contextPath}/delete/${glycemie.id}">Delete</a></button>
                </td>
            </tr>

        </c:forEach>
        </tbody>

    </table>
    <button><a href="${pageContext.request.contextPath}/new">Add</a> </button>

</div>
</body>
</html>
