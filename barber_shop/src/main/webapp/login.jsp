<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/8/2023
  Time: 12:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
        nav {
            width: 100%;
            z-index: 1;
        }

        body {
            margin: 0
        }

        .page-content {
            z-index: 0;
            width: 100%;
            margin: 0 auto;
            display: flex;
            display: -webkit-flex;
            justify-content: center;
            -o-justify-content: center;
            -ms-justify-content: center;
            -moz-justify-content: center;
            -webkit-justify-content: center;
            align-items: center;
            -o-align-items: center;
            -ms-align-items: center;
            -moz-align-items: center;
            -webkit-align-items: center
        }

        .form-v8-content {
            z-index: 0;
            background: #d3ceb8;
            width: 1024px;
            height: 680px;
            border-radius: 16px;
            -o-border-radius: 8px;
            -ms-border-radius: 8px;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
            -o-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
            -ms-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
            -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
            -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
            margin: 120px 0;
            font-family: source sans pro, sans-serif;
            color: #425d54;
            position: relative;
            display: flex;
            display: -webkit-flex;
        }

        .form-v8-content .form-left {
            border-radius: 8px;
            margin-bottom: 0px;
            background-image: url("login.png");
            width: 100%;
            background-size: 100% 100%;
        }

        .form-v8-content .form-right {
            z-index: 0;
            padding: 30px 0;
            position: relative;
            width: 100%;
            border-top-right-radius: 8px;
            border-bottom-right-radius: 8px;
            color: #425d54;
        }

        .form-v8-content .tab {
            z-index: 5;
            margin: 5px 0 48px;
            width: 100%;
            display: flex;
            display: -webkit-flex;
            justify-content: space-between;
            -o-justify-content: space-between;
            -ms-justify-content: space-between;
            -moz-justify-content: space-between;
            -webkit-justify-content: space-between
        }

        .form-v8-content .tab .tab-inner {
            z-index: 5;
            width: 100%
        }

        .form-v8-content .tab .tablinks {
            z-index: 0;
            background: 0 0;
            border: none;
            outline: none;
            -o-outline: none;
            -ms-outline: none;
            -moz-outline: none;
            -webkit-outline: none;
            font-family: source sans pro, sans-serif;
            font-size: 24px;
            font-weight: 400;
            color: #425d54;
            padding-bottom: 22px;
            border-bottom: 3px solid;
            border-bottom-color: rgba(255, 255, 255, .2);
            width: 100%
        }

        .form-v8-content .tab .tablinks.active {
            z-index: 5;
            font-weight: 700;
            color: #fff;
            border-bottom-color: #425d54;
        }

        .form-v8-content .form-detail {
            padding: 0 40px
        }

        .form-v8-content .form-row {
            width: 100%;
            position: relative
        }

        .form-v8-content .form-row .form-row-inner {
            position: relative;
            width: 100%
        }

        .form-v8-content .form-row .form-row-inner .label {
            position: absolute;
            top: -2px;
            left: 10px;
            font-size: 18px;
            color: #425d54;
            font-weight: 400;
            transform-origin: 0 0;
            transition: all .2s ease;
            -moz-transition: all .2s ease;
            -webkit-transition: all .2s ease;
            -o-transition: all .2s ease;
            -ms-transition: all .2s ease
        }

        .form-v8-content .form-row .form-row-inner .border {
            position: absolute;
            bottom: 31px;
            left: 0;
            height: 1px;
            width: 100%;
            background: #53c83c;
            transform: scaleX(0);
            -moz-transform: scaleX(0);
            -webkit-transform: scaleX(0);
            -o-transform: scaleX(0);
            -ms-transform: scaleX(0);
            transform-origin: 0 0;
            transition: all .15s ease;
            -moz-transition: all .15s ease;
            -webkit-transition: all .15s ease;
            -o-transition: all .15s ease;
            -ms-transition: all .15s ease
        }

        .form-v8-content .form-detail .input-text {
            margin-bottom: 31px
        }

        .form-v8-content .form-detail input {
            width: 100%;
            padding: 0 10px 15px;
            border: 1px solid transparent;
            border-bottom: 1px solid;
            border-bottom-color: rgba(255, 255, 255, .2);
            background: 0 0;
            appearance: unset;
            -moz-appearance: unset;
            -webkit-appearance: unset;
            -o-appearance: unset;
            -ms-appearance: unset;
            outline: none;
            -moz-outline: none;
            -webkit-outline: none;
            -o-outline: none;
            -ms-outline: none;
            font-size: 18px;
            color: #425d54;
            font-weight: 300;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -o-box-sizing: border-box;
            -ms-box-sizing: border-box
        }

        .form-v8-content .form-detail .form-row .input-text:focus {
            border-bottom: 1px solid #425d54;
            background: 0 0;
        }

        .form-v8-content .form-detail .form-row .input-text:focus + .label, .form-v8-content .form-detail .form-row .input-text:valid + .label {
            transform: translateY(-26px) scale(1);
            -moz-transform: translateY(-26px) scale(1);
            -webkit-transform: translateY(-26px) scale(1);
            -o-transform: translateY(-26px) scale(1);
            -ms-transform: translateY(-26px) scale(1)
        }

        .form-v8-content .form-detail .form-row .input-text:focus + .border, .form-v8-content .form-detail .form-row .input-text:valid + .border {
            transform: scaleX(1);
            -moz-transform: scaleX(1);
            -webkit-transform: scaleX(1);
            -o-transform: scaleX(1);
            -ms-transform: scaleX(1)
        }

        .form-v8-content .form-detail .register {
            background: #fff;
            border-radius: 5px;
            -o-border-radius: 5px;
            -ms-border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            width: 160px;
            border: none;
            margin: 5px 0 50px 0;
            cursor: pointer;
            font-family: source sans pro, sans-serif;
            color: #333;
            font-weight: 700;
            font-size: 18px
        }

        .form-v8-content .form-detail .register:hover {
            background: #ccc
        }

        .form-v8-content .form-detail .form-row-last input {
            padding: 11px
        }

        @media screen and (max-width: 991px) {
            .form-v8-content {
                margin: 180px 20px;
                flex-direction: column;
                -o-flex-direction: column;
                -ms-flex-direction: column;
                -moz-flex-direction: column;
                -webkit-flex-direction: column
            }

            .form-v8-content .form-left {
                width: 100%
            }

            .form-v8-content .form-left img {
                width: 100%;
                border-bottom-left-radius: 0;
                border-top-right-radius: 8px
            }

            .form-v8-content .form-right {
                width: auto;
                border-top-right-radius: 0;
                border-bottom-left-radius: 8px
            }

            .form-v8-content .tab {
                margin-top: 45px
            }

            .form-v8-content .form-detail .register {
                margin-bottom: 80px
            }
        }

        @media screen and (max-width: 325px) {
            .form-v8-content .tab {
                flex-direction: column;
                -o-flex-direction: column;
                -ms-flex-direction: column;
                -moz-flex-direction: column;
                -webkit-flex-direction: column
            }
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #1d2434">
    <!-- Container wrapper -->
    <div class="container">
        <!-- Navbar brand -->

        <!-- Toggle button -->
        <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarButtonsExample"
                aria-controls="navbarButtonsExample"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarButtonsExample">
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item display-5">
                    <a class="nav-link" href="home.jsp" style="color: #d5b981">BARBER X</a>
                </li>
            </ul>
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</nav>
<div class="page-content">
    <%--    <form action="/AccountServlet?action=login" method="post">--%>
    <!-- Email input -->
    <div class="form-v8-content">
        <div class="form-left">
        </div>
        <div class="form-right">
            <div class="tab">
                <div class="tab-inner">
                    <button class="tablinks active" onclick="openCity(event,'sign-up')" id="defaultOpen">
                        Đăng ký
                    </button>
                </div>
                <div class="tab-inner">
                    <button class="tablinks active" onclick="openCity(event,'sign-in')">
                        Đăng nhập
                    </button>
                </div>
            </div>
            <form class="form-detail" action="CustomerServlet/action=create" method="post">
                <div class="tabcontent" id="sign-up" style="display:none;">
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="text" name="username" id="username" class="input-text" required>
                            <span class="label">Tên tài khoản:</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="password" name="password" id="password" class="input-text" required>
                            <span class="label">Mật khẩu :</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="text" name="gender" id="gender" class="input-text" required>
                            <span class="label">Chọn giới tính :</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="text" name="birthday" id="birthday" class="input-text" required>
                            <span class="label">Chọn ngày sinh :</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="text" name="phone" id="phone" class="input-text" required>
                            <span class="label">Điện thoại:</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="text" name="address" id="address" class="input-text" required>
                            <span class="label">Địa chỉ :</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <div class="form-row-last">
                        <input type="submit" name="register" class="register" value="Đăng kí">
                    </div>
                </div>
            </form>
            <form class="form-detail" action="AccountServlet?action=login" method="post">
                <div class="tabcontent" id="sign-in" style="display:block;">
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="text" name="username" id="username2" class="input-text" required>
                            <span class="label">Tên tài khoản:</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <div class="form-row">
                        <label class="form-row-inner">
                            <input type="text" name="password" id="password2" class="input-text" required>
                            <span class="label">Mật khẩu :</span>
                            <span class="border"></span>
                        </label>
                    </div>
                    <c:if test="${msg != null}">
                        <span class="text-danger">${msg}</span>
                    </c:if>
                    <div class="form-row-last">
                        <input type="submit" name="register" class="register" value="Đăng nhập">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="footer pt-5 position-absolute w-100" style="background-color: #1d2434;color: #d5b981;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7">
                <div class="row">
                    <div class="col-md-6">
                        <div class="footer-contact">
                            <h2>Địa chỉ Barber</h2>
                            <p><i class="fa fa-map-marker-alt"></i>280 Trần Hưng Đạo, Sơn Trà, Đà Nẵng</p>
                            <p><i class="fa fa-phone-alt"></i>0123456789</p>
                            <p><i class="fa fa-envelope"></i>cuongplastic@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
            </div>
        </div>
    </div>
</div>
<script src="/bootstrap520/js/bootstrap.bundle.js"></script>
<script>
    function openCity(evt, cityName) {
        let i;
        let tabcontent;
        let tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();


    <%@ include file="footer.jsp" %>

    <script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
