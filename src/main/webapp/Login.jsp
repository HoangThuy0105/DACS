<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>
<!-- body -->

<div class = "container-fluid" style ="height:790px;background-color: #054d50; background-image: linear-gradient(to bottom right, #054d50, #CAE5E8);">
    <div class = "row justify-content-center">
        <div class = "col-md-3" style = "margin-top: 150px">
            <div class="shadow-lg p-4 mb-4 bg-white">
                <form action="login" method="post">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                        <input type="text" value="${username}" class="form-control" placeholder="Email" id="username" name="username">
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-lock"></i>
                            </span>
                        </div>
                        <input type="password" value="${password}" class="form-control" placeholder="Mật khẩu" id="password" name="password">
                    </div>
                    <p class = "text-danger" style = "font-size: 12px">${mess}</p>
                    <div class = "input-group mb-3">
                        <button type="submit" class="btn btn-primary form-control">Đăng nhập</button>
                    </div>
                    <input name="remember" value="1" type="checkbox">
                    <label>Lưu mật khẩu</label>
                    <a href="<c:url value="/Signup.jsp "/>" style = "color: blue">
                        <center>Chưa có tài khoản? Đăng kí</center>
                    </a>
                    <a href="#Forgotpassword" data-toggle="modal" style = "color: blue">
                        <center>Quên mật khẩu</center>
                    </a>
                    <div class = "input-group mb-3" style  = "margin-top:10px">
                        <button type="button" class="btn btn-outline-primary form-control">Đăng nhập bằng Facebook</button>
                    </div>
                    <div class = "input-group mb-3">
                        <button type="button" class="btn btn-outline-danger form-control">Đăng nhập bằng Google</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="Forgotpassword" class="modal fade" style = "margin-top:150px">
    <div class="modal-dialog" style = "width: 400px">
        <div class="modal-content">
            <form action="login-getPassword" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Quên mật khẩu</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="input-group" style = "margin-bottom: 20px;">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                        <input name = "email" type="text" class="form-control" placeholder="Email">
                    </div>

                    <div class="input-group" style = "margin-bottom: 20px;">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-lock"></i>
                            </span>
                        </div>
                        <input name = "pass" type="password" class="form-control" placeholder="Mật khẩu">
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

