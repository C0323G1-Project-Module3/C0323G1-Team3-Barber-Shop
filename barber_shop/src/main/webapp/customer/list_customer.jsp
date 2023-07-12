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
</head>
<body>
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
                            <button class="btn btn-danger" onclick="confirmDelete(${customer.getCustomerId()})">Xóa
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div id="myModal" class="modal">
    <!-- Modal content -->
    <div class="modal-content">
        <span class="close">&times;</span>
        <p>Bạn có chắc muốn xóa?</p>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
        <a id="confirm-btn">
            <button type="button" class="btn btn-primary">Đồng ý</button>
        </a>
    </div>
</div>
<script>
    $(document).ready(function () {
        $("#myModal").modal('show')
    });

    function confirmDelete(id) {
        document.getElementById("confirm-btn").href = "/CustomerServlet?action=delete&id=" + id;
    }
</script>

</body>
</html>
