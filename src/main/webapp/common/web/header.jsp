<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<nav class="navbar navbar-expand-sm bg-dark shadow-lg justify-content-center" style = "padding-top:0px; padding-bottom:0px">
    <ul class="navbar-nav nav1">
        <li class="nav-item" style = "margin-right: 30px">
            <a style = "color: white" class="nav-link" href="tel:0968604438">Hotline: 0968604438 (8h - 12h, 13h30 - 17h)</a>
        </li>
        <li class="nav-item" style = "margin-right: 30px;">
            <a class="nav-link" href="<c:url value="/views/web/Contact.jsp"/>">Liên hệ</a>
        </li>
        <li class="nav-item" style = "margin-right: 30px;">
            <a class="nav-link" href="<c:url value="/showOrder"/>">Kiểm tra đơn hàng</a>
        </li>
        <c:if test="${sessionScope.acc == null}">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/showLogin"/>">Đăng nhập</a>
            </li>
        </c:if>
        <c:if test="${sessionScope.acc != null}">
            <li class="nav-item">
                <a style = "color: white" class="nav-link" href="<c:url value="/account"/>">Chào ${sessionScope.acc.name}</a>
            </li>
        </c:if>
        <li style = "color: white; padding-top:6px">&#x2502</li>
        <c:if test="${sessionScope.acc == null}">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/Signup.jsp"/>">Đăng kí</a>
            </li>
        </c:if>
        <c:if test="${sessionScope.acc != null}">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/logout"/>">Đăng xuất</a>
            </li>
        </c:if>
    </ul>
</nav>

<nav class="navbar navbar-expand-md bg-light navbar-light sticky-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse  justify-content-center" id="collapsibleNavbar" style = "padding-top:0px; padding-bottom:0px">
        <a class="navbar-brand" href="<c:url value="/home"/>"><img src = "<c:url value="/template/web/Images/logo.png"/>" style = "width:100px; height:70px"></a>
        <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/home"/>" style = "color: black; font-size:20px">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/male"/>" style = "color: black; font-size:20px">NAM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/female"/>" style = "color: black; font-size:20px">NỮ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/sale"/>" style = "color: black; font-size:20px">GIẢM GIÁ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/views/web/Blogs.jsp"/>" style = "color: black; font-size:20px">BLOGS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/views/web/Introduce.jsp"/>" style = "color: black; font-size:20px">GIỚI THIỆU</a>
                </li>
        </ul>
        <form class="form-inline" action="search" method="post">

            <input oninput="searchByName(this)" value = "${txtS}" name = "txt" class="form-control mr-sm-2" type="text" placeholder="Nhập thông tin cần tìm..." style = "margin-left: 20px;margin-top: 15px">
            <button class="btn btn-dark" type="submit" style = "margin-right: 40px;margin-top: 15px">
                <i style = "font-size:18px;margin-top: 5px;" class="fas fa-search"></i>
            </button>

            <ul class="navbar-nav">
                <li>
                    <a href="<c:url value="/account"/>"><i style = "color: black;font-size:28px;margin-top:15px" class="fas fa-user"></i></a>
                </li>
                <li>
                    <a href="<c:url value="/showHeart"/>"><i style = "color: black;margin-left: 10px; font-size:28px;margin-top:15px" class="far fa-heart"></i></a>
                </li>
                <li>
                    <a href="<c:url value="/showCart"/>"><i style = "color: black;margin-left: 10px; font-size:28px;margin-top:15px" class="fas fa-shopping-cart"></i></a>
                </li>
            </ul>
        </form>
    </div>
</nav>

