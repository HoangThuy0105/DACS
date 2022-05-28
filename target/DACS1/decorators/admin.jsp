<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>ManagerProduct</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>"/>
    <link rel="stylesheet" type= "text/css" href="<c:url value="/template/web/style.css"/>">
    <!-- GOOGLE FONTS -->
    <link href="<c:url value="https://cdn.materialdesignicons.com/3.0.39/css/materialdesignicons.min.css"/>" rel="stylesheet" />
    <!-- SLEEK CSS -->
    <link id="sleek-css" rel="stylesheet" href="<c:url value="/template/admin/sleek.css"/>">
</head>
<body>
<!--header-->
<%@include file="/common/admin/header.jsp"%>
<!---->
<dec:body/>
<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"/>"></script>
<script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"/>"></script>
<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/admin/JS/jquery.min.js"/>"></script>
<script src="<c:url value="/template/admin/JS/Chart.min.js"/>"></script>
<script src="<c:url value="/template/admin/JS/chart.js"/>"></script>
</body>
</html>
