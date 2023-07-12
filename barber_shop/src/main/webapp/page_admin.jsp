
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/8/2023
  Time: 2:13 PM
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
        <a class="navbar-brand" href="#"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExampleXxl"
                aria-controls="navbarsExampleXxl" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleXxl">
            <ul class="navbar-nav me-auto mb-2 mb-xl-0">
                <li class="nav-item">
                    <a class="nav-link" href="/AccountServlet?action=logout">Log Out</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="container-fluid mt-5">
    <div class="row">
        <div class="table-responsive">
            <table id="Account" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Tài khoản</h1>
                </caption>
                <thead>
                <tr>
                    <th>Tên</th>
                    <th>Tài Khoản</th>
                    <th>Mã Khẩu</th>
                    <th>Quyền</th>
                    <th>Thao Tác</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="account" items="${accountList}">
                    <tr>
                        <td>
                                ${account.name}
                        </td>
                        <td>
                                ${account.username}
                        </td>
                        <td>
                                ${account.password}
                        </td>
                        <td>
                                ${account.roleName}
                        </td>
                        <td class="d-flex justify-content-center align-items-center">
                            <a href="/AccountServlet?action=showFormEdit&id=${account.accountId}">
                                <button type="button" class="btn btn-primary mx-3">
                                    Sửa Mật Khẩu
                                </button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="container-fluid mt-5">
    <div class="row">
        <div class="table-responsive">
            <table id="tableEmployee" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">

                <caption><h1 class="display-4 float-start" style="color: #cfb981">Nhân viên
                </h1>
                    <a href="/EmployeeServlet?action=create">
                        <button type="button" class="btn btn-primary mx-3 float-end mt-5" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">Thêm mới nhân viên
                        </button>
                    </a>
 </caption>
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ và tên</th>
                    <th>Ngày sinh</th>
                    <th>Lương</th>
                    <th>Số điện thoại</th>
                    <th>Giới tính</th>
                    <th>Số CMND</th>
                    <th>Địa chỉ</th>
                    <th>Cập nhật</th>
                    <th>Xóa</th>
                </tr>
                <c:forEach var="employee" items="${employeeList}" varStatus="loop">
                <tr>
                    <td>${loop.count}</td>
                    <td><c:out value="${employee.getEmployeeName()}"/></td>
                    <td><c:out value="${employee.getBirthDay()}"/></td>
                    <td><c:out value="${employee.getSalary()}"/></td>
                    <td><c:out value="${employee.getPhoneNumber()}"/></td>
                    <td>
                        <c:if test="${employee.isGender()==true}">
                            Nam
                        </c:if>
                        <c:if test="${employee.isGender()==false}">
                            Nữ
                        </c:if>
                    </td>
                    <td><c:out value="${employee.getIdCard()}"/></td>
                    <td><c:out value="${employee.getAddress()}"/></td>

                    <td><a class="btn btn-primary" href="/EmployeeServlet?action=edit&id=${employee.getEmployeeId()}"
                           role="submit">Cập nhật</a></td>
                    <td><a class="btn btn-danger" href="/EmployeeServlet?action=delete&id=${employee.getEmployeeId()}"
                           role="button">Xóa</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<div class="container-fluid mt-5">
    <div class="row">
        <div class="table-responsive">
            <table id="tableCustomer" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Khách hàng</h1>
                </caption>
                <thead>
                <tr>


                    <th>STT</th>
                    <th>Họ và tên</th>
                    <th>Ngày sinh</th>
                    <th>Số điện thoại</th>
                    <th>Giới tính</th>
                    <th>Địa chỉ</th>
                    <th>Edit</th>
                    <th>Delete</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customerList}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td><c:out value="${customer.getCustomerName()}"/></td>
                        <td><c:out value="${customer.getBirthday()}"/></td>
                        <td><c:out value="${customer.getPhone()}"/></td>
                        <td>
                            <c:if test="${customer.isGender()==true}">
                            Nam
                            </c:if>
                            <c:if test="${customer.isGender()==false}">
                            Nữ
                            </c:if>
                        <td><c:out value="${customer.getAddress()}"/></td>
                        <td><a class="btn btn-primary"
                               href="/CustomerServlet?action=edit&id=${customer.getCustomerId()}" role="submit">Cập
                            nhật</a></td>
                        <td><a class="btn btn-danger"
                               href="/CustomerServlet?action=delete&id=${customer.getCustomerId()}"
                               role="button">Xóa</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>

<div class="container-fluid mt-5">
    <div class="row">
        <div class="table-responsive">
            <table id="displayBooking" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Danh sách booking</h1>

                </caption>
                <thead>
                <tr>
                    <th>Tên khách hàng</th>
                    <th>Ngày booking</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="b" items="${bookingDTOList}">
                    <tr>
                        <td>
                                ${b.getCustomerName()}
                        </td>
                        <td>
                                ${b.getBookingDate()}
                        </td>
                        <td>
                                ${b.getPrice()}
                        </td>
                        <td>
                                ${b.getBookingStatus()}
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%--dịch vụ--%>

<div class="container-fluid mt-5">
    <div class="row">
        <div class="table-responsive">
            <table id="displayService" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Danh sách dịch vụ</h1>
                    <a href="/ServiceServlet?action=add"><button type="button" class="btn btn-primary mx-3 float-end mt-5" data-bs-toggle="modal"
                                                                     data-bs-target="#exampleModal1">Thêm mới
                    </button></a>
                </caption>
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên dịch vụ</th>
                    <th>Giá dịch vụ</th>
                    <th>Chỉnh sửa</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="service" items="${serviceList}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td><c:out value="${service.serviceName}"/></td>
                        <td><c:out value="${service.price}"/></td>
                        <td><a class="btn btn-primary" href="/ServiceServlet?action=edit&id=${service.getServiceId()}"
                               role="button">Cập nhật</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<%--dịch vụ end--%>
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
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <a id="confirm" href="">
                    <button type="button" class="btn btn-primary">Save changes</button>
                </a>
            </div>
        </div>
    </div>
</div>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#Account').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
    $(document).ready(function () {
        $('#tableEmployee').dataTable({
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

    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
    $(document).ready(function () {
        $('#displayService').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });

    function confirm(accountId)
    {
        document.getElementById("confirm").href="/AccountServlet?action=delete&id="+accountId;
    }
</script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>

