<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/29/2021
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Admin-Order</title>
</head>
<body>
<div class="container managerPage">
    <table class="table table-hover">
        <thead>
        <tr class = "bg-info">
            <th colspan="4" style = "vertical-align: middle; font-size:24px">ManagerOrder</th>
            <th colspan="2" style = "text-align:right; width: 150px">
                <button type="button" class="btn btn-success" onclick="window.location.href='admin-home'" data-toggle="modal"><i class="fas fa-dollar-sign"></i> Doanh thu</button>
            </th>
        </tr>
        <tr>
            <th>ID</th>
            <th>UserName</th>
            <th>PhoneNumber</th>
            <th>Status</th>
            <th>Total (VNĐ)</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listO}" var="o">
        <tr>
            <td>${o.oderId}</td>
            <td>${o.name}</td>
            <td>${o.phone}</td>
            <td>${o.status}</td>
            <td>${o.total}</td>
            <td>
                <a href="admin-loadOrder?pid=${o.oderId}" title="Edit"><i style = "color:orange; margin-right: 15px;font-size:18px" class="fas fa-edit"></i></a>
                <a href="deleteOrder?pid=${o.oderId}" title="Delete"><i style = "color: red; font-size: 18px" class="fas fa-trash"></i></a>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
