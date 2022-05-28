<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 7:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Đăng kí</title>
</head>
<body>
<!-- body -->
<div class= "container-fluid" style ="height:790px;background-color: #054d50; background-image: linear-gradient(to bottom right, #054d50, #CAE5E8);">
    <div class = "row justify-content-center">
        <div class = "col-md-3" style = "margin-top: 150px">
            <div class="shadow-lg p-4 mb-4 bg-white">
                <form action="signup" method="get">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="fas fa-user"></i>
                          </span>
                        </div>
                        <input type="text" class="form-control" placeholder="Họ và tên"  name="fullname">
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="fas fa-envelope"></i>
                          </span>
                        </div>
                        <input type="text" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="fas fa-lock"></i>
                          </span>
                        </div>
                        <input type="password" class="form-control" placeholder="Mật khẩu" name="password">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="fas fa-lock"></i>
                          </span>
                        </div>
                        <input type="password" class="form-control" placeholder="Xác nhận mật khẩu" name="repass">
                    </div>
                    <p class = "text-danger" style = "font-size: 12px">${mess}</p>
                    <div class = "input-group mb-3">
                        <button type="submit" class="btn btn-primary form-control">Đăng ký</button>
                    </div>
                    <a href="<c:url value="/Login.jsp"/>"><i class="fas fa-angle-left"></i> Quay lại</a>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

