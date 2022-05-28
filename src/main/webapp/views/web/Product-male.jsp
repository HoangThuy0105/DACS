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
    <title>Nam</title>
</head>
<body>
<!--All product-->
<section class="on-sale">
    <div class="container">
        <div class="row row-2">
            <div class = "title-box">
                <h2>NAM</h2>
            </div>
        </div>

        <div class = "row" id="content">
            <c:forEach items="${listPM}" var="o">
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
        <ul class="pagination" style = "margin-top: 50px">
            <li class="page-item ${tag > 1?"":"disabled"}"><a class="page-link" href="male?index=${tag-1}">Previous</a></li>
            <c:forEach begin="1" end="${endP}" var="i">
                <li class="page-item ${tag == i?"active":""}"><a class="page-link" href="male?index=${i}">${i}</a></li>
            </c:forEach>
            <li class="page-item ${tag < endP?"":"disabled"}"><a class="page-link" href="male?index=${tag+1}">Next</a></li>
        </ul>
    </div><!--container-->
</section>

<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"/>"></script>
<script>
    function searchByName(param){
        var txtSearch = param.value;
        $.ajax({
            url:"/DACS1_war_exploded/searchAjax",
            type: "get",
            data:{
                txt: txtSearch
            },
            success: function (data){
                var row = document.getElementById("content");
                row.innerHTML = data;
            },
            error: function (xhr){
            }
        });
    }
</script>
</body>
</html>

