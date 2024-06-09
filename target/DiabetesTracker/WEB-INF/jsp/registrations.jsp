<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <style><%@include file="/CSS/style.css"%></style>
    <link rel="stylesheet" href="./CSS/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
    <style>

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

        .container-fluid {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            margin: 20px auto auto;
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
    <title>Home page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
<div id="hey">
<div class="contact-info">
    <div>📞 1234-5678-9012</div>
    <div>📧 Health@diabets.com</div>

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
            <li ><a href="${pageContext.request.contextPath}/about">About</a></li>
            <li ><a href="${pageContext.request.contextPath}/glycemie">Glycemies</a></li>
            <li><a  href="${pageContext.request.contextPath}/new">New Glycemie</a></li>
            <li><a  href="${pageContext.request.contextPath}/contact">Contact</a></li>
        </ul>
    </div>
</nav>
<div class="container-fluid">
    <h1 style="    margin-top: 41px;
    margin-bottom: 4.5rem;
    font-weight: 500;
    line-height: 1.2;
    color: black;margin-left: 20%">List of recorded blood glucose readings.</h1>

    <div class="row">
        <c:forEach var="glycemie" items="${listGlycemies}">
            <div class="col-lg-4 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">ID: ${glycemie.id}</h5>
                        <p class="card-text">Date: ${glycemie.date}</p>
                        <p class="card-text">Level: ${glycemie.level}</p>
                        <a href="${pageContext.request.contextPath}/delete/${glycemie.id}"onclick="return confirm('Are you sure you want to delete this project?')" class="btn">Delete</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="text-center mt-4">
        <a href="${pageContext.request.contextPath}/new" onclick="return confirm('Are you sure you want to delete this project?')"class="btn btn-primary">Add New Glycemie</a>
    </div>
</div>
<footer id="footer" class="footer" style="background-color: white">
    <!-- Footer Top -->
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="single-footer">
                        <h2>About Us</h2>
                        <p>Web application to help you track your diabetes</p>
                        <!-- Social -->
                        <ul class="social">
                            <li><a href="#"><i class="icofont-facebook"></i></a></li>
                            <li><a href="#"><i class="icofont-google-plus"></i></a></li>
                            <li><a href="#"><i class="icofont-twitter"></i></a></li>
                            <li><a href="#"><i class="icofont-vimeo"></i></a></li>
                            <li><a href="#"><i class="icofont-pinterest"></i></a></li>
                        </ul>
                        <!-- End Social -->
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="single-footer f-link">
                        <h2>Quick Links</h2>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <ul>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Home</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>About Us</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Services</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Our Cases</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Other Links</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <ul>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Consulting</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Finance</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Testimonials</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>FAQ</a></li>
                                    <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="single-footer">
                        <h2>Open Hours</h2>
                        <p>Lorem ipsum dolor sit ame consectetur adipisicing elit do eiusmod tempor incididunt.</p>
                        <ul class="time-sidual">
                            <li class="day">24/24h></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="single-footer">
                        <h2>Newsletter</h2>
                        <p>subscribe to our newsletter to get all our news in your inbox.</p>
                        <form action=""target="_blank" class="newsletter-inner">
                            <input name="EMAIL" placeholder="Your email address" class="common-input" onfocus="this.placeholder = ''"
                                   onblur="this.placeholder = 'Your email address'" required="" type="email">
                            <button class="btn">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Footer Top -->
    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="copyright-content">
                        <p>© Copyright 2024 | All Rights Reserved </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Copyright -->
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
