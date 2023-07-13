<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 7/12/2023
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Danh sách Nhân viên</title>
    <link rel="stylesheet" href="../bootstrap520/css/bootstrap.css">
</head>
<body>
<%@ include file="/header.jsp" %>


<div class="container-fluid" style="min-height: 650px">
    <div class="row">
        <div class="table-responsive">
            <table id="tableEmployee" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">

                <caption><h1 class="display-4 float-start" style="color: #cfb981">Nhân viên
                </h1>
                    <a href="/EmployeeServlet?action=create">
                        <button type="button" class="btn btn-primary mx-3 float-end mt-5">Thêm mới Nhân viên
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
                </thead>
                <tbody>
                <c:forEach var="employee" items="${employeeList}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td><c:out value="${employee.getEmployeeName()}"/></td>
                        <td><c:out value="${employee.getBirthDay()}"/></td>

                        <td><fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${employee.getSalary()}" type="currency"/></td>
<%--                        <c:out value="${employee.getSalary()}"/>--%>
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
                        <td><a class="btn btn-primary"
                               href="/EmployeeServlet?action=edit&id=${employee.getEmployeeId()}"
                        >Cập nhật</a></td>
                            <%--                        <td><button class="btn btn-danger" onclick="confirm(${employee.getEmployeeId()})"--%>
                            <%--                        >Xóa</button></td>--%>
                        <td><input type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete" onclick="confirm(${employee.getEmployeeId()})"
                                   value="Xóa"></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal" tabindex="-1" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Xóa Nhân viên</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Bạn có chắc muốn xoá Nhân viên không ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Huỷ
                </button>
                <form action="/EmployeeServlet?action=delete" method="post" id="formConfirm">
                    <button type="button" onclick="sumitData()" class="btn btn-primary">Xác nhận</button>
                    <input type="text" hidden="hidden" name="id" id="id"/>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>
<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../datatables/js/jquery.dataTables.min.js"></script>
<script src="../datatables/js/dataTables.bootstrap5.min.js"></script>
<script>

    function confirm(id) {
        document.getElementById("id").value = id;
    }

    function sumitData() {
        document.getElementById("formConfirm").submit();
    }

    $(document).ready(function () {
        $('#tableEmployee').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });


</script>
</body>
</html>