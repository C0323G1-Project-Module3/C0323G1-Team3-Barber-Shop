<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 7/12/2023
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
</head>
<body>
<%@ include file="/header.jsp" %>



<div class="container-fluid" style="margin-top: 80px; margin-bottom: 30px">
    <div class="row">
        <div class="table-responsive">
            <table id="tableEmployee" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">

                <caption><h1 class="display-4 float-start" style="color: #cfb981">Nhân viên
                </h1>
                    <a href="/EmployeeServlet?action=create">
                        <button type="button" class="btn btn-primary mx-3 float-end mt-5" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">Thêm mới Nhân viên
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


<%@ include file="/footer.jsp" %>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    // function changeUrl() {
    //     let stateObj = { foo: "bar" };
    //     let newTitle = "New Title";
    //     let newUrl = "/new-url";
    //     history.pushState(newTitle, newUrl);
    // }
    //
    //

    $(document).ready(function () {
        $('#tableEmployee').dataTable({
            "dom": 'strip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
</body>
</html>