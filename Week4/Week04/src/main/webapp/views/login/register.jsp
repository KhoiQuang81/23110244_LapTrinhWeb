<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký tài khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background: #f1f5f9;
        }
        .card {
            border-radius: 18px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.08);
        }
        .card-header {
            background: linear-gradient(90deg, #16a34a, #22c55e);
            color: white;
            border-radius: 18px 18px 0 0;
        }
        .input-group-text {
            background: #f1f5f9;
            border-radius: 10px 0 0 10px;
        }
        .form-control {
            border-radius: 0 10px 10px 0;
        }
        .btn-success {
            border-radius: 10px;
            padding: 10px;
            font-weight: 500;
        }
        .btn-success:hover {
            background-color: #15803d;
        }
        .text-center a {
            text-decoration: none;
            font-size: 0.9rem;
            color: #2563eb;
        }
        .text-center a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <div class="card">
                <div class="card-header text-center">
                    <h3 class="mb-0"><i class="fa fa-user-plus me-2"></i>Tạo tài khoản mới</h3>
                </div>
                <div class="card-body p-4">
                    <!-- Hiển thị thông báo lỗi -->
                    <c:if test="${not empty alert}">
                        <div class="alert alert-danger">${alert}</div>
                    </c:if>

                    <form action="${pageContext.request.contextPath}/register" method="post">
                        <div class="mb-3">
                            <label for="username" class="form-label">Tên đăng nhập</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Tài khoản" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="fullname" class="form-label">Họ tên</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-id-card"></i></span>
                                <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Họ tên" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="phone" class="form-label">Số điện thoại</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-phone"></i></span>
                                <input type="tel" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Mật khẩu</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="confirmPassword" class="form-label">Xác nhận mật khẩu</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Nhập lại mật khẩu" required>
                            </div>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-success">Đăng ký</button>
                        </div>
                    </form>

                    <div class="text-center mt-3">
                        <p>Đã có tài khoản? <a href="${pageContext.request.contextPath}/login">Đăng nhập ngay</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
