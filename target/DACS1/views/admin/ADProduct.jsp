<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/23/2021
  Time: 8:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Admin-Product</title>
</head>
<body>
<div class="container managerPage">
    <table class="table table-hover">
        <thead>
        <tr class = "bg-info">
            <th colspan="4" style = "vertical-align: middle; font-size:24px">ManagerProduct</th>
            <th colspan="2" style = "text-align:right;">
                <button type="button" class="btn btn-danger"><i class="fas fa-minus-circle"></i> Delete</button>
                <button type="button" class="btn btn-success" href="#addEmployeeModal"  data-toggle="modal"><i class="fas fa-plus-circle"></i> Add new product</button>
            </th>
        </tr>
        <tr>
            <th style = "width:3%"></th>
            <th style = "width:13%">Title</th>
            <th style ="width: 35%">Name</th>
            <th>Images</th>
            <th style = "width:18%">Price</th>
            <th style = "width:10%;">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listP}" var="o">
            <tr>
                <td><input type="checkbox"></td>
                <td>${o.title}</td>
                <td class = "th1">${o.name}</td>
                <td><img src="${o.image}"></td>
                <td>${o.price}</td>
                <td>
                    <a href="admin-load?pid=${o.id}" title="Edit"><i style = "color:orange; margin-right: 15px;font-size:18px" class="fas fa-edit"></i></a>
                    <a href="delete?pid=${o.id}" title="Delete"><i style = "color: red; font-size: 18px" class="fas fa-trash"></i></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="add" method="get">
                <div class="modal-header">
                    <h4 class="modal-title">Add Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID</label>
                        <input name="id" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <textarea name="name" type="text" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Price</label>
                        <input name="price" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Title</label>
                        <input name="title" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Color</label>
                        <input name="color" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Image</label>
                        <input name="image" type="text" class="form-control" required>
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
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                    <input type="submit" class="btn btn-success" value="Thêm">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
