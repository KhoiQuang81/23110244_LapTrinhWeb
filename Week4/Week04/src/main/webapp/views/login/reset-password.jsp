<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đặt lại mật khẩu</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background: #f1f5f9;
        }
        .reset-card {
            border-radius: 16px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.08);
            background: #fff;
            padding: 2rem;
        }
        .reset-card h2 {
            font-weight: 600;
            font-size: 1.4rem;
        }
        .input-group-text {
            background: #f8f9fa;
            border-radius: 10px 0 0 10px;
        }
        .form-control {
            border-radius: 0 10px 10px 0;
        }
        .btn-primary {
            border-radius: 10px;
            background: linear-gradient(90deg,#0d6efd,#3b82f6);
            border: none;
            font-weight: 500;
            padding: 10px;
        }
        .btn-primary:hover {
            background: #0b5ed7;
        }
        .text-center a {
            font-size: 0.9rem;
            color: #374151;
        }
        .text-center a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">

<form action="${pageContext.request.contextPath}/reset-password" method="post" class="reset-card w-100" style="max-width: 420px;">
    <h2 class="mb-4 text-center"><i class="fa fa-unlock-alt me-2 text-primary"></i>Đặt lại mật khẩu</h2>

    <c:if test="${not empty alert}">
        <div class="alert alert-danger">${alert}</div>
    </c:if>

    <input type="hidden" name="email" value="${email}">

    <div class="input-group mb-3">
        <span class="input-group-text"><i class="fa fa-lock"></i></span>
        <input type="password" placeholder="Mật khẩu mới" name="newPassword" class="form-control" required minlength="6">
    </div>

    <div class="input-group mb-4">
        <span class="input-group-text"><i class="fa fa-lock"></i></span>
        <input type="password" placeholder="Xác nhận mật khẩu mới" name="confirmPassword" class="form-control" required minlength="6">
    </div>

    <button type="submit" class="btn btn-primary w-100">Đặt lại mật khẩu</button>

    <div class="text-center mt-3">
        <a href="${pageContext.request.contextPath}/login">Quay lại đăng nhập</a>
    </div>
</form>

</body>
</html>
