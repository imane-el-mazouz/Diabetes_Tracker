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
    const normalData = [];
    const hypoData = [];
    const hyperData = [];
    const labels = [];
    <c:forEach var="glycemie" items="${listGlycemies}">
    labels.push('${glycemie.date}');
    <c:choose>
    <c:when test="${glycemie.level == 'NORMAL'}">
    normalData.push(${50});
    hypoData.push(null);
    hyperData.push(null);
    </c:when>
    <c:when test="${glycemie.level == 'HYPOGLYCEMIA'}">
    normalData.push(null);
    hypoData.push(${20});
    hyperData.push(null);
    </c:when>
    <c:otherwise>
    normalData.push(null);
    hypoData.push(null);
    hyperData.push(${80});
    </c:otherwise>
    </c:choose>
    </c:forEach>

        console.log(labels)
        console.log(normalData)
        console.log(hyperData)
        console.log(hypoData)

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
