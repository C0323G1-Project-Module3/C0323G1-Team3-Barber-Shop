<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 7/8/2023
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<div class="container m-5">
<form action="/EmployeeServlet?action=edit&id=${employee.getEmployeeId()}" method="post">
    <fieldset>
        <legend>Chỉnh sửa thông tin nhân viên</legend>
        <table>
            <tr>
                <td>Họ và tên</td>
                <td><input type="text" value="${employee.getEmployeeName()}" name="name"></td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td><input type="text" value="${employee.getBirthDay()}" name="birthDay"></td>
            </tr>
            <tr>
                <td>Lương</td>
                <td><input type="number" value="${employee.getSalary()}" name="salary"></td>
            </tr>
            <tr>
                <td>Số điện thoại</td>
                <td><input type="text" value="${employee.getPhoneNumber()}" name="phoneNumber"></td>
            </tr>
            <tr>
                <td>Giới tính</td>
                <td>
                    <select name="gender" id="gender">
                        <option value="true">Nam</option>
                        <option value="false">Nữ</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Số CMND/CCCD</td>
                <td><input type="text" value="${employee.getIdCard()}" name="idCard"></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><input type="text" value="${employee.getAddress()}" name="address"></td>
            </tr>
            <input type="submit" value="Cập nhật"/>
        </table>
    </fieldset>
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
