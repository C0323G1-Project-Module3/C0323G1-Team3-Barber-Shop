<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/10/2023
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        form {
            font-size: 18px;
            background-image: url("home/login.png");
            background-size: cover;
            border-radius: 20px;
            color: whitesmoke;
            margin: 2% 15% 2% auto;
            padding: 25px;
            border-style: none;
            width: 400px;
            height: 500px;
            collapse: 10px;
            opacity: 0.7;
        }

        label {
            margin: 5px;
            padding: 5px;
        }

        input, select, button {
            margin: 20px;
        }
    </style>
</head>
<body class="container-fluid">
<nav class="navbar navbar-expand-xxl navbar-dark" style="background-color: #1d2434" aria-label="Seventh navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="/AccountServlet"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
    </div>
</nav>
<form action="CustomerServlet?action=delete&id=${customer.getCustomerId()}" method="post">
    <h1 class=" float-start">Thông tin khách hàng cần xóa</h1>
    <div>
        <div>
            <label>Họ và tên</label>
            <label>${customer.getCustomerName()}</label>
        </div>
        <div>
            <label>Ngày sinh</label>
            <label>${customer.getBirthday()}</label>
        </div>
        <div>
            <label>Số điện thoại</label>
            <label>${customer.getPhone()}</label>
        </div>
        <div>
            <label>Giới tính</label>
            <label>
                <c:if test="${customer.isGender()}">
                    Nam
                </c:if>
                <c:if test="${customer.isGender()==false}">
                    Nữ
                </c:if>
            </label>
        </div>
        <div>
            <label>Địa chỉ</label>
            <label>${customer.getAddress()}</label>
        </div>
        <label><input type="submit" class="btn btn-primary" value="Xóa Nhân viên"/></label>
        <label><a href="/CustomerServlet">
            <button type="button">Hủy</button>
        </a></label>
        </div>
    </div>

</form>
</body>
</html>
