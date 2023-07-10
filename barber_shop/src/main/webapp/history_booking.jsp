<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phannv_Laptop
  Date: 10/7/2023
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <tr>
        <th>Tên khách hàng</th>
        <th>Ngày đặt lịch</th>
        <th>Tổng tiền</th>
        <th>Xoá dịch vụ</th>
    </tr>
    <c:forEach items="${bookingList}" var="c">
        <td>${customer.getCustomerName()}</td>
        <td>${c.getBookingDate()}</td>
        <td>${c.getTotalPrice()}</td>
        <td><a href="/BookingServlet?action=deleteBooking&id=${c.getBookingId()}">xoá</a></td>
    </c:forEach>
</table>
</body>
</html>
