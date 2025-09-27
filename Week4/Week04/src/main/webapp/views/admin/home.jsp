<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ - Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background: #f8fafc;
        }
        h1 {
            font-weight: 600;
            border-bottom: 3px solid #e9ecef;
            padding-bottom: 12px;
        }
        .card {
            border-radius: 14px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }
        .card h5 i {
            font-size: 1.2rem;
            margin-right: 6px;
        }
        .welcome-card {
            border-left: 5px solid #0d6efd;
            background: #f1f5ff;
        }
    </style>
</head>
<body>
<!-- Header -->
<%@ include file="/common/admin/header.jsp"%>

<div class="container-fluid mt-4">
    <div class="row">
        <div class="col-12">
            <h1 class="mb-4"><i class="fas fa-tachometer-alt text-primary"></i> Admin Dashboard</h1>

            <div class="row mb-4 g-4">
                <div class="col-md-3">
                    <div class="card bg-primary text-white">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fa fa-list"></i> Quản lý Danh mục</h5>
                            <p class="card-text">Xem và quản lý danh mục</p>
                            <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-outline-light btn-sm">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-success text-white">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fa fa-chart-bar"></i> Thống kê</h5>
                            <p class="card-text">Xem thống kê hệ thống</p>
                            <a href="#" class="btn btn-outline-light btn-sm">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-warning text-white">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fa fa-cogs"></i> Cài đặt</h5>
                            <p class="card-text">Cài đặt hệ thống</p>
                            <a href="#" class="btn btn-outline-light btn-sm">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-info text-white">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fa fa-file-alt"></i> Báo cáo</h5>
                            <p class="card-text">Xem báo cáo</p>
                            <a href="#" class="btn btn-outline-light btn-sm">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card welcome-card">
                        <div class="card-header bg-white">
                            <h5 class="card-title mb-0"><i class="fa fa-handshake text-primary me-2"></i>Chào mừng đến với Admin Panel</h5>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Đây là trang quản trị của hệ thống. Bạn có thể sử dụng các chức năng sau:</p>
                            <ul>
                                <li>Quản lý người dùng</li>
                                <li>Xem thống kê hệ thống</li>
                                <li>Cài đặt hệ thống</li>
                                <li>Xem báo cáo</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/common/admin/footer.jsp"%>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</html>
