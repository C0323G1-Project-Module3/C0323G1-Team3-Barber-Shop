<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/10/2023
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
        .nav-item a {
            color: #d5b981;
        }

        body {
            background-image: url("background.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            color: whitesmoke;
        }
        form{
            margin: 10%;
        }

    </style>
</head>
<body class="container-fluid mt-5">
<form class="table-responsive" action="CustomerServlet?action=delete&id=${customer.getCustomerId()}" method="post">
        <h1 class="display-4 float-start">Thông tin khách hàng cần xóa</h1>
        <table class="table caption-top table-light table-hover table-striped text-center">
            <tr>
                <td>Họ và tên</td>
                <td>${customer.getCustomerName()}</td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td>${customer.getBirthday()}</td>
            </tr>
            <tr>
                <td>Số điện thoại</td>
                <td>${customer.getPhone()}</td>
            </tr>
            <tr>
                <td>Giới tính</td>
                <td>
                    <c:if test="${customer.isGender()}">
                        Nam
                    </c:if></td>
                <c:if test="${customer.isGender()==false}">
                    Nữ
                </c:if>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td>${customer.getAddress()}</td>
            </tr>
            <td><input type="submit" class="btn btn-primary" value="Xóa Nhân viên"/></td>
            <td><a href="/CustomerServlet">
                <button type="button">Hủy</button>
            </a></td>
            </tr>

        </table>

</form>
</body>
</html>
