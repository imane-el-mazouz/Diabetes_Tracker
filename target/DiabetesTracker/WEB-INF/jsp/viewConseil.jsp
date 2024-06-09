<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conseil</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 20px;
        }
        h1, h2 {
            color: #343a40;
        }
        .glycemia-chart-container {
            margin-top: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center">Conseil</h1>
    <div class="card mt-4">
        <div class="card-body">
            <p><strong>Level:</strong> ${conseil.level}</p>
            <p><strong>Message:</strong> ${conseil.message}</p>
        </div>
    </div>

    <h2 class="mt-5">Recommended Medications</h2>
    <ul class="list-group">
        <c:forEach var="medicament" items="${medicaments}">
            <li class="list-group-item">${medicament.name}: ${medicament.description}</li>
        </c:forEach>
    </ul>

    <a href="${pageContext.request.contextPath}/glycemie" class="btn btn-custom mt-3">Back to list</a>

    <div class="glycemia-chart-container">
        <h2>Glycemia Chart</h2>
        <form method="get" action="chart" class="form-inline mb-3">
            <label for="view" class="mr-2">Select view type:</label>
            <select id="view" name="view" class="form-control mr-2">
                <option value="hourly" ${viewType == 'hourly' ? 'selected' : ''}>Hourly</option>
            </select>
            <button type="submit" class="btn btn-custom">Apply</button>
        </form>
        <canvas id="glycemiaChart" width="400" height="200"></canvas>
    </div>
</div>

<script>
    const normalData = [];
    const hypoData = [];
    const hyperData = [];
    const labels = [];
    <c:forEach var="glycemie" items="${listGlycemies}">
    labels.push('${glycemie.date}');
    <c:choose>
    <c:when test="${glycemie.level == 'NORMAL'}">
    normalData.push(50);
    hypoData.push(null);
    hyperData.push(null);
    </c:when>
    <c:when test="${glycemie.level == 'HYPOGLYCEMIA'}">
    normalData.push(null);
    hypoData.push(20);
    hyperData.push(null);
    </c:when>
    <c:otherwise>
    normalData.push(null);
    hypoData.push(null);
    hyperData.push(80);
    </c:otherwise>
    </c:choose>
    </c:forEach>

    const ctx = document.getElementById('glycemiaChart').getContext('2d');
    const glycemiaChart = new Chart(ctx, {
        data: {
            labels: labels,
            datasets: [
                {
                    type: 'bar',
                    label: 'Normal',
                    data: normalData,
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                },
                {
                    type: 'bar',
                    label: 'Hypoglycemia',
                    data: hypoData,
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1
                },
                {
                    type: 'bar',
                    label: 'Hyperglycemia',
                    data: hyperData,
                    backgroundColor: 'rgba(255, 159, 64, 0.2)',
                    borderColor: 'rgba(255, 159, 64, 1)',
                    borderWidth: 1
                }
            ]
        },
        options: {
            scales: {
                x: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Date'
                    }
                },
                y: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Glycemia Level'
                    },
                    beginAtZero: true
                }
            },
            responsive: true,
            plugins: {
                legend: {
                    display: true,
                    position: 'top'
                }
            }
        }
    });
</script>
</body>
</html>
