<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conseil</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            background-color: white;
            font-family: 'Poppins', sans-serif;
            font-weight: 400;
            font-size:14px;
        }
        #hey {
            background-color: blue;
            padding: 10px 0;
            text-align: center;
            color: white;
        }

        .container {
            margin-top: 20px;
        }
        h1, h2 {
            font-size: 32px;font-weight: 600;text-transform: capitalize;margin-bottom: 24px;color: blue;

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

        .nav {
            position: fixed;
            width: 100%;
            z-index: 1000;
            background-color: #fff;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .nav__bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            max-width: 1200px;
            margin: 0 auto;
            background-color: white;
        }

        .logo {
            display: flex;
            align-items: center;
            font-weight: 700;
        }

        .logo div {
            background-color: #ffcb0f ;
            color: #fff;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 10px;
            font-size: 24px;
        }

        .nav__links {
            display: flex;
            list-style: none;
            color: black;

        }

        .nav__links li {
            margin-right: 20px;
            color: black;
        }

        .nav__links li a {
            text-decoration: none;
            color: blue;
            transition: color 0.3s ease;
        }

        .nav__links li a:hover {
            color: white ;
        }

        .section-title h2 {
            font-size: 32px;
            font-weight: 600;
            text-transform: capitalize;
            margin-bottom: 24px;
            position: relative;
            color: blue;
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        /* contact 2 */

        @keyframes titleAnimation {
            0% {
                color: #555;
            }
            100% {
                color: #333;
            }
        }
        #hey {
            background-color: blue;
            padding: 10px 0;
            text-align: center;
            color: white;
        }

        .contact-info {
            display: flex;
            justify-content: space-around;
            align-items: center;
            transition: background-color 0.3s ease;
        }
        .contact-info div {
            flex: 1;
        }

        .social-icons a {
            margin-left: 10px;
            color: #000;
            text-decoration: none;
            transition: background-color 0.3s ease;

        }

        #home .section__container {
            animation: fadeInUp 0.5s ease forwards;
        }





        .btn {
            display: inline-block;
            background-color: blue;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .welcome-image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }

        section {
            padding: 80px 0;
            text-align: center;
        }

        .section__container {
            max-width: 800px;
            margin: 0 auto;
        }

        .section__container h2 {
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 20px;
            color: #333;
        }

        .section__container p {
            font-size: 18px;
            line-height: 1.6;
            color: #666;
        }
        .why-choose-us {
            text-align: center;
            padding: 50px 20px;
            background-color: white;
        }

        .why-choose-us h2 {
            font-size: 32px;
            font-weight: 600;
            text-transform: capitalize;
            margin-bottom: 24px;
            position: relative;
            color: blue;

        }

        .why-choose-us .description {
            font-size: 16px;
            color: #666;
            max-width: 800px;
            margin: 0 auto 40px;
        }

        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 40px;
        }

        .feature {
            text-align: center;
            max-width: 250px;
        }

        .feature .icon {
            width: 221px;
            height: 212px;
            border-radius: 50%;
            background: radial-gradient(circle, blue, blue);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
        }

        .feature .icon img {
            width: 101px;
            height: 99px;
        }

        .feature h3 {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .feature p {
            font-size: 14px;
            color: #666;
        }


        /* Our serfvices */
        .our-services {
            text-align: center;
            padding: 50px 20px;
        }

        .our-services h2 {
            font-size: 36px;
            color: #ffc400;
            margin-bottom: 40px;
        }


        .service-card img {
            width: 100%;
            border-radius: 10px;
        }

        .service-card h3 {
            font-size: 20px;
            color: #333;
            margin: 20px 0 10px;
        }

        .service-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
        }



        .services h2, .history h2, .team h2 {
            font-size: 36px;
            margin-bottom: 20px;
            color:#ffcb0f ;
            background-color: #f9f9f9;
        }

        .service-cards .card1, .team-cards .card1{
            background: #ffcb0f;
            border-radius: 10px;
            padding: 20px;
            margin: 10px;
            flex: 1;
            max-width: 28%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .service-cards .card h3, .team-cards .card h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .service-cards .card1 img {
            width: 375px;
            border-radius: 5px;
            margin-bottom: 10px;
            height: 266px;
        }



        .service-card img {
            width: 100%;
            height: auto;
        }


        .service-info h3 {
            margin-top: 0;
        }

        .service-info p {
            margin-bottom: 0;
        }



        .reviewer-info img {
            border-radius: 50%;
            width: 116px;
            height: 110px;
            transition: transform 0.3s;
            margin-left:100px;
        }

        .review-card:hover .reviewer-info img {
            transform: rotate(360deg);
        }


        button {
            background-color: blue;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            width: 150px;
            margin-top: 10px;
        }

        button:hover {
            background-color: white ;
        }

        .nav {
            position: fixed;
            width: 100%;
            z-index: 1000;
            background-color: #fff;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .nav__bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            max-width: 1200px;
            margin: 0 auto;
            background-color: white;
        }

        .logo {
            display: flex;
            align-items: center;
            font-weight: 700;
        }

        .logo div {
            background-color: #ffcb0f ;
            color: #fff;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 10px;
            font-size: 24px;
        }

        .nav__links {
            display: flex;
            list-style: none;
            color: black;

        }

        .nav__links li {
            margin-right: 20px;
            color: black;
        }

        .nav__links li a {
            text-decoration: none;
            color: blue;
            transition: color 0.3s ease;
        }

        .nav__links li a:hover {
            color: white ;
        }


        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            margin-bottom: 20px;
        }

        .card:hover {
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.1);
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .card-text {
            font-size: 16px;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        a {
            text-decoration: none;
            color: inherit;
        }
    </style>

</head>
<div id="hey">
    <div class="contact-info">
        <div>📞 1234-5678-9012</div>
        <div>📧 Health@diabets.com</div>
        <div>🕒 Mon - Sun </div>
    </div>
</div>
<nav>
    <div class="nav__bar">
        <div class="nav__header">
            <div class="logo nav__logo">
                <img src="https://i.pinimg.com/564x/25/dc/47/25dc4724f96ecead1872f71ec2b4c57d.jpg" alt="ConstructionExpert Logo" style="max-width: 160px; height: 56px;">
            </div>
        </div>
        <ul class="nav__links" id="nav-links">
            <li ><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li ><a href="#">About</a></li>
            <li ><a href="${pageContext.request.contextPath}/glycemie">Glycemies</a></li>
            <li><a  href="${pageContext.request.contextPath}/new">New Glycemie</a></li>
            <li><a  href="${pageContext.request.contextPath}/contact">Contact</a></li>
        </ul>
    </div>
</nav>
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
