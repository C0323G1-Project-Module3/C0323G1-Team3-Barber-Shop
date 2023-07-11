<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phannv_Laptop
  Date: 9/7/2023
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới Nhân viên</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
        .nav-item a {
            color: #d5b981;
        }

        body {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }

    </style>
</head>
<body>
<nav class="navbar navbar-expand-xxl navbar-dark" style="background-color: #1d2434" aria-label="Seventh navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="/AccountServlet"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
    </div>
</nav>

<div class="container ">
    <form action="/BookingServlet?action=addBooking&id=${idCustomer}" method="post">
        <p class="text-center display-3" style="color: #d5b981">Đặt dịch vụ booking </p>

        <!-- Name input -->
        <div class="form-outline mb-4 ">
            <label class="form-label">Tên khách hàng: </label>
            <span>${customer.getCustomerName()}</span>
        </div>

        <!-- Birthday input -->
        <div class="form-outline mb-4 ">
            <label class="form-label" for="date-input">Ngày đăt lịch : </label>
            <input type="date" name="date" min="2000-01-01" max="2024-12-31" id="date-input">
        </div>
        <script>
            let today = new Date();
            let dd = String(today.getDate()).padStart(2, '0');
            let mm = String(today.getMonth() + 1).padStart(2, '0');
            let yyyy = today.getFullYear();

            let dateInput = document.getElementById('date-input');
            dateInput.value = yyyy + '-' + mm + '-' + dd;
        </script>
        <!-- Salary input -->
        <th>Chọn dịch vụ:</th>
        <table>
            <tr>
                <c:forEach items="${serviceList}" var="s" varStatus="loop">
                    <td class="form-check">
                        <input class="form-check-input" type="checkbox" name="checkBox${s.getServiceId()}"
                               value="${s.getServiceId()}" onclick="calculate(${loop.count},${s.getPrice()})"
                               id="${loop.count}">
                        <label class="form-check-label" for="${loop.count}">
                            <label>${s.getServiceName()}</label>
                            <label>${s.getPrice()} vnđ</label>
                            <br>
                        </label>
                    </td>
                </c:forEach>
            </tr>
        </table>
        <div class="form-outline mb-4 ">
            <label class="form-label">Tổng tiền: </label>
            <span id="showTotal" name="showTotal" value=""></span>
            <input type="hidden" id="showTotal1" name="showTotal1" value=""/>
        </div>
        <!-- Submit button -->
        <input type="submit" value="Đặt dịch vụ">
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
    let total = 0;
    let listServiceId = "";

    function calculate(id, price) {
        let checkbox = document.getElementById(id);
        if (checkbox.checked) {
            total += price;
        } else {
            total -= price;
        }
        document.getElementById("showTotal").innerHTML = total;
        document.getElementById("showTotal").value = total;
        document.getElementById("showTotal1").innerHTML = total;
        document.getElementById("showTotal1").value = total;
    }

</script>


<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
