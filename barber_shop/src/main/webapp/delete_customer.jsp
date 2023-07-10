<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/10/2023
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="bootstrap520/css/bootstrap.css">
  <style>
    .nav-item a {
      color: #d5b981;
    }

    body {
      background-image: url("/background.jpg");
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center center;
    }
  </style>
</head>
<body>
<form action="CustomerServlet?action=delete&id=${customer.getCustomerId()}" method="post">
  <fieldset>
    <legend>Thông tin khách hàng cần xóa</legend>
    <table>
      <tr>
        <td>Họ và tên</td>
        <td><c:out value="${customer.getCustomerName()}"/></td>
      </tr>
      <tr>
        <td>Ngày sinh</td>
        <td><c:out value="${customer.getBirthday()}" /></td>
      </tr>
      <tr>
        <td>Số điện thoại</td>
        <td><c:out value="${customer.getPhone()}" /></td>
      </tr>
      <tr>
        <td>Giới tính</td>
        <td><c:out value="${customer.isGender()}" /></td>
      </tr>
      <tr>
        <td>Địa chỉ</td>
        <td><c:out value="${customer.getAddress()}" /></td>
      </tr>
      <td><input type="submit" value="Xóa Nhân viên"/></td>
      <td><a href="/CustomerServlet" ><button type="button">Hủy</button></a></td>
      </tr>

    </table>
  </fieldset>
</form>
</body>
</html>
