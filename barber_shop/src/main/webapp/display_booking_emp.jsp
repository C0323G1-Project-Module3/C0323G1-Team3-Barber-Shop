<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phannv_Laptop
  Date: 9/7/2023
  Time: 4:39 PM
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

</head>
<body>

<%@include file="header.jsp"%>

<div class="container-fluid mt-5" style="min-height: 630px">
    <div class="row">
        <div class="table-responsive">
            <table id="displayBooking" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Lịch sử booking</h1>
                </caption>
                <thead>
                <tr>
                    <th>Tên khách hàng</th>
                    <th>Ngày đặt lịch</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${dtoList}" var="c">
                    <tr>
                        <td>
                                ${c.getCustomerName()}
                        </td>
                        <td>
                                ${c.getBookingDate()}
                        </td>
                        <td>
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value=" ${c.getPrice()}" type="currency"/>

                        </td>
                        <td>
                                Chưa hoàn thành
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>

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
