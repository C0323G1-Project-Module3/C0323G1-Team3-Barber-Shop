<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/5/2023
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<html>
<head>
    <title>Add</title>
    <style>
        a {
            text-decoration: none;
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

        form {
            background-color: #d5b981;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
        }

        input[type=text], [type=number] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 20px;
            box-sizing: border-box;
            border: 2px solid #1d2434;
            border-radius: 4px;
            background-color: #d5b981;
            color: black;
        }

        body {
            /*background-image: url("/background.jpg");*/
            /*background-size: cover;*/
            /*background-repeat: no-repeat;*/
            background-position: center center;
            background-color: white;
        }
        h2, table{
            margin-left: 50px;
            margin-top: 20px;
        }

    </style>
</head>
<body>
<%@include file="header.jsp"%>
<%--content--%>
<div class="row" style="height: 350px;margin-top: 100px">
<form method="post" action="/ServiceServlet?action=add" class="container" style="width: 60%">
    <caption>
        <h2>Thêm mới dịch vụ</h2>
    </caption>
    <table>
        <tr>
            <th>Tên dịch vụ:</th>
            <td>
                <input type="text" name="name" id="name" size="45"/>
            </td>
        </tr>
        <tr>
            <th>Giá:</th>
            <td>
                <input type="number" name="price" id="price" size="45"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit" value="Thêm mới" role="button" class="btn btn-outline-primary">Thêm mới</button>
            </td>
        </tr>
    </table>
</form>
</div>
<%--footer--%>
<%@include file="footer.jsp"%>
</body>
</html>
