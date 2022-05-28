<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <title>Giảm giá</title>
</head>
<body>
<!--All product-->
<section class="on-sale">
  <div class="container">
    <div class="row row-2">
      <div class = "title-box">
        <h2>GIẢM GIÁ</h2>
      </div>
      <select>
        <option value="">Tất cả sản phẩm</option>
        <option value="">Sản phẩm mới</option>
        <option value="">Bán chạy</option>
        <option value="">Giảm giá</option>
      </select>
    </div>

    <div class = "row">
      <c:forEach items="${listS}" var="o">
        <div class = "col-md-3">
          <div class = "product-top">
            <img src= "${o.image}">
            <div class = "overlay-right">
              <button type = "button" class= "btn" title = "Quick shop" onclick="window.location.href='detail?pid=${o.id}'">
                <i class="fas fa-eye"></i>
              </button>
              <button type = "button" class= "btn" title = "Add to Wishlist">
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
    <ul class="pagination" style = "margin-top: 50px">
      <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
    </ul>
  </div><!--container-->
</section>
</body>
</html>

