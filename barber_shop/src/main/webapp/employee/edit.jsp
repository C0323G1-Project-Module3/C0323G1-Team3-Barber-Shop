<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 7/8/2023
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Chỉnh sửa thông tin Nhân viên</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
        body .form-label {
            color: #0a0a0a;
        }
    </style>
</head>
<body>
<%@ include file="/header.jsp" %>


<div class="container-fluid" style="margin-top: 80px; margin-bottom: 30px">
    <form class="form text-light" method="post" action="/EmployeeServlet?action=edit&id=${employee.getEmployeeId()}">
        <p class="text-center display-3" style="color: #d5b981">Chỉnh sửa thông tin nhân viên</p>

        <div class="row">
            <!-- Name input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="name">Họ và tên</label>
                <input type="text" id="name" class="form-control w-75" value="${employee.getEmployeeName()}"
                       name="name"/>
            </div>

            <!-- Birthday input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="phoneNumber">Số điện thoại</label>
                <input type="text" id="phoneNumber" class="form-control w-75" value="${employee.getPhoneNumber()}"
                       name="phoneNumber"/>
            </div>
        </div>


        <div class="row">
            <!-- Salary input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="salary">Lương</label>
                <input type="number" id="salary" class="form-control w-75" value="${employee.getSalary()}"
                       name="salary">
            </div>

            <!-- Phone Number input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="birthDay">Ngày sinh</label>
                <input type="date" id="birthDay" class="form-control w-75" value="${employee.getBirthDay()}"
                       name="birthDay"/>
            </div>
        </div>

        <div class="row">
            <!-- Gender input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="gender">Giới tính</label>
                <br>
                <select class="form-select w-75" name="gender" id="gender">
                    <c:if test="${employee.isGender()}">
                        <option value="true">Nam</option>
                        <option value="false">Nữ</option>
                    </c:if>
                    <c:if test="${employee.isGender()==false}">
                        <option value="false">Nữ</option>
                        <option value="true">Nam</option>
                    </c:if>
                </select>

            </div>

            <!-- ID Card input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="idCard">Số CMND/CCCD</label>
                <input type="text" id="idCard" class="form-control w-75" value="${employee.getIdCard()}" name="idCard"/>
            </div>
        </div>

        <div class="row">
            <!-- Address input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="address">Địa chỉ</label>
                <input type="text" id="address" class="form-control w-75" value="${employee.getAddress()}"
                       name="address"/>
            </div>
        </div>

        <div class="row">
            <div class="form-outline mb-4 col-lg-6">
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-3">Cập Nhật</button>
                <a href="/EmployeeServlet">
                    <button type="button" class="btn btn-danger btn-block mb-3">Hủy</button>
                </a>
            </div>
        </div>
    </form>
</div>


<%@ include file="/footer.jsp" %>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
