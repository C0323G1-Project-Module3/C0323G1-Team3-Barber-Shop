<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/10/2023
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa thông tin Khách hàng</title>
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
    </style>
</head>
<body>
<nav class="navbar navbar-expand-xxl navbar-dark" style="background-color: #1d2434" aria-label="Seventh navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="/AccountServlet"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
    </div>
</nav>
<div class="container ">
    <form class="form text-light" method="post" action="CustomerServlet?action=edit&id=${customer.getCustomerId()}">
        <p class="text-center display-3" style="color: #d5b981">Chỉnh sửa thông tin khách hàng</p>

        <!-- Name input -->
        <div class="form-outline mb-4 ">
            <input type="text" id="name" class="form-control w-50" value="${customer.getCustomerName()}" name="name"/>
            <label class="form-label" for="name">Họ và tên</label>
        </div>
        <!-- Birthday input -->

        <div class="form-outline mb-4">
            <input type="text" id="birthday" class="form-control w-50" value="${customer.getBirthday()}"
                   name="birthDay"/>
            <label class="form-label" for="birthDay">Ngày sinh</label>
        </div>

        <!-- Phone Number input -->
        <div class="form-outline mb-4">
            <input type="text" id="phoneNumber" class="form-control w-50" value="${customer.getPhone()}"
                   name="phoneNumber"/>
            <label class="form-label" for="phoneNumber">Số điện thoại</label>
        </div>

        <!-- Gender input -->
        <div class="form-outline mb-4">
            <label>Giới tính</label>
            <select name="gender" id="gender">
                <c:if test="${customer.isGender()==true}">
                    <option value="true">Nam</option>
                    <option value="false">Nữ</option>
                </c:if>
                <c:if test="${customer.isGender()==false}">
                    <option value="false">Nữ</option>
                    <option value="true">Nam</option>
                </c:if>

            </select>
        </div>

        <!-- Address input -->
        <div class="form-outline mb-4">
            <input type="text" id="address" class="form-control w-50" value="${customer.getAddress()}" name="address"/>
            <label class="form-label" for="address">Địa chỉ</label>
        </div>

        <!-- Submit button -->
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
