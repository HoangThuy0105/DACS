<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/24/2021
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Blogs</title>
</head>
<body>
<div class="container-fluid blog">
    <div class="row">
        <div class="col-md-8">
            <img src="<c:url value="/template/web/Images/blog_1.jpg"/>">
        </div>
        <div class="col-md-4">
            <h2>VỀ TTSHOES</h2>
            <h6>BỨT PHÁ ĐỂ THÀNH CÔNG</h6>
            <p>Qua hơn 1 năm hoạt động sản xuất kinh doanh với bao thăng trầm và thách thức, giờ đây TTShoes đã lớn mạnh và phát triển đi lên cùng đất nước, trở thành một thương hiệu uy tín, tin cậy và quen thuộc với người tiêu dùng và là niềm tự hào của người Việt Nam về một “Thương hiệu Quốc gia” trong lĩnh vực Giày dép uy tín và chất lượng.</p>
            <a href="<c:url value="/views/web/Introduce.jsp"/>">Đọc thêm</a>
            <label>| 24.05.2021</label>
        </div>
    </div>
</div><!--container-fluid-->
<div class="container blogs">
    <div class="row">
        <div class="col-md-6">
            <img src = "<c:url value="/template/web/Images/blog2.jpg"/>">
            <h4>URBAS CORLURAY PACK</h4>
            <p>Urbas Corluray Pack đem đến lựa chọn “làm mới mình” với sự kết hợp 5 gam màu mang sắc thu; phù hợp với những người trẻ năng động, mong muốn thể hiện cá tính riêng biệt khó trùng lặp.</p>
            <a href="#">Đọc thêm</a>
            <label>| 24.05.2021</label>
        </div>
        <div class="col-md-6">
            <img src = "<c:url value="/template/web/Images/blog3.jpg"/>">
            <h4>VINTAS SAIGON 1980s</h4>
            <p>Với bộ 5 sản phẩm, Vintas Saigon 1980s Pack đem đến một sự lựa chọn “cũ kỹ thú vị” cho những người trẻ sống giữa thời hiện đại nhưng lại yêu nét bình dị của Sài Gòn ngày xưa ...</p>
            <a href="#">Đọc thêm</a>
            <label>| 24.07.2020</label>
        </div>
        <div class="col-md-6" style = "margin-top:50px">
            <img src = "<c:url value="/template/web/Images/blog4.jpg"/>">
            <h4>SNEAKER FEST VIETNAM VÀ SỰ KẾT HỢP</h4>
            <p>Việc sử dụng dáng giày Vulcanized High Top của Ananas trong thiết kế và cảm hứng bắt nguồn từ linh vật Peeping - đại diện cho tinh thần xuyên suốt 6 năm qua Sneaker Fest Vietnam...</p>
            <a href="#">Đọc thêm</a>
            <label>| 24.05.2020</label>
        </div>
        <div class="col-md-6" style = "margin-top:50px">
            <img src = "<c:url value="/template/web/Images/blog5.jpg"/>">
            <h4>"GIẢI PHẪU" GIÀY VULCANIZED</h4>
            <p>Trong phạm vi bài viết ngắn, hãy cùng nhau tìm hiểu cấu tạo giày Vulcanized Sneaker - loại sản phẩm mà Ananas đã chọn làm "cốt lõi" để theo đuổi trong suốt hành trình của mình...</p>
            <a href="#">Đọc thêm</a>
            <label>| 14.04.2020</label>
        </div>
    </div><!--row-->
</div><!--container-->
</body>
</html>
