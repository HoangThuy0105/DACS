<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/29/2021
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Admin-Account</title>
</head>
<body>
<div class="container managerPage">
    <table class="table table-hover">
        <thead>
        <tr class = "bg-info">
            <th colspan="2" style = "vertical-align: middle; font-size:24px">ManagerAccount</th>
            <th style = "text-align:right; width: 150px">
                <button type="button" class="btn btn-success" onclick="window.location.href='admin-home'" data-toggle="modal"><i class="fas fa-binoculars"></i> Tổng quan</button>
            </th>
        </tr>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Position</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listA}" var="o">
        <tr>
            <td>${o.name}</td>
            <td>${o.email}</td>
            <td>${o.position}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
