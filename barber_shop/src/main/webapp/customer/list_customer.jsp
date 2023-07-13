<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/11/2023
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap520/css/bootstrap.css">
    <style>
        nav {
            width: 100%;
            z-index: 1;
        }

    </style>
</head>
<body>
<%@ include file="/header.jsp" %>
<div class="container-fluid" style="min-height: 630px">
    <div class="row">
        <div class="table-responsive">
            <table id="tableCustomer" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <br>
                <br>
                <br>
                <br>
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
                    <th>Loại khách hàng</th>
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
                        <td><c:if test="${customer.getCustomerTypeId()==1}">
                            Thành viên
                        </c:if>
                            <c:if test="${customer.getCustomerTypeId()==2}">
                                Vàng
                            </c:if>
                            <c:if test="${customer.getCustomerTypeId()==3}">
                                Kim cương
                            </c:if>
                        </td>
                        <td><a class="btn btn-primary"
                               href="/CustomerServlet?action=edit&id=${customer.getCustomerId()}" role="submit">Cập
                            nhật</a></td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal" onclick="confirm(${customer.getCustomerId()})">Xóa
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bạn có muốn xóa không?</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <span class="text-danger"></span>
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
                    <p class="text-dark">Đã xóa khách hàng thành công</p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
</c:if>
<%@ include file="/footer.jsp" %>
<script src="../bootstrap520/js/bootstrap.bundle.js"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
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

    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });


</script>
<script src="${pageContext.request.contextPath}/bootstrap520/js/bootstrap.bundle.js"></script>

</body>
</html>
