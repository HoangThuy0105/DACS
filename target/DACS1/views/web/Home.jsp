<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Trang chủ</title>
    <link rel="shortcut icon" type="image/png" href="Images/logo.png"/>
</head>
<body>
<div id="demo" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- The slideshow -->
    <div class="carousel-inner">
        <div class="carousel-item active" style = "height:650px">
            <img src="<c:url value="/template/web/Images/slide1.jpg"/>" alt="Los Angeles">
        </div>
        <div class="carousel-item" style = "height:650px">
            <img src="<c:url value="/template/web/Images/slide2.jpg"/>" alt="Chicago">
        </div>
        <div class="carousel-item" style = "height:650px">
            <img src="<c:url value="/template/web/Images/slide3.jpg"/>" alt="New York">
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>
<!--On sale product-->
<section class="on-sale" style = "margin-top: 20px">
    <div class="container">
        <div class = "title-box">
            <h2>Bán chạy</h2>
        </div>
        <div class = "row">
            <c:forEach items="${listP}" var="o">
                <div class = "col-md-3">
                    <div class = "product-top">
                        <img src= "${o.image}">
                        <div class = "overlay-right">
                            <button type = "button" class= "btn" title = "Quick shop" onclick="window.location.href='detail?pid=${o.id}'">
                                <i class="fas fa-eye"></i>
                            </button>
                            <button type = "button" class= "btn" title = "Add to Wishlist" onclick="window.location.href='heart?id=${o.id}'">
                                <i class="fas fa-heart"></i>
                            </button>
                            <button type = "button" class= "btn" title = "Add to cart" onclick="window.location.href='cart?id=${o.id}'">
                                <i class="fas fa-shopping-cart"></i>
                            </button>
                        </div>
                    </div>
                    <div class = "product-bottom text-center">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <h3>${o.name}</h3>
                        <h6 style = "color: grey;">${o.title}</h6>
                        <h4 style = "color: red">${o.price} VND</h4>
                    </div>
                </div>
            </c:forEach>
        </div><!--row-->
    </div><!--container-->
</section>
<!--featured-->
<section class="featured-categories">
    <div class = "container">
        <div class = "row">
            <div class = "col-md-5">
                <a href="female"><img src= "<c:url value="/template/web/Images/1.jpg"/>"></a>
            </div>
            <div class = "col-md-7">
                <h2>SNEAKER NĂNG ĐỘNG</h2>
                <P>Sneaker đã trở thành một biểu tượng của xã hội, là một sản phẩm của thời đại với những thiết kế cổ điển và những điều đó đều nằm trong những đôi giày Sneaker Delta Shoes. Không lỗi thời với thời gian, mang dấu ấn cá tính khác biệt và tạo mọi sự lôi cuốn từ chính đôi giày Sneaker. Tự tạo cuộc chơi, tự tạo phong cách, đó là Delta Shoes</P>
                <a href="male">XEM TẤT CẢ &#707;</a>
            </div>
        </div>
    </div>
</section>
<!--best seller-->
<section class="on-sale" style = "margin-top: 20px">
    <div class="container">
        <div class = "title-box">
            <h2>Giảm giá</h2>
        </div>
        <div class = "row">
            <c:forEach items="${listP}" var="o">
                <div class = "col-md-3">
                    <div class = "product-top">
                        <img src= "${o.image}">
                        <div class = "overlay-right">
                            <button type = "button" class= "btn" title = "Quick shop" onclick="window.location.href='detail?pid=${o.id}'">
                                <i class="fas fa-eye"></i>
                            </button>
                            <button type = "button" class= "btn" title = "Add to Wishlist" onclick="window.location.href='heart?id=${o.id}'">
                                <i class="fas fa-heart"></i>
                            </button>
                            <button type = "button" class= "btn" title = "Add to cart" onclick="window.location.href='cart?id=${o.id}'">
                                <i class="fas fa-shopping-cart"></i>
                            </button>
                        </div>
                    </div>
                    <div class = "product-bottom text-center">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <h3>${o.name}</h3>
                        <h6 style = "color: grey;">${o.title}</h6>
                        <h4 style = "color: red">${o.price} VND</h4>
                    </div>
                </div>
            </c:forEach>
        </div><!--row-->
    </div><!--container-->
</section>
</body>
</html>
