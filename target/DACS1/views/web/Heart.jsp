<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Sản phẩm yêu thích</title>
</head>
<body>
<!----------------------heart-item---------------------->
<div class="container cart-page">
    <table>
        <tr>
            <th>Sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th></th>
        </tr>
        <c:forEach items="${listH}" var="o">
        <tr>
            <td>
                <div class="cart-info">
                    <img src="${o.image}">
                    <div>
                        <p style = "margin-bottom: 5px;">${o.name}</p>
                        <small>Giá: ${o.price} VND</small><br>
                        <a href="removeH?pid=${o.id}">Xóa</a>
                    </div>
                </div>
            </td>
            <td style = "width: 20%">
                <button class="btnSub" onclick="window.location.href='subHeart?id=${o.id}'">-</button>
                <strong>${o.quantity}</strong>
                <button class="btnAdd" onclick="window.location.href='heart?id=${o.id}'">+</button>
            </td>
            <td style = "width:10%"><c:out value="${o.price*o.quantity}"/> VND</td>
            <td style="width: 20%;">
                <a href="addC?id=${o.id}"><input type="submit" value="Thêm vào giỏ"></a>
            </td>
        </tr>
        <tr><td colspan="4" style = "padding:0 0"><hr></td></tr>
        </c:forEach>
    </table>
</div><!--container-->
</body>
</html>

