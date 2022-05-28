<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 6/3/2021
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Admin-editOrder</title>
</head>
<body>
<div class="container" style = "margin-top: 50px">
    <div id="editEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="admin-editOrder" method="get">
                    <div class="modal-header">
                        <h4 class="modal-title">Cập nhật đơn hàng</h4>
                        <button type="button" onclick="window.location.href='admin-oder'">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Mã đơn hàng</label>
                            <input value="${order.oderId}" name="id" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>Họ và tên</label>
                            <input value="${order.name}" name="name" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input value="${order.phone}" name="phone" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>Trạng thái</label>
                            <select name = "status" style = "width:100%; border: 1px solid rgb(209, 209, 209); height: 40px;">
                                <option value="Đơn hàng mới">Đơn hàng mới</option>
                                <option value="Đang xử lí">Đang xử lí</option>
                                <option value="Hoàn tất">Hoàn tất</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Tổng tiền</label>
                            <input value="${order.total}" name="total" type="text" class="form-control" readonly required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-light" onclick="window.location.href='admin-oder'" value="Hủy">
                        <input type="submit" class="btn btn-success" value="Cập nhật">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
