<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/5/2023
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<center>
    <h1>Barber Shop</h1>
    <h2>
        <a href="/ServiceServlet">Trở về trang danh sách</a>
    </h2>
</center>
<div align="center">
    <form method="post" action="/ServiceServlet?action=add">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Thêm mới dịch vụ</h2>
            </caption>
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
                <th>Số lượng:</th>
                <td>
                    <input type="number" name="quantity" id="quantity" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Trạng thái:</th>
                <td>
<%--                    <input type="checkbox" name="status" id="status" size="15"/>--%>
    <input type="radio" name="status" id="status" value="false" size="15">False
    <input type="radio" name="status" id="status" value="true" size="15">True
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Thêm mới"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
