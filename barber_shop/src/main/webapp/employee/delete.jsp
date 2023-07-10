<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 7/9/2023
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Xóa Nhân viên</title>
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
    <form class="form text-light" method="post" action="/EmployeeServlet?action=delete&id=${employee.getEmployeeId()}">
        <p class="text-center display-3" style="color: #d5b981">Thông tin nhân viên cần xóa</p>

        <!-- Name input -->
        <div class="form-outline mb-4 ">
            <label type="text" id="name" class="form-control w-50" name="name">${employee.getEmployeeName()}</label>
            <label class="form-label" for="name">Họ và tên</label>
        </div>

        <!-- Birthday input -->
        <div class="form-outline mb-4">
            <label type="text" id="birthDay" class="form-control w-50" name="birthDay">${employee.getBirthDay()}</label>
            <label class="form-label" for="birthDay">Ngày sinh</label>
        </div>

        <!-- Salary input -->
        <div class="form-outline mb-4">
            <label type="number" id="salary" class="form-control w-50" name="salary">${employee.getSalary()}</label>
            <label class="form-label" for="salary">Lương</label>
        </div>

        <!-- Phone Number input -->
        <div class="form-outline mb-4">
            <label type="text" id="phoneNumber" class="form-control w-50" name="phoneNumber">${employee.getPhoneNumber()}</label>
            <label class="form-label" for="phoneNumber">Số điện thoại</label>
        </div>

        <!-- Gender input -->
        <div class="form-outline mb-4">
            <label type="text" id="gender" class="form-control w-50" name="gender">
                <c:if test="${employee.isGender()==true}">
                    Nam
                </c:if>
                <c:if test="${employee.isGender()==false}">
                    Nữ
                </c:if>
            </label>
            <label class="form-label" for="gender">Giới tính</label>

        </div>


        <!-- ID Card input -->
        <div class="form-outline mb-4">
            <label type="text" id="idCard" class="form-control w-50" name="idCard">${employee.getIdCard()}</label>
            <label class="form-label" for="idCard">Số CMND/CCCD</label>
        </div>

        <!-- Address input -->
        <div class="form-outline mb-4">
            <label type="text" id="address" class="form-control w-50" name="address">${employee.getAddress()}</label>
            <label class="form-label" for="address">Số CMND/CCCD</label>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-dark btn-block mb-3">Xóa</button>
        <a href="/EmployeeServlet"><button type="button" class="btn btn-dark btn-block mb-3">Hủy</button></a>
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
