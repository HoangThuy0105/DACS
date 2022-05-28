<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/25/2021
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <title>Tài khoản</title>
</head>
<body>
<div class="container acc">
  <div class="row">
    <div class="col-md-12 text-center" style = "margin: 40px 0 40px 0">
      <h3>TÀI KHOẢN CỦA BẠN</h3>
    </div>
    <div class="col-md-3 acc1">
      <h5>TÀI KHOẢN</h5>
      <hr><br>
      <a href="<c:url value="/account"/>"><i class="fas fa-user" style = "margin-bottom: 10px;"></i> Thông tin tài khoản</a><br>
      <a href="<c:url value="/showOrder"/>"><i class="fas fa-tasks" style = "margin-bottom: 10px;"></i> Quản lí đơn hàng</a><br>
      <a href="#editPass" data-toggle="modal"><i class="fas fa-lock" style = "margin-bottom: 10px;"></i> Đổi mật khẩu</a><br>
      <a href="<c:url value="/logout"/>"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
    </div>
    <div class="col-md-6 acc2">
      <h5>Thông tin tài khoản</h5>
      <hr><br>
      <p>Họ và tên:<i> ${sessionScope.acc.name}</i></p>
      <p>Email: <i> ${sessionScope.acc.email}</i></p>
      <p>Địa chỉ:<i> ${info.address}</i></p>
      <p>Điện thoại:<i> ${info.phone}</i></p>
    </div>
    <div class="col-md-3 acc3">
      <input href = "#editAccount" data-toggle="modal" type="button" value="&#9998; Cập nhật thông tin tài khoản">
    </div>
  </div>
</div>
<!--Edit-Account-->
<div id="editAccount" class="modal fade" style = "margin-top: 100px">
  <div class="modal-dialog" style = "width: 400px;">
    <div class="modal-content">
      <form action="editAcc" method="get">
        <div class="modal-header">
          <h4 class="modal-title">Cập nhật tài khoản</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>Họ và tên</label>
            <input value="${sessionScope.acc.name}" name="name" class="form-control" readonly required>
          </div>
          <div class="form-group">
            <label>Email</label>
            <input value="${sessionScope.acc.email}" name="email" class="form-control" readonly required>
          </div>
          <div class="form-group">
            <label>Số điện thoại</label>
            <input value="${info.phone}" name="phone" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Địa chỉ</label>
            <textarea name="address" type="text" class="form-control" required>${info.address}</textarea>
          </div>
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-light" data-dismiss="modal" value="Hủy">
          <input type="submit" class="btn btn-success" value="Cập nhật">
        </div>
      </form>
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
            <input  value="${sessionScope.acc.email}" name = "email" type="text" class="form-control" placeholder="Email" readonly required>
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
          <input type="button" class="btn btn-light" data-dismiss="modal" value="Hủy">
          <input type="submit" class="btn btn-success" value="Cập nhật">
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
