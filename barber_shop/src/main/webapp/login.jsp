
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/8/2023
  Time: 12:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">

</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #1d2434">
    <!-- Container wrapper -->
    <div class="container">
        <!-- Navbar brand -->

        <!-- Toggle button -->
        <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarButtonsExample"
                aria-controls="navbarButtonsExample"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarButtonsExample">
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item display-5">
                    <a class="nav-link" href="#" style="color: #d5b981">BARBER X</a>
                </li>
            </ul>
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</nav>
<div class="container p-0 m-5">
    <form action="/AccountServlet?action=login" method="post">
        <!-- Email input -->
        <div class="login">
        <div class="form-outline mb-4 w-50">
            <label class="form-label " for="form2Example1">Tên Đăng Nhập</label>
            <input type="text" name="username" id="form2Example1" class="form-control"/>

        </div>

        <!-- Password input -->
        <div class="form-outline mb-4 w-50">
            <label class="form-label" for="form2Example2">Mật Khẩu</label>
            <input type="password" name="password" id="form2Example2" class="form-control"/>
        </div>
        <c:if test="${msg != null}">
            <span class="text-danger">${msg}</span>
        </c:if>
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4 d-flex justify-content-center">Đăng nhập</button>

        <!-- Register buttons -->
        <div class="float-start">
            <p>Nếu không phải là thành viên <a href="register.jsp">Đăng kí</a></p>
        </div>
        </div>
    </form>
</div>


<%@ include file="footer.jsp" %>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
