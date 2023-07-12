<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/11/2023
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../bootstrap520/css/bootstrap.css">
    <style>
        nav{
            width: 100%;
            z-index: 1;
        }
        .navbar{
            margin-top: 0;
        }
        div.container{
            margin-top: 0;
        }
        body{
            margin: 0;

        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light position-fixed" style="background-color: #1d2434">
    <!-- Container wrapper -->
    <div class="container">
        <!-- Navbar brand -->
        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarButtonsExample">
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 float-end">
                <li class="nav-item display-5">
                    <a class="nav-link" href="#" style="color: #d5b981">BARBER X</a>
                </li>
            </ul>
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</nav>
<div class="container-fluid mt-5">
    <div class="row">
        <div class="table-responsive">
            <table id="tableCustomer" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Customer</h1>
                </caption>
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ và tên</th>
                    <th>Ngày sinh</th>
                    <th>Số điện thoại</th>
                    <th>Giới tính</th>
                    <th>Địa chỉ</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
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
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="confirm(${customer.getCustomerId()})">Xóa
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%--<div id="myModal" class="modal">--%>
<%--    <!-- Modal content -->--%>
<%--    <div class="modal-content">--%>
<%--        <span class="close">&times;</span>--%>
<%--        <p>Bạn có chắc muốn xóa?</p>--%>
<%--        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>--%>
<%--        <a id="confirm-btn">--%>
<%--            <button type="button" class="btn btn-primary">Đồng ý</button>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bạn có muốn xóa không?</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <span class="text-danger">Chọn xác nhận để hồi phục lại mật khẩu</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <form action="CustomerServlet?action=delete" method="post" id="formConfirm">
                    <button type="button" onclick="submitData()" class="btn btn-primary">Xác nhận</button>
                    <input type="text" hidden="hidden" name="customerId" id="customerId"/>
                </form>
            </div>
        </div>
    </div>
</div>
<c:if test="${msg != null}">
    <div class="modal" id="myModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-body">
                    <p class="text-dark">Đã hồi phục thành công</p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
</c:if>
<div class="footer pt-5 position-absolute w-100" style="background-color: #1d2434;color: #d5b981;">
<div class="container-fluid">
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
        <div class="col-lg-5">
        </div>
    </div>
</div>
</div>
<script src="../bootstrap520/js/bootstrap.bundle.js"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script>

    $(document).ready(function () {
        $("#myModal").modal('show');
    });

    function confirm(customerId) {
        document.getElementById("customerId").value = customerId;
    }

    function submitData() {
        document.getElementById("formConfirm").submit();
    }
</script>
<script src="../bootstrap520/js/bootstrap.bundle.js"></script>

</body>
</html>
