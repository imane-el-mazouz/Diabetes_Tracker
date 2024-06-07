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
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">
    <style>

    </style>
    <title>Home page</title>
</head>
<body>
<div id="hey">
    <div class="contact-info">
        <div>📞 1234-5678-9012</div>
        <div>📧 @diabets.com</div>

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

<header id="home">
    <div class="section__container">
        <h1> Welcome to Health Lab </h1>
        <a href="" style="display: inline-block;padding: 10px 20px;background-color: blue;color: #fff;text-decoration: none;border-radius: 5px;transition: background-color 0.3s ease;">Discover More</a>
    </div>
</header>

<section id="room">
    <div class="section__container">
        <h2>Our Campus</h2>
        <p>"DiligentCampus is an advanced platform tailored to simplify student management within campus environments. It offers intuitive features enabling students to efficiently track schedules, manage courses, stay updated on campus events, and foster seamless communication with peers and faculty. With a focus on fostering diligence and organization, DiligentCampus is dedicated to empowering students towards academic excellence and enhancing their overall campus experience.</p>
                <div class="card__container">
                    <div class="card">
                        <img src="https://i.pinimg.com/564x/a9/3f/45/a93f45071cf49e828b4dafb7ab763fa2.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="">
                    </div>
                    <div class="card">
                        <img src="https://i.pinimg.com/564x/74/79/1e/74791ea71f360b1bbfaffe7109481d8d.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="">
                    </div>
                        <div class="card">
                            <img src="https://i.pinimg.com/564x/97/44/76/974476778413b6f808a8166b3754a396.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="">
                        </div>
                </div>
    </div>
</section>

<section id="news">
    <div class="section__container">
        <h2>Our Clubs</h2>
        <p>Explore the diverse range of clubs and student organizations available on campus. From academic and cultural clubs to sports and recreational groups, there's something for everyone.</p>
        <div class="card__container">
            <div class="card">
                <img src="https://images.pexels.com/photos/5467332/pexels-photo-5467332.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" style="background-size: cover;background-position: center;height: 350px;" alt="Club 1">
                <h3>Sports Club</h3>
                <button type="submit">Join Us</button>
            </div>
            <div class="card">
                <img src="https://i.pinimg.com/564x/31/1e/d4/311ed44a40b7e15bd9556dd982cce514.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="Club 2">
                <h3>Art Club</h3>
                <button type="submit">Join Us</button>
            </div>
            <div class="card">
                <img src="https://i.pinimg.com/564x/ec/9e/f0/ec9ef032af6b5b9d65e2f91e52ce9320.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="Club 3">
                <h3>Entrep Club</h3>
                <button type="submit">Join Us</button>
            </div>
        </div>

    </div>
</section>
<section id="feature">
    <div class="section__container">
        <h2>Upcoming Events </h2>
        <p>Stay updated on all the exciting events happening on campus through our comprehensive events calendar. From academic seminars to cultural festivals, there's always something happening to enrich your college experience.</p>
        <div class="card__container">
            <div class="card">
                <img src="https://i.pinimg.com/564x/85/b1/73/85b1731f45fa2041cb476239f527a645.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="Club 1">
                <button type="submit">Reserve your ticket</button>

            </div>
            <div class="card">
                <img src="https://i.pinimg.com/564x/06/30/e6/0630e63a37d7ef817f4705d1627bd89d.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="Club 1">
                <button type="submit">Reserve your ticket</button>

            </div>
            <div class="card">
                <img src="https://i.pinimg.com/564x/d5/f5/f5/d5f5f50d8e08355721216581d1cc084e.jpg" style="background-size: cover;background-position: center;height: 350px;" alt="Club 1">
                <button type="submit">Reserve your ticket</button>

            </div>
        </div>

    </div>
</section>
<!-- contact section -->
<section class="contact_section ">
    <h2>Contact Us</h2>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-5 col-md-6">
                <div class="form_container pr-0 pr-lg-5 mr-0 mr-lg-2" >

                    <form>
                        <div>
                            <input type="text" placeholder="Name" />
                        </div>
                        <div>
                            <input type="email" placeholder="Email" />
                        </div>
                        <div>
                            <input type="text" placeholder="Phone Number" />
                        </div>
                        <div>
                            <input type="text" class="message-box" placeholder="Message" />
                        </div>
                        <button type="submit" style="display: flex ; justify-content: center">send</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>



<footer>
    <div class="footer__container">
        <div class="footer__col">
            <h4>About Us</h4>
            <ul class="footer__links">
                <li><a href="#">Our Story</a></li>
                <li><a href="#">Our Services</a></li>
            </ul>
        </div>
        <div class="footer__col">
            <h4>Services</h4>
            <ul class="footer__links">
                <li><a href="#">Management service</a></li>
                <li><a href="#">Glycemies</a></li>
                <li><a href="#">Diabetes</a></li>
            </ul>
        </div>
        <div class="footer__col">
            <h4>Contact</h4>
            <ul class="footer__links">
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Location</a></li>
            </ul>
        </div>
        <div class="footer__col">
            <h4>Newsletter</h4>
            <p>Contact Us</p>
            <form action="#" class="footer__form">
                <input type="email" placeholder="Enter your email" required>
                <button type="submit"><i class="ri-send-plane-2-line"></i></button>
            </form>
        </div>
    </div>
    <div class="footer__bottom">
        <p>&copy; All Rights Reserved. © 2018 Health Lab</p>
    </div>

</footer>

</body>
</html>
