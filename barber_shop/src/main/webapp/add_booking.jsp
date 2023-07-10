<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phannv_Laptop
  Date: 9/7/2023
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/BookingServlet" method="post">
  <table>
    <tr>
      <th>Tên khách hàng: </th>
      <th>//</th>
    </tr>
    <tr>
      <th>Ngày booking: </th>
      <th><input type="date" name="date"  min="2000-01-01" max="2024-12-31"></th>
    </tr>
    <tr>
      <th>Chọn dịch vụ: </th>
      <c:forEach items="${service}" var="s">
        <label for="service">${s.getNameService()}</label>
        <label for="service" >${s.getPriceService()}</label>
        <td><input type="checkbox" name="service" id="service" value="${s.getPriceService()}"></td>
      </c:forEach>
      <script>
        function myFunction() {
          const checkBox = document.getElementById("service");
          let sum = 0;
          if(checkBox.checked){
            sum+= value
          }
          return sum;
        }
        let sumPrice =myFunction();
        let displayPrice = document.getElementById("sumPrice")
        displayPrice.innerHTML = sumPrice;
      </script>
    </tr>
    <tr>
      <th>Tổng tiền cần trả: </th>
      <th><p id="sumPrice"></p></th>
    </tr>
  </table>
  <input type="submit" value="Đặt dịch vụ" onclick="myFunction()">
</form>
</body>
</html>
