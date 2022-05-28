<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/29/2021
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Đơn hàng</title>
</head>
<body>
<div class="container acc">
    <div class="row">
        <div class="col-md-12 text-center" style = "margin: 40px 0 40px 0">
            <h4>DANH SÁCH ĐƠN HÀNG TRÊN WEBSITE</h4>
        </div>
        <div class="col-md-3 acc1">
            <h5>TÀI KHOẢN</h5>
            <hr><br>
            <a href="<c:url value="/account"/>"><i class="fas fa-user"></i> Thông tin tài khoản</a><br>
            <a href="<c:url value="/showOrder"/>"><i class="fas fa-tasks"></i> Quản lí đơn hàng</a><br>
            <a href="#editPass" data-toggle="modal"><i class="fas fa-lock"></i> Đổi mật khẩu</a><br>
            <a href="<c:url value="/logout"/>"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
        </div>
        <div class="col-md-9 acc2">
            <h5>Danh sách đơn hàng mới nhất</h5>
            <hr><br>
            <c:forEach items="${listO}" var="o">
            <label style = "margin-right: 20px">Mã đơn hàng: <i>${o.oderId}</i></label>
            <label style = "margin-right: 20px">Tình trạng: <i>${o.status}</i></label>
            <label>Đơn giá: <i>${o.total} VNĐ</i></label>
                <br>
            </c:forEach>
        </div>
    </div>
</div>
<!--Edit-Password-->
<div id="editPass" class="modal fade" style = "margin-top: 150px;">
    <div class="modal-dialog" style = "width: 400px">
        <div class="modal-content">
            <form action="changePassword" method="get">
                <div class="modal-header">
                    <h4 class="modal-title">Đổi mật khẩu</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="input-group" style = "margin-bottom: 20px;">
                        <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fas fa-envelope"></i>
                                </span>
                        </div>
                        <input name = "email" value="${sessionScope.acc.email}" type="text"  class="form-control" placeholder="Email" readonly required>
                    </div>

                    <div class="input-group" style = "margin-bottom: 20px;">
                        <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fas fa-lock"></i>
                                </span>
                        </div>
                        <input name = "pass" type="password"  class="form-control" placeholder="Mật khẩu">
                    </div>
                    <div class="input-group" style = "margin-bottom: 20px;">
                        <div class="input-group-prepend">
                              <span class="input-group-text">
                                  <i class="fas fa-lock"></i>
                              </span>
                        </div>
                        <input name = "cfPass" type="password" class="form-control" placeholder="Xác nhận mật khẩu">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                    <input type="submit" class="btn btn-success" value="Cập nhật">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
