<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/8/2023
  Time: 12:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>
        .nav-item a {
            color: #d5b981;
        }

        body {
            background-image: url(background.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }
        form {
            font-size: 18px;
            background-image: url("home/login.png");
            background-size: cover;
            border-radius: 20px;
            color: whitesmoke;
            margin: 2% 15% 2% auto;
            padding: 25px;
            border-style:none;
            width: 450px;
            height: 680px;
            collapse: 10px;
        }
        label{
            margin: 5px;
            padding: 5px;
        }
        input,select,button {
            margin-left: 40px;
        }


    </style>
</head>
<body>
<nav class="navbar navbar-expand-xxl navbar-dark" style="background-color: #1d2434" aria-label="Seventh navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="AccountServlet"><h1 class="display-4" style="color: #d5b981">BARBER X</h1></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExampleXxl"
                aria-controls="navbarsExampleXxl" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

    </div>
</nav>

<form action="/CustomerServlet?action=create" method="post">
    <div>
    <label for="username">Tên tài khoản:</label><br/>
    <input type="text" id="username" name="username" required><br/>
    <label for="password">Mật khẩu:</label><br/>
    <input type="password" id="password" name="password" required><br/>
    <label for="name">Tên:</label><br/>
    <input type="text" id="name" name="name" required><br/>
    <label for="gender">Chọn giới tính:</label><br/>
    <select id="gender" name="gender" required>
        <option value="true">Nam</option>
        <option value="false">Nữ</option>
    </select><br/>
    <label for="birthday">Chọn ngày sinh :</label><br/>
    <input type="date" id="birthday" name="birthday" required><br/>
    <label for="phone">Điện thoại:</label><br/>
    <input type="text" id="phone" name="phone" required><br/>
    <label for="address">Địa chỉ</label><br/>
    <input type="text" id="address" name="address" required><br/><br/>
    <button type="submit" class="btn btn-outline-warning">Đăng ký</button>
    </div>
</form>
<div class="footer pt-5" style="background-color: #1d2434;color: #d5b981">
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
                            <div class="footer-social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-youtube"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="footer-newsletter">
                    <h2>Vấn đề</h2>
                    <p>
                        Lorem ipsum dolor sit amet elit. Quisque eu lectus a leo dictum nec non quam. Tortor eu
                        placerat rhoncus, lorem quam iaculis felis, sed lacus neque id eros.
                    </p>
                    <div class="form">
                        <input class="form-control" placeholder="Email goes here">
                        <button class="btn">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <a id="confirm" href=""><button type="button" class="btn btn-primary">Save changes</button></a>
            </div>
        </div>
    </div>
</div>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
</body>
</html>
