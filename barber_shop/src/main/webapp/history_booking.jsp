<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phannv_Laptop
  Date: 10/7/2023
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
    </style>
</head>
<body>
<%@include file="header.jsp" %>

<div class="container-fluid mt-5" style="min-height: 630px">
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
                        <td><fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${c.getTotalPrice()}" type="currency"/>
                                </td>
                        <td><input type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete"
                                   value="xoá"></td>
                        <div class="modal" tabindex="-1" id="delete">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Xoá đặt dịch vụ</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Bạn có chắc muốn xoá booking ko ?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ
                                            xoá
                                        </button>
                                        <a class="btn btn-primary"
                                           href="/BookingServlet?action=deleteBooking&id=${c.getBookingId()}"
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

<%@include file="footer.jsp" %>
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
