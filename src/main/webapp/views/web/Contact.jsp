<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Liên hệ</title>
</head>
<body>
<div class="container-fluid">
    <div class="row contact">
        <div class="col-md-12 col1">
            <iframe class = "map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6592.237126713485!2d108.25137755263593!3d15.97311230237625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421972d8f017d3%3A0xc76fba8f369ddbb2!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4sIMSQ4bqhaSBo4buNYyDEkMOgIE7hurVuZw!5e0!3m2!1svi!2s!4v1620393282299!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
</div>
<div class="container">
    <div class="row contact">
        <div class="col-md-12 text-center col2">
            <h1>Liên hệ với chúng tôi</h1>
            <h6>Nếu có bất kì thắc mắc hoặc đánh giá chất lượng phục vụ hãy liên hệ chúng tôi.</h6>
        </div>
        <div class = "col-md-7 col2">
            <div class="col-md-12">
                <h4>Để lại lời nhắn cho chúng tôi</h4>
                <h6 style = "text-align: justify;">Bạn cần chia sẻ thông tin hoặc muốn góp ý về chất lượng phục vụ. Hãy để lại lời nhắn để giúp chúng tôi hoàn thiện hơn.</h6>
            </div>
            <div class="col-md-4">
                <h5>Họ và tên*</h5>
                <input type="text" class="form-control">
            </div>
            <div class="col-md-4">
                <h5>Email*</h5>
                <input type="text" class="form-control">
            </div>
            <div class="col-md-4">
                <h5>SĐT*</h5>
                <input type="text" class="form-control">
            </div>
            <div class="col-md-12">
                <h5>Bạn cần tư vấn*</h5>
                <textarea class="form-control" rows="4" id="comment"></textarea>
            </div>
        </div>
        <div class="col-md-5 col2">
            <h4>Địa chỉ</h4>
            <p>470 Trần Đại Nghĩa, Phường Hòa Hải, Quận Ngũ Hành Sơn, TP.Đà Nẵng</p>
            <p><i class="fas fa-phone"></i> 0968604438</p>
            <p><i class="fas fa-envelope"></i> ldatuan.20it7@vku.udn.vn</p>
            <h4>Giờ mở cửa</h4>
            <p>9.00 am - 14.00pm, 18.00pm - 21.30pm</p>
        </div>
        <div class="col-md-12 text-center col2">
            <button type="button" class="btn btn-danger">Gửi phản hồi</button>
        </div>
    </div>
</div>
</body>
</html>
