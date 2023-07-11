<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2023
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--Bootstrap--%>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>

<link rel="stylesheet" href="bootstrap520/css/bootstrap.css">

<html>
<head>
    <title>Barber Shop</title>
    <style>
        .nav-item a {
            color: #d5b981;
        }
        body{
            background-color: wheat;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-xxl navbar-dark" style="background-color: #1d2434" aria-label="Seventh navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="/AccountServlet"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
    </div>
</nav>
<center>
    <h1>Danh sách dịch vụ</h1>
    <h2><a class="btn btn-outline-primary container" href="/ServiceServlet?action=add" role="button">Thêm mới dịch vụ</a></h2>
</center>
<table border="1px" class="table table-striped container">
    <tr>
        <th>STT</th>
        <th>Tên dịch vụ</th>
        <th>Giá dịch vụ</th>
        <th>Chỉnh sửa</th>
        <th>Xóa</th>
    </tr>
    <c:forEach var="service" items="${serviceList}" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td><c:out value="${service.serviceName}"/></td>
            <td><c:out value="${service.price}"/></td>
            <td><a class="btn btn-primary" href="/ServiceServlet?action=edit&id=${service.getServiceId()}"
                   role="button">Sửa</a></td>
            <td><a class="btn btn-danger" href="/ServiceServlet?action=delete&id=${service.getServiceId()}"
                   role="button">Xóa</a></td>
        </tr>
    </c:forEach>
</table>
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
</body>
</html>
