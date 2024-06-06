<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conseil</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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

<h2>Glycemia Chart</h2>
<form method="get" action="chart">
    <label for="view">Select view type:</label>
    <select id="view" name="view">
        <option value="hourly" ${viewType == 'hourly' ? 'selected' : ''}>Hourly</option>
    </select>
    <button type="submit">Apply</button>
</form>
<canvas id="glycemiaChart" width="400" height="200"></canvas>
<script>
    const glycemiaData = [];
    const labels = [];
    <c:forEach var="glycemie" items="${listGlycemies}">
    labels.push('${glycemie.date}');
    glycemiaData.push(${glycemie.level});
    </c:forEach>

    const ctx = document.getElementById('glycemiaChart').getContext('2d');
    const glycemiaChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Glycemia Level',
                data: glycemiaData,
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderWidth: 1,
                fill: true
            }]
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
