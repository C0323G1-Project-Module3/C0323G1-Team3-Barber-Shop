<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 7/8/2023
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Chỉnh sửa thông tin Nhân viên</title>
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
<form class="form text-light" method="post" action="/EmployeeServlet?action=edit&id=${employee.getEmployeeId()}">
    <p class="text-center display-3" style="color: #d5b981">Chỉnh sửa thông tin nhân viên</p>

    <!-- Name input -->
    <div class="form-outline mb-4 ">
        <label class="form-label" for="name">Họ và tên</label>
        <input type="text" id="name" class="form-control w-50" value="${employee.getEmployeeName()}" name="name"/>
    </div>

    <!-- Birthday input -->
    <div class="form-outline mb-4">
        <label class="form-label" for="phoneNumber">Số điện thoại</label>
        <input type="text" id="phoneNumber" class="form-control w-50" value="${employee.getPhoneNumber()}"
               name="phoneNumber"/>
    </div>

    <!-- Salary input -->
    <div class="form-outline mb-4">
        <label class="form-label" for="salary">Lương</label>
        <input type="number" id="salary" class="form-control w-50" value="${employee.getSalary()}" name="salary">
    </div>

    <!-- Phone Number input -->
    <div class="form-outline mb-4">
        <label class="form-label" for="birthDay">Ngày sinh</label>
        <input type="text" id="birthDay" class="form-control w-50" value="${employee.getBirthDay()}" name="birthDay"/>
    </div>

    <!-- Gender input -->
    <div class="form-outline mb-4">
        <label class="form-label" for="gender">Giới tính</label>
        <br>
        <select name="gender" id="gender">
            <c:if test="${employee.isGender()}">
                <option value="true">Nam</option>
                <option value="false">Nữ</option>
            </c:if>
            <c:if test="${employee.isGender()==false}">
                <option value="false">Nữ</option>
                <option value="true">Nam</option>
            </c:if>
        </select>

    </div>


    <!-- ID Card input -->
    <div class="form-outline mb-4">
        <label class="form-label" for="idCard">Số CMND/CCCD</label>
        <input type="text" id="idCard" class="form-control w-50" value="${employee.getIdCard()}" name="idCard"/>
    </div>

    <!-- Address input -->
    <div class="form-outline mb-4">
        <label class="form-label" for="address">Địa chỉ</label>
        <input type="text" id="address" class="form-control w-50" value="${employee.getAddress()}" name="address"/>
    </div>

    <!-- Submit button -->
    <button type="submit" class="btn btn-dark btn-block mb-3">Cập Nhật</button>
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
