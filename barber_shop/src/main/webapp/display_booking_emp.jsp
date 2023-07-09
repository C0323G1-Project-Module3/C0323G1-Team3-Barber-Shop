<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phannv_Laptop
  Date: 9/7/2023
  Time: 4:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Tên khách hàng</th>
        <th>Ngày đặt lịch</th>
        <th>Tổng tiền</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${dtoList}" var="c">
        <tr>
            <td>
                    ${c.getCustomerName()}
            </td>
            <td>
                    ${c.getBookingDate()}
            </td>
            <td>
                    ${c.getPrice()}
            </td>
            <td>
                    ${c.getBookingStatus()}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
