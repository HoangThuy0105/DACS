<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 8:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<nav class="navbar navbar-expand-md bg-light shadow-lg navbar-light sticky-top nav2">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-center" id="collapsibleNavbar" style = "padding-top:0px; padding-bottom:0px">
    <a class="navbar-brand" href="<c:url value="/admin-home"/>"><img src = "<c:url value="/template/web/Images/logo.png"/>" style = "width:100px; height:70px"></a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/admin-home"/>" style = "color: black; font-size:20px">Trang chủ</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/admin-product"/>" style = "color: black; font-size:20px">Quản lí sản phẩm</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/admin-account"/>" style = "color: black; font-size:20px">Quản lí tài khoản</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/admin-oder"/>" style = "color: black; font-size:20px">Quản lí đơn hàng</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"  style = "color: black; font-size:20px">Chào ${sessionScope.acc.name}</a>
      </li>
      <li style = "color:black; padding-top:10px">&#x2502</li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/logout"/>" style = "color: black; font-size:20px">Đăng xuất</a>
      </li>
    </ul>
  </div>
</nav>
