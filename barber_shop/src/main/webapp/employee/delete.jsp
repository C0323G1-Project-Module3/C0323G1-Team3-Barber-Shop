<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 7/9/2023
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Xóa Nhân viên</title>
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
    <form id="form" class="form text-light" method="post"
          action="/EmployeeServlet?action=delete&id=${employee.getEmployeeId()}">
        <p class="text-center display-3" style="color: #d5b981">Thông tin nhân viên cần xóa</p>

        <div class="row">
            <!-- Name input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="name">Họ và tên</label>
                <label type="text" id="name" class="form-control w-50" name="name">${employee.getEmployeeName()}</label>
            </div>

            <!-- Birthday input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="birthDay">Ngày sinh</label>
                <label type="text" id="birthDay" class="form-control w-50"
                       name="birthDay">${employee.getBirthDay()}</label>
            </div>
        </div>


        <div class="row">
            <!-- Salary input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="salary">Lương</label>
                <label type="number" id="salary" class="form-control w-50" name="salary"><fmt:setLocale value="vi_VN"/>
                    <fmt:formatNumber value="${employee.getSalary()}" type="currency"/></label>
            </div>

            <!-- Phone Number input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="phoneNumber">Số điện thoại</label>
                <label type="text" id="phoneNumber" class="form-control w-50"
                       name="phoneNumber">${employee.getPhoneNumber()}</label>
            </div>
        </div>

        <div class="row">
            <!-- Gender input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="gender">Giới tính</label>
                <label type="form-select" id="gender" class="form-control w-50" name="gender">
                    <c:if test="${employee.isGender()==true}">
                        Nam
                    </c:if>
                    <c:if test="${employee.isGender()==false}">
                        Nữ
                    </c:if>
                </label>
            </div>


            <!-- ID Card input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="idCard">Số CMND/CCCD</label>
                <label type="text" id="idCard" class="form-control w-50" name="idCard">${employee.getIdCard()}</label>
            </div>
        </div>

        <div class="row">
            <!-- Address input -->
            <div class="form-outline mb-4 col-lg-6">
                <label class="form-label" for="address">Địa chỉ</label>
                <label type="text" id="address" class="form-control w-50"
                       name="address">${employee.getAddress()}</label>
            </div>
        </div>

        <div class="row">
            <div class="form-outline mb-4 col-lg-6">
                <!-- Submit button -->
                <button type="button" onclick="showConfirm()" class="btn btn-primary btn-block mb-3">Xóa</button>
                <a href="/EmployeeServlet">
                    <button type="button" class="btn btn-dark btn-danger mb-3">Hủy</button>
                </a>
            </div>
        </div>
    </form>
</div>


<div class="footer pt-5" style="background-color: #1d2434;color: #d5b981;bottom: auto">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="row">
                    <div class="col-md-6">
                        <div class="footer-contact">
                            <h2>Địa chỉ Barber</h2>
                            <p><i class="fa fa-map-marker-alt"></i>280 Trần Hưng Đạo, Sơn Trà, Đà Nẵng</p>
                            <p><i class="fa fa-phone-alt"></i>0123456789</p>
                            <p><i class="fa fa-envelope"></i>cuongplastic@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function showConfirm() {
        let confirmDelete = confirm("Bạn có chắc chắn muốn xóa Nhân viên trên ?")
        if (confirmDelete) {
            document.getElementById("form").requestSubmit();
        }
    }
</script>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
