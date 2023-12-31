
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/8/2023
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Barber X - Barber Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free Website Template" name="keywords">
    <meta content="Free Website Template" name="description">
    <!--    bootstrap5.0-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap"
          rel="stylesheet">

    <!-- CSS Libraries -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="login_signin.css">
    <style>
        .col-md-4 {
            display: inline-block;
            margin-left: -10px;
        }

        .col-md-4 img {
            width: 100%;
            height: auto;
        }

        body .carousel-control-prev-icon,
        body .carousel-indicators li,
        body .carousel-control-next-icon {
            background-color: #000;
        }

        span.carousel-control-prev-icon {
            position: relative;
            bottom: 40px;
            right: 40px;
        }

        span.carousel-control-next-icon {
            position: relative;
            bottom: 40px;
        }

        button {
            background: transparent;
            color: whitesmoke;
            outline: none;
            border: none;
        }

    </style>


</head>

<body>

<!-- Nav Bar Start -->
<div class="navbar navbar-expand-lg bg-dark navbar-dark" style="top: 0">
    <div class="container-fluid">
        <a href="index.html" class="navbar-brand text-dark">Barber <span>X</span></a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-between " id="navbarCollapse">
            <div class="navbar-nav ml-auto ">

                <a href="#" class="nav-item nav-link active">Trang chủ</a>
                <c:if test="${sessionScope.account == null}">
                    <a href="/AccountServlet?action=showFormLogin" class="nav-item nav-link">Đăng nhập</a>
                    <a href="/CustomerServlet?action=create" class="nav-item nav-link">Đăng kí</a>
                </c:if>
                <c:if test="${sessionScope.account.roleId == 1}">
                    <a href="/BookingServlet?action=showAddBooking&id=${sessionScope.account.getAccountId()}" class="nav-item nav-link">Booking</a>
                    <a href="/BookingServlet?action=showHistoryBooking&id=${sessionScope.account.getAccountId()}" class="nav-item nav-link">Lịch sử booking</a>
                </c:if>
                <c:if test="${sessionScope.account.roleId == 3 ||  sessionScope.account.roleId == 2}">
                    <a href="/BookingServlet?action=showBookingEmp" class="nav-item nav-link">Danh sách booking</a>
                </c:if>
                <c:if test="${sessionScope.account.roleId==3}">
                    <a href="/AccountServlet?action=admin" class="nav-item nav-link">Admin</a>
                </c:if>
                <c:if test="${sessionScope.account != null}">
                    <a href="/AccountServlet?action=logout" class="nav-item nav-link">Đăng Xuất</a>
                </c:if>
            </div>
        </div>
    </div>
</div>
<!-- Nav Bar End -->
<!--login start-->

<!-- Hero Start -->
<div class="hero">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <div class="hero-text">
                    <h1>Barber Shop Cường Nhựa</h1>
                    <p>
                        Đánh thức vẻ đẹp trong con người của bạn
                    </p>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 d-none d-md-block">
                <div class="hero-image">
                    <img src="anh_bia.jpg " alt="Hero Image">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero End -->

<!-- About Start -->
<div class="about">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 col-md-6">
                <div class="about-img">
                    <img src="anh2.jpg" alt="Image">
                </div>
            </div>
            <div class="col-lg-7 col-md-6">
                <div class="section-header text-left">
                    <p>Learn About Us</p>
                    <h2>3 Tháng Kinh nghiệm</h2>
                </div>
                <div class="about-text">
                    <p>
                        Tự hào với thâm niên kinh nghiệm gần 3 tháng kinh nghiệm nhìn và học. Nhiều năm kinh nghiệm đi
                        hớt tóc dạo.
                        Chúng tôi tự tin có thể đem lại cho bạn sự phục vụ tốt nhất và những quả đầu khét khèn khẹt nhất
                        trung tâm.
                        Hãy đến với chúng tôi Barber Shop Cường nhựa, nơi bạn được là những thượng đế thực thụ...
                    </p>
                    <p>
                        ------------------------------------------
                    </p>
                    <a class="btn" href="">Tìm hiểu thêm</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->


<!-- Service Start -->
<div class="service" id="favourite" style="background-color: #1d2434">
    <div class="container">
        <div class="section-header text-center">
            <p>Dịch vụ của chúng tôi</p>
            <h2 class="text-white">Những dịch vụ được yêu thích nhất tại Barber</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="service-item" style="height: 40%;">
                    <div class="service-img">
                        <img src="hair_cut.jpg" alt="Image">
                    </div>
                    <h3 class="text-white">Cắt tóc</h3>
                    <p>
                        Với thâm niên 3 tháng cắt tóc cộng thêm đội ngũ chuyên gia từ nước ngoài, dịch vụ cắt tóc luôn là dịch vụ được yêu thích nhất barber
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item" style="height: 40%">
                    <div class="service-img">
                        <img src="beard.jpg" alt="Image">
                    </div>
                    <h3 class="text-white">Cạo râu</h3>
                    <p>
                        Với sự xuất hiện của chuyên gia Thành Râu, chúng tôi khẳng định luôn đem lại cho bạn vẻ bề ngoài sáng bóng, sạch sâu và cảm giác thõa mái nhất trong thời gian sử dụng dịch vụ.
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item" style="height: 40%">
                    <div class="service-img">
                        <img src="service3.jpg" alt="Image">
                    </div>
                    <h3 class="text-white">Nhuộm và gội</h3>
                    <p>
                        Chỉ một từ có thể diển tả là "Cháy", cháy hơn cả mặt trời miền Trung.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->


