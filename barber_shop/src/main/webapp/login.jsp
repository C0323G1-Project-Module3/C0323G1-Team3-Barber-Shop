
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
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
        .nav-item a {
            color: #d5b981;
        }

        body {
            background-image: url(background.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-xxl navbar-dark" style="background-color: #1d2434" aria-label="Seventh navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="/AccountServlet"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
    </div>
</nav>

<div class="container m-5">
    <form action="/AccountServlet?action=login" method="post" class="text-light ">
        <!-- Email input -->
        <div class="form-outline mb-4 w-50">
            <input type="text" name="username" id="form2Example1" class="form-control"/>
            <label class="form-label" for="form2Example1">Tên Đăng Nhập</label>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4 w-50">
            <input type="password" name="password" id="form2Example2" class="form-control"/>
            <label class="form-label" for="form2Example2">Mật Khẩu</label>
        </div>
        <c:if test="${msg != null}">
            <span class="text-danger">${msg}</span>
        </c:if>
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4 d-flex justify-content-center">Sign in</button>

        <!-- Register buttons -->
        <div class="float-start">
            <p>Nếu không phải là thành viên <a href="register.jsp">Đăng kí</a></p>
        </div>
    </form>
</div>



<div class="footer pt-5" style="background-color: #1d2434;color: #d5b981">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
