<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 8:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Admin-edit</title>
</head>
<body>
<div class="container" style = "margin-top: 50px">
    <div id="editEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="admin-edit" method="get">
                    <div class="modal-header">
                        <h4 class="modal-title">Cập nhật sản phẩm</h4>
                        <button type="button" onclick="window.location.href='admin-product'" >&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>ID</label>
                            <input value="${detail.id}" name="id" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <textarea name="name" class="form-control" required>${detail.name}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input value="${detail.price}" name="price" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Title</label>
                            <input value="${detail.title}" name="title" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Color</label>
                            <input value="${detail.color}" name="color" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input value="${detail.image}" name="image" type="text" class="form-control" required>
                        </div>
                        <div class = "form-group">
                            <label>Gender</label>
                            <select name = "gender" class="form-select" aria-label="Default select exemple" style = "width: 100px;margin-left: 40px">
                                <option value="1">Nam</option>
                                <option value="0">Nữ</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-light" onclick="window.location.href='admin-product'" value="Hủy">
                        <input type="submit" class="btn btn-success" value="Cập nhật">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>