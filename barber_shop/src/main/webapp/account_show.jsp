<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/11/2023
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container-fluid" style="min-height: 630px; margin-bottom: 30px">
    <div class="row">
        <div class="table-responsive">
            <table id="Account" class="table caption-top table-light table-hover table-striped text-center"
                   style="width:100%">
                <caption><h1 class="display-4 float-start" style="color: #cfb981">Account</h1>
                </caption>
                <thead>
                <tr>
                    <th>Tên</th>
                    <th>Tài khoản</th>
                    <th>Quyền</th>
                    <th>Thao tác</th>
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
                                ${account.roleName}
                        </td>
                        <td class="d-flex justify-content-center align-items-center">
                            <button type="button" class="btn btn-primary" onclick="confirm(${account.accountId})"
                                    data-bs-toggle="modal"
                                    data-bs-target="#exampleModal">
                                Hồi phục mật khẩu
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Hồi phục mật khẩu</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <span class="text-danger">Chọn xác nhận để hồi phục lại mật khẩu</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <form action="/AccountServlet?action=resetPassword" method="post" id="formConfirm">
                    <button type="button" onclick="sumitData()" class="btn btn-primary">Xác nhận</button>
                    <input type="text" hidden="hidden" name="accountId" id="accountId"/>
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
