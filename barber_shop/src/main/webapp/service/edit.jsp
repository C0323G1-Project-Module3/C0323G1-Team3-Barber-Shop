<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/6/2023
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
        .nav-item a {
            color: #d5b981;
        }

        body {
            background-image: url("/background.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }
        h1,h3{
            color: #d5b981;
        }
        a{
            text-decoration: none;
        }
        h3:hover{
            border: 2px solid #d5b981;
            background-color: #555555;
        }
        button:hover {
            background-color: #d5b981; /* Màu nền khi di chuột qua */
            color: #1d2434; /* Màu chữ khi di chuột qua */
            border: 2px solid #1d2434; /* Đường viền khi di chuột qua */
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2); /* Hiệu ứng bóng đổ */
        }

        button {
            cursor: pointer; /* Con trỏ chuột thành hình bàn tay */
            transition-duration: 0.4s; /* Thời gian chuyển đổi */
            margin-top: 10px;
            margin-left: 20px;
            border-radius: 4px;
            color: #d5b981;
            background-color: #1d2434;
        }
        #button{
            margin-left: 80px;
        }

    </style>
</head>
<body>
<nav class="navbar navbar-expand-xxl navbar-dark" style="background-color: #1d2434" aria-label="Seventh navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="/AccountServlet"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
        <a class="navbar-brand" href="/AccountServlet?action=admin"><h3 style="color: #d5b981">Danh sách</h3></a>
    </div>
</nav>
<button id="button" onclick="history.back()">Quay lại</button>
<div class="container">
    <form class="form text-light" method="post" action="/ServiceServlet?action=edit&id=${service.getServiceId()}">
        <p class="text-center display-3" style="color: #d5b981">Chỉnh sửa thông tin dịch vụ</p>
        <div class="form-outline mb-4 ">
            <input type="text" id="name" class="form-control w-50" value="${service.getServiceName()}" name="name"/>
            <label class="form-label" for="name">Tên dịch vụ</label>
        </div>
        <div class="form-outline mb-4">
            <input type="number" id="price" class="form-control w-50" value="${service.getPrice()}"
                   name="price"/>
            <label class="form-label" for="price">Giá dịch vụ</label>
        </div>
        <button type="submit" class="btn btn-dark btn-block mb-3">Cập Nhật</button>
    </form>
</div>
<div class="footer pt-5" style="background-color: #1d2434;color: #d5b981;bottom: auto">
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
