<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Sản phẩm</title>
</head>
<body>
<div class = "container" style = "margin-top: 50px">
    <div class = "row">
        <div class = "col-md-7">
            <img src = "${detail.image}" style = "width:600px; height:600px" id = "ProductImg">
            <div class = "small-img-row">
                <div class = "small-img-col">
                    <img src = "${detail.image}" class = "small-img">
                </div>
                <div class = "small-img-col">
                    <img src = "${detail.image}" class = "small-img">
                </div>
                <div class = "small-img-col">
                    <img src = "${detail.image}" class = "small-img">
                </div>
                <div class = "small-img-col">
                    <img src = "${detail.image}" class = "small-img">
                </div>
                <div class = "small-img-col">
                    <img src = "${detail.image}" class = "small-img" style = "margin-right: 35px;">
                </div>
            </div>
        </div>

        <div class = "col-md-5">
            <h5>${detail.title}</h5>
            <h2>${detail.name}</h2>
            <h6 style = "margin-top:20px; color: #808080	">Mã sản phẩm: ${detail.id}</h6>
            <h3 style = "color: red;  float: left">${detail.price} VND</h3>
            <h6 style = "float:right; color:#808080	">*Đã bao gồm VAT</h6>
            <br><hr>
            <div>
                <div style="width: 30%; float:left">
                    <h5>Màu sắc:</h5>
                    <h5 style = "margin-top: 15px">Kích thước</h5>
                </div>
                <div style="width: 70%; float:right" class = "detail1">
                    <h5>${detail.color}</h5>
                    <button type="button">39</button>
                    <button type="button" >40</button>
                    <button type="button">41</button>
                    <button type="button">42</button>
                    <button type="button">43</button>
                </div>
            </div>
            <br><br><br><hr>
            <div style = "border-bottom: black solid 1px; height: 90px">
                <div style = "width:50%;float: left">
                    <button type="submit" class="btn btn-danger form-control" style = "margin-top: 20px; width:200px" onclick="window.location.href='cart?id=${detail.id}'">Mua ngay</button>
                </div>
                <div style = "width:50%;float: right;">
                    <button type="button" class="btn btn-outline-success form-control" style = "margin-top: 20px; width:200px; margin-left: 20px;" onclick="window.location.href='heart?id=${detail.id}'">Thêm vào yêu thích</button>
                </div>
            </div>
            <div>
                <div style="width: 50%;float: left;">
                    <h6 style = "margin-top: 20px">Tư vấn: 0968604438</h6>
                </div>
                <div style = "width:50%; float: right">
                    <div class = "social-list">
                        <img src="https://theme.hstatic.net/1000230642/1000679613/14/zalopay.png?v=705" height="20px" width="50px">
                        <img src="https://theme.hstatic.net/1000230642/1000679613/14/visa.png?v=705" height="20px" width="50px">
                        <img src="https://theme.hstatic.net/1000230642/1000679613/14/mastercard.png?v=705" height="30px" width="50px" >
                        <img src="https://theme.hstatic.net/1000230642/1000679613/14/cod.png?v=705" height="30px" width="45px">
                    </div>
                </div>
            </div>
        </div>
    </div><!--row-->
</div><!--container-->
</body>
</html>
