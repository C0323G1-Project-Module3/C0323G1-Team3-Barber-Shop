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
<div class="container">
    <form action="/BookingServlet?action=addBooking&id=${idCustomer}" method="post">
        <div class="row">
            <table>
                <tr>
                    <th>Tên khách hàng:</th>
                    <th>${customer.getCustomerName()}</th>
                </tr>
                <tr>
                    <th>Ngày booking:</th>
                    <th><input type="date" name="date" min="2000-01-01" max="2024-12-31"></th>
                </tr>

                <th>Chọn dịch vụ:</th>
                <c:forEach items="${serviceList}" var="s" varStatus="loop">
                    <tr>
                        <td class="form-check">
                            <input class="form-check-input" type="checkbox" name="checkBox${s.getServiceId()}" value="${s.getServiceId()}" onclick="calculate(${loop.count},${s.getPrice()})" id="${loop.count}" >
                            <label class="form-check-label" for="${loop.count}">
                                <label>${s.getServiceName()}</label>
                                <label>${s.getPrice()}</label>
                            </label>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <th>Tổng tiền:</th>
                    <td></td>
                    <td><span id="showTotal" name="showTotal" value=""></span></td>
                    <td><input type="hidden" id="showTotal1" name="showTotal1" value=""/></td>
                </tr>
            </table>
        </div>
        <input type="submit" value="Đặt dịch vụ">
    </form>
</div>
<script>
    let total=0;
    let listServiceId ="";
    function calculate (id , price){
        let checkbox= document.getElementById(id);
        if (checkbox.checked){
            total+=price;
        }
        else{
            total-=price;
        }
        document.getElementById("showTotal").innerHTML=total;
        document.getElementById("showTotal").value=total;
        document.getElementById("showTotal1").innerHTML=total;
        document.getElementById("showTotal1").value=total;
    }

</script>
</body>
</html>
