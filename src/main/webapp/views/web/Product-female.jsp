<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <title>Nữ</title>
</head>
<body>
<!--All product-->
<section class="on-sale">
  <div class="container">
    <div class="row row-2">
      <div class = "title-box">
        <h2>NỮ</h2>
      </div>
      <select>
        <option value="">Tất cả sản phẩm</option>
        <option value="">Sản phẩm mới</option>
        <option value="">Bán chạy</option>
        <option value="">Giảm giá</option>
      </select>
    </div>
    <div id="content" class = "row">
      <c:forEach items="${listPF}" var="o">
        <div class = "product col-md-3">
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
    <button onclick="loadMore()" class = "btn btn-primary">Thêm</button>
  </div><!--container-->
</section>
<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"/>"></script>
<script>
  function loadMore(){
    var amount = document.getElementsByClassName("product").length;
    $.ajax({
      url:"/DACS1_war_exploded/loadMore",
      type: "get",
      data:{
        exits: amount
      },
      success: function (data){
        var row = document.getElementById("content");
        row.innerHTML += data;
      },
      error: function (xhr){
      }
    });
  }
</script>
</body>
</html>

