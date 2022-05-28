<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Giỏ hàng</title>
</head>
<body>
<!----------------------Cart-item-detail---------------------->
<div class="container cart-page">
    <table>
        <tr>
            <th>Sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
        </tr>
        <c:forEach items="${listC}" var="o">
        <tr>
            <td style = "width: 65%">
                <div class="cart-info">
                    <img src="${o.image}">
                    <div>
                        <p style = "margin-bottom: 5px;">${o.name}</p>
                        <small>Giá: ${o.price} VND</small><br>
                        <a href="remove?pid=${o.id}">Xóa</a>
                    </div>
                </div>
            </td>
            <td>
                <button class="btnSub" onclick="window.location.href='subCart?id=${o.id}'">-</button>
                <strong>${o.quantity}</strong>
                <button class="btnAdd" onclick="window.location.href='cart?id=${o.id}'">+</button>
            </td>
            <td><c:out value="${o.price*o.quantity}"/></td>
        </tr>
        </c:forEach>
    </table>
    <div class="total-price">
        <table>
            <tr>
                <td>Tạm tính</td>
                <td>${total} VND</td>
            </tr>
            <tr>
                <td>Phí vận chuyển</td>
                <td>${vc} VND</td>
            </tr><tr>
            <td>Thành tiền</td>
            <td>${sum} VND</td>
        </tr>
            <tr>
                <td colspan="2">
                    <button style = "width:100%" type="button" class="btn btn-danger" onclick="window.location.href='order?total=${sum}'">Thanh toán</button>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>

