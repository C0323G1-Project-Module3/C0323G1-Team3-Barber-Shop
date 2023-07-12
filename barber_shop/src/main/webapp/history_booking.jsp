<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phannv_Laptop
  Date: 10/7/2023
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
        <a class="navbar-brand" href="/home/home.jsp"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExampleXxl"
                aria-controls="navbarsExampleXxl" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleXxl">
            <ul class="navbar-nav me-auto mb-2 mb-xl-0">
                <li class="nav-item">
                    <a class="nav-link" href="/home/home.jsp">Thoát Lịch Sử</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid mt-5">
    <div class="row">
        <div class="table-responsive">
            <table id="displayBooking" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Lịch sử đặt lịch</h1>
                </caption>
                <thead>
                <tr>
                    <th>Tên khách hàng</th>
                    <th>Ngày đặt lịch</th>
                    <th>Tổng tiền</th>
                    <th>Xoá dịch vụ</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${bookingList}" var="c">
                    <tr>
                        <td>${customer.getCustomerName()}</td>
                        <td>${c.getBookingDate()}</td>
                        <td>${c.getTotalPrice()}</td>
                        <td><input type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete" value="xoá"></td>
                        <div class="modal" tabindex="-1" id="delete">
                            <div class="modal-dialog" >
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Xoá đặt dịch vụ</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Bạn có chắc muốn xoá booking ko ?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ xoá</button>
                                        <a class="btn btn-primary"  href="/BookingServlet?action=deleteBooking&id=${c.getBookingId()}"
                                           role="submit">Xoá </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
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
                            <div class="footer-social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-youtube"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="footer-newsletter">
                    <h2>Vấn đề</h2>
                    <p>
                        Lorem ipsum dolor sit amet elit. Quisque eu lectus a leo dictum nec non quam. Tortor eu
                        placerat rhoncus, lorem quam iaculis felis, sed lacus neque id eros.
                    </p>
                    <div class="form">
                        <input class="form-control" placeholder="Email goes here">
                        <button class="btn">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent1').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
    $(document).ready(function () {
        $('#displayBooking').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
    $(document).ready(function () {
        $('#tableStudent3').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
