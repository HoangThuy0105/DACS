<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 6/4/2021
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Admin-Home</title>
</head>
<body>
<div class="wrapper">
    <div class="page-wrapper">
        <div class="content-wrapper">
            <div class="content">
                <!-- Top Statistics -->
                <div class="row">
                    <div class="col-xl-3 col-sm-6">
                        <div class="card card-mini mb-4">
                            <div class="card-body">
                                <h2 class="mb-1"><b>${totalAcc}</b></h2>
                                <p>Tổng số tài khoản</p>
                                <div class="chartjs-wrapper">
                                    <canvas id="barChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="card card-mini  mb-4">
                            <div class="card-body">
                                <h2 class="mb-1"><b>${totalP}</b></h2>
                                <p>Tổng số sản phẩm</p>
                                <div class="chartjs-wrapper">
                                    <canvas id="dual-line"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="card card-mini mb-4">
                            <div class="card-body">
                                <h2 class="mb-1"><b>${totalO}</b></h2>
                                <p>Tổng số đơn hàng</p>
                                <div class="chartjs-wrapper">
                                    <canvas id="area-chart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="card card-mini mb-4">
                            <div class="card-body">
                                <h2 class="mb-1"><b>${total}</b></h2>
                                <p>Doanh thu (triệu VNĐ)</p>
                                <div class="chartjs-wrapper">
                                    <canvas id="line"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-xl-8 col-md-12">
                        <!-- Sales Graph -->
                        <div class="card card-default" data-scroll-height="675">
                            <div class="card-header">
                                <h2>Sales Of The Year</h2>
                            </div>
                            <div class="card-body">
                                <canvas id="linechart" class="chartjs"></canvas>
                            </div>
                            <div class="card-footer bg-white p-0">
                                <div class="col-6 px-0">
                                    <div class="text-center p-4" style = "background: rgba(0, 0, 0, 0.03); height: 120px">
                                        <p style ="font-size: 22px">Doanh thu (triệu VNĐ)</p>
                                        <h4><b>${total}</b></h4>
                                    </div>
                                </div>
                                <div class="col-6 px-0">
                                    <div class="text-center p-4 border-left" style = "background: rgba(0, 0, 0, 0.03); height: 120px">
                                        <p style = "font-size: 22px">Lợi nhuận (triệu VNĐ)</p>
                                        <h4><b>${profit}</b></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-12">
                        <!-- Doughnut Chart -->
                        <div class="card card-default" data-scroll-height="675">
                            <div class="card-header justify-content-center">
                                <h2>Orders Overview</h2>
                            </div>
                            <div class="card-body" style = "margin-top: 61px">
                                <canvas id="doChart" ></canvas>
                            </div>
                            <div class="card-footer d-flex flex-wrap bg-white p-0" style = "margin-top: 61px;">
                                <div class="col-6">
                                    <div class="py-4 px-4">
                                        <ul class="d-flex flex-column justify-content-between">
                                            <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #4c84ff"></i>Order Completed</li>
                                            <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #80e1c1 "></i>Order Unpaid</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-6 border-left">
                                    <div class="py-4 px-4 ">
                                        <ul class="d-flex flex-column justify-content-between">
                                            <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #8061ef"></i>Order Pending</li>
                                            <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #ffa128"></i>Order Canceled</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
