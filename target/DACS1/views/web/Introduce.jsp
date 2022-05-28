<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 6/5/2021
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Về TTShoes</title>
    <style>
        .introduceImg{
            display: flex;
            width: 100%;
            height: 655px;
            background-image: url('<c:url value="/template/web/Images/gioithieu.jpeg"/>');
            background-size:100% 100%;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" style = "padding-left: 0px;padding-right: 0px;">
            <div class="container">
                <div class="col-md-6">
                    <h1 class = "text">NHỮNG BƯỚC CHÂN KHÔNG MỎI</h1>
                    <p class = "text1">Từ một cơ sở sản xuất nhỏ khởi nghiệp từ năm 2020 chỉ với 20 công nhân nhưng có sự quyết tâm cao độ, ý chí và luôn tự khiêm tốn để cải cách tiến lên, TTShoes đã trải qua giai đoạn dịch bệnh Covid-19 với nhiều khó khăn để khẳng định vị trí của mình.</p>
                    <p class = "text2">Hơn một năm trôi qua, như một "bước chân không mỏi", TTShoes đã cải tiến và đổi mới không ngừng, từng bước xây dựng cho mình một thương hiệu giày dép rất đa dạng về hình thức và mẫu mã, cùng với đó là chiến lược sản xuất và xuất nhập khẩu mang tầm thời đại, nguồn vật lực - tài lực - nhân lực năng động, nhiệt huyết, đủ sức để cạnh tranh với các thương hiệu lớn trên thế giới.</p>
                </div>
            </div>
            <img src="<c:url value="/template/web/Images/gioithieu.jpeg"/>" style = "width:100%; height:655px">
        </div>
        <div class="col-md-7 introduce1">
            <img src="<c:url value="/template/web/Images/gioithieu1.jpg"/>">
        </div>
        <div class="col-md-5 introduce1" style = "padding-right: 70px;">
            <h1>TẦM NHÌN</h1>
            <p>Trở thành thương hiệu sản xuất giày dép lớn mạnh tại khu vực Đông Nam Á.</p>
            <p>Quyết định xây dựng tầm nhìn và khẳng định diện mạo nhằm phát triển thương hiệu thành một thương hiệu lớn mạnh và ngày càng phát triển không chỉ trong nước mà còn rộng khắp trên toàn thế giới, giữ vững vị trí hàng đầu tại Việt Nam và hội nhập tích cực với quốc tế, trở thành thương hiệu sản xuất giày dép lớn mạnh tại khu vực Đông Nam Á.</p>
            <p style = "color: gray;"><i>CEO Lê Đức Anh Tuấn</i></p>
        </div>

        <div class="col-md-5 introduce2">
            <h1>SỨ MỆNH</h1>
            <p>Không ngừng cải tiến, nâng cao chất lượng cung cấp sản phẩm đúng ý nghĩa của bản sắc thương hiệu TTShoes "Uy tín - chất lượng".</p>
            <p>Chúng tôi cam kết sẽ không ngừng cải tiến, nâng cao chất lượng cung cấp sản phẩm, đáp ứng ngày một tốt hơn yêu cầu ngày càng cao và đa dạng của quý khách hàng, đúng như ý nghĩa của bản sắc thương hiệu TTShoes "Uy tín - chất lượng", tạo dựng niềm tin lâu dài đối với tất cả khách hàng.</p>
            <p style = "color: gray;"><i>Founder Hoàng Lệ Thủy</i></p>
        </div>
        <div class="col-md-7 introduce1" style="margin-top:30px">
            <img src="<c:url value="/template/web/Images/gioithieu2.jpg"/>">
        </div>
    </div>
</div>
</body>
</html>
