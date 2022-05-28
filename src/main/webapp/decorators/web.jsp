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
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title><dec:title default="Trang chủ"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" />
    <link rel="stylesheet" type= "text/css" href="<c:url value="/template/web/style.css"/>">
</head>
<body>
<!-- header -->
<%@include file="/common/web/header.jsp"%>
<!-- header -->

<dec:body/>

<!-- footer -->
<%@include file="/common/web/footer.jsp"%>
<!-- footer -->
<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"/>"></script>
<script src="<c:url value = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"/>"></script>
<script src="<c:url value = "https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"/>"></script>
<script>
    var ProductImg = document.getElementById("ProductImg");
    var SmallImg = document.getElementsByClassName("small-img");
    SmallImg[0].onclick = function(){
        ProductImg.src= SmallImg[0].src;
    }
    SmallImg[1].onclick = function(){
        ProductImg.src= SmallImg[1].src;
    }
    SmallImg[2].onclick = function(){
        ProductImg.src= SmallImg[2].src;
    }
    SmallImg[3].onclick = function(){
        ProductImg.src= SmallImg[3].src;
    }
    SmallImg[4].onclick = function(){
        ProductImg.src= SmallImg[4].src;
    }
</script>

</body>
</html>

