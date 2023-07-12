<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/11/2023
  Time: 11:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
</head>
<body>
<div class="container-fluid">
<%@include file="header.jsp"%>
</div>
<div class="container-fluid" style="margin-top: 100px">
  <div class="row">
    <div class="table-responsive">
      <table id="displayService" class="table caption-top table-light table-hover table-striped text-center"
             style="width:100%">
        <caption><h1 class="display-4 float-start" style="color: #cfb981">Danh sách dịch vụ</h1>
          <a href="/ServiceServlet?action=add"><button type="button" class="btn btn-primary float-end mt-5" data-bs-toggle="modal"
                                                       data-bs-target="#exampleModal1"style="margin-right: 60px">Thêm mới
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
            <td>
            <fmt:setLocale value="vi_VN"/>
            <fmt:formatNumber value="${service.price}" type="currency"/>
            </td>
            <td><a class="btn btn-primary" href="/ServiceServlet?action=edit&id=${service.getServiceId()}"
                   role="button">Cập nhật</a></td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</div>
<%@include file="footer.jsp"%>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
</body>
<script>
  $(document).ready(function () {
    $('#displayService').dataTable({
      "dom": 'strip',
      "lengthChange": false,
      "pageLength": 5
    });
  });

</script>
</html>
