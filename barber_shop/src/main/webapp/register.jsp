<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/8/2023
  Time: 12:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm mới</title>

</head>
<body>
<form action="/CustomerServlet?action=create" method="post">
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
</form>
</body>
</html>
