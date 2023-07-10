<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/8/2023
  Time: 12:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/CustomerServlet?action=create" method="post">
    <label for="signupUsername">Tên tài khoản:</label><br/>
    <input type="text" id="signupUsername" name="username" required><br/>
    <label for="signupPassword">Mật khẩu:</label><br/>
    <input type="password" id="signupPassword" name="password" required><br/>
    <label for="signupUsername">Tên:</label><br/>
    <input type="text" id="name" name="name" required><br/>
    <label for="signupGender">Chọn giới tính:</label><br/>
    <select id="signupGender" name="gender" required>
        <option value="true">Nam</option>
        <option value="false">Nữ</option>
    </select><br/>
    <label for="signupBirth">Chọn ngày sinh :</label><br/>
    <input type="date" id="signupBirth" name="birthday" required><br/>
    <label for="signupPhone">Điện thoại:</label><br/>
    <input type="text" id="signupPhone" name="phone" required><br/>
    <label for="signupAddress">Địa chỉ</label><br/>
    <input type="text" id="signupAddress" name="address" required><br/><br/>
    <button type="submit" class="btn btn-outline-warning">Đăng ký</button>
</form>
</body>
</html>
