<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 09/05/2024
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <!--
      - custom css link
    -->
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
    <title>Home page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
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

        .section-title h2 {
            font-size: 32px;
            font-weight: 600;
            text-transform: capitalize;
            margin-bottom: 24px;
            position: relative;
            color: blue;
        }

    </style>
</head>
<body>
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
<section class="slider">
    <div class="hero-slider">
        <div class="single-slider" style="background-image:url('https://www.ctvnews.ca/content/dam/ctvnews/en/images/2019/6/26/doctor-medical-stock-1-4484029-1674495685224.jpg'); height: 60vh;margin-top: -70px">
        </div>
    </div>
</section>
<!-- End Breadcrumbs -->

<!-- Start Contact Us -->
<section class="contact-us section">
    <div class="container">
        <div class="inner">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-us-left">
                        <div id="myMap" style="background-image:url('https://blog.pascal-martin.fr/public/google-maps/4/carte-ex6-zoom-loin-metro.png');background-size: cover ; background-position: center"></div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-us-form">
                        <h2>Contact With Us</h2>
                        <p>If you have any questions please fell free to contact with us.</p>
                        <!-- Form -->
                            <form class="form">
                                <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" name="name" placeholder="Name" required="">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="email" name="email" placeholder="Email" required="">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" name="phone" placeholder="Phone" required="">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" name="subject" placeholder="Subject" required="">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <textarea name="message" placeholder="Your Message" required=""></textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group login-btn">
                                        <button class="btn" type="submit">Send</button>
                                    </div>
                                    <div class="checkbox">
                                        <label class="checkbox-inline" for="2"><input name="news" id="2" type="checkbox">Do you want to subscribe our Newsletter ?</label>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!--/ End Form -->
                    </div>
                </div>
            </div>
        </div>
        <div class="contact-info">
            <div class="row">
                <!-- single-info -->
                <div class="col-lg-4 col-12 ">
                    <div class="single-info">
                        <i class="icofont icofont-ui-call"></i>
                        <div class="content">
                            <h3>+(000) 1234 56789</h3>
                            <p>health@diabets.com</p>
                        </div>
                    </div>
                </div>
                <!--/End single-info -->
                <!-- single-info -->
                <div class="col-lg-4 col-12 ">
                    <div class="single-info">
                        <i class="icofont-google-map"></i>
                        <div class="content">
                            <h3>hyuhy</h3>
                            <p>hyu,huooop</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12 ">
                    <div class="single-info">
                        <i class="icofont icofont-wall-clock"></i>
                        <div class="content">
                            <h3>Mon - Sun </h3>
                            <p>Always with you !</p>
                        </div>
                    </div>
                </div>
                <!--/End single-info -->
            </div>
        </div>
    </div>
</section>
<footer id="footer" class="footer ">
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
                        <p>Monday - Sunday </p>
                        <ul class="time-sidual">
                            <li class="day">24/24h></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="single-footer">
                        <h2>Newsletter</h2>
                        <p>subscribe to our newsletter to get all our news in your inbox.</p>
                        <form action="#Home"target="_blank" class="newsletter-inner">
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
<!-- Footer Area -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/JS/script.js"></script>
<script>
    <%@include file="/JS/script.js"%>
</script>
</body>
</html>