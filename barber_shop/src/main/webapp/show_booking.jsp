<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/11/2023
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container-fluid" style="margin-top: 80px; margin-bottom: 30px">
  <div class="row">
    <div class="table-responsive">
      <table id="Account" class="table caption-top table-light table-hover table-striped text-center"
             style="width:100%">
        <caption><h1 class="display-4 float-start" style="color: #cfb981">Account</h1>
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


<!-- Modal -->

<%@ include file="footer.jsp" %>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>


  $(document).ready(function () {
    $("#myModal").modal('show');
  });

  function confirm(accountId) {
    document.getElementById("accountId").value = accountId;
  }

  function sumitData() {
    document.getElementById("formConfirm").submit();
  }

  $(document).ready(function () {
    $('#Account').dataTable({
      "dom": 'lrtip',
      "lengthChange": false,
      "pageLength": 5
    });
  });
</script>
</body>
</html>