<!-- Pricing Start -->
<div class="price" id="price">
    <div class="container">
        <div class="section-header text-center">
            <p>Dịch vụ luôn ưu đãi nhất</p>
            <h2>Tự hào với mức giá rẻ nhất trong tầm</h2>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="price-item">
                    <div class="price-img">
                        <img src="price-1.jpg" alt="Image">
                    </div>
                    <div class="price-text">
                        <h2>Cắt tóc</h2>
                        <h3>100k</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="price-item">
                    <div class="price-img">
                        <img src="price-2.jpg" alt="Image">
                    </div>
                    <div class="price-text">
                        <h2>Massage <br> đầu</h2>
                        <h3>50k</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="price-item">
                    <div class="price-img">
                        <img src="hair_color%20(2).jpg" alt="Image">
                    </div>
                    <div class="price-text">
                        <h2>Nhuộm tóc</h2>
                        <h3>500k</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="price-item">
                    <div class="price-img">
                        <img src="shave2.jpg" alt="Image">
                    </div>
                    <div class="price-text">
                        <h2>Cạo mặt & <br> cạo râu</h2>
                        <h3>30k</h3>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- Pricing End -->


<!-- Team Start -->
<div class="team" id="barber" style="background-color: #1d2434">
    <div class="container">
        <div class="section-header text-center">
            <p>Các thành viên trong team Barber Cường Nhựa</p>
            <h2 class="text-white">Những gương mặt xuất sắc nhất Barber</h2>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="thanh%20(2).jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Thành Râu</h2>
                        <p>Nhân viên cạo râu</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="quan.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Quân Seven</h2>
                        <p>Thợ cắt tóc</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="cuong.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Cường Nhựa</h2>
                        <p>Chủ Barber</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="duy.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Duy Gates</h2>
                        <p>Thợ nhuộm</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Team End -->
<!-- Service Start -->
<div class="container" id="gallery">

    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators mb-0 pb-0">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner no-padding my-5">
            <div class="carousel-item active">
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="undercut1.0.png">
                    <p class="text-dark" style="text-align: center">Undercut</p>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="undercut_longhair_1.0.png">
                    <p class="text-dark" style="text-align: center">Undercut Asymmetrical</p>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="sidepart73.1.0.png">
                    <p class="text-dark" style="text-align: center">Side part 7/3</p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="mullet1.0.png">
                    <p class="text-dark" style="text-align: center">Mullet</p>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="My%20project-1%20(1).png">
                    <p class="text-dark" style="text-align: center">Curly Hair</p>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="mohican1.0.png">
                    <p class="text-dark" style="text-align: center">Mohican</p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="faux_hawk2.png">
                    <p class="text-dark" style="text-align: center">Faux Hawk</p>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="beck_sidepart.png">
                    <p class="text-dark" style="text-align: center">Undercut Sidepart</p>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 slider_info align-top">
                    <img class="img-fluid card-img-top" src="slickback.jpg22.png">
                    <p class="text-dark" style="text-align: center">Slick-Back</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon sp"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon sp"></span>
        </a>
    </div>
</div>
<!-- service End -->

<!-- Footer Start -->
<div class="footer" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="row">
                    <div class="col-md-6">
                        <div class="footer-contact">
                            <h2>Địa chỉ Barber</h2>
                            <p><i class="fa fa-map-marker-alt"></i>280 Trần Hưng Đạo, Sơn Trà, Đà Nẵng</p>
                            <p><i class="fa fa-phone-alt"></i>0123456789</p>
                            <p><i class="fa fa-envelope"></i>cuongplastic@gmail.com</p>
                            <div class="footer-social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-youtube"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="footer-newsletter">
                    <h2>Vấn đề</h2>
                    <p>
                       Nếu có vấn đề gì trong lúc sử dụng dịch vụ quý khách có thể liên hệ với chúng tôi để giải quyết vấn đề,
                       mọi thông tin liên hệ ở bên góc trái màn hình. Cảm ơn quý khách đã sử dụng dịch vụ.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer End -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/isotope/isotope.pkgd.min.js"></script>
<script src="lib/lightbox/js/lightbox.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
<!--  login-->
<script src="login_signin.js"></script>
</body>
</html>
