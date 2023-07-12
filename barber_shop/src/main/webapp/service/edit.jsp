<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/6/2023
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
    <style>

        body {
            background-color: white;
            background-position: center center;
        }
        h1,h3{
            color: #d5b981;
        }
        a{
            text-decoration: none;
        }
        h3:hover{
            border: 2px solid #d5b981;
            background-color: #555555;
        }
        button:hover {
            background-color: #d5b981; /* Màu nền khi di chuột qua */
            color: #1d2434; /* Màu chữ khi di chuột qua */
            border: 2px solid #1d2434; /* Đường viền khi di chuột qua */
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2); /* Hiệu ứng bóng đổ */
        }

        button {
            cursor: pointer; /* Con trỏ chuột thành hình bàn tay */
            transition-duration: 0.4s; /* Thời gian chuyển đổi */
            margin-top: 10px;
            margin-left: 20px;
            border-radius: 4px;
            color: #d5b981;
            background-color: #1d2434;
        }
        #button{
            margin-left: 80px;
        }
        form {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
            border: 2px solid #1d2434;
            margin:0 auto;
        }
        input[type=text], input[type=number] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 20px;
            box-sizing: border-box;
            border: 2px solid #1d2434;
            border-radius: 4px;
            background-color: white;
            color: black;
        }

        .form-label{
            color: #1d2434;
            font-weight: bold;
        }
       p{
           color: #1d2434;
           font-weight: bold;
           font-size: 50px;
       }

    </style>
</head>
<body>
<%@include file="header.jsp"%>
<button id="button" onclick="history.back()">Quay lại</button>
<div class="container" style="margin: 100px;">
    <form class="form text-light"style="width: 70%" method="post" action="/ServiceServlet?action=edit&id=${service.getServiceId()}">
        <p class="text-center ">Chỉnh sửa thông tin dịch vụ</p>
        <div class="form-outline mb-4 ">
            <label class="form-label" for="name">Tên dịch vụ</label>
            <input type="text" id="name" class="form-control w-50" value="${service.getServiceName()}" name="name"/>
        </div>
        <div class="form-outline mb-4">
            <label class="form-label" for="price">Giá dịch vụ</label>
            <input type="number" id="price" class="form-control w-50" value="${service.getPrice()}"
                   name="price"/>
        </div>
        <button type="submit" class="btn btn-dark btn-block mb-3">Cập Nhật</button>
    </form>
</div>
<%@include file="footer.jsp"%>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
</body>
</html>
