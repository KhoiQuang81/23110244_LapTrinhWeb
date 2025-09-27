<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm danh mục mới</title>
    <!-- Bootstrap 5 & Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            background: #f1f5f9;
        }
        .card {
            border-radius: 20px;
            border: 1px solid #e2e8f0;
            background: #ffffff;
            box-shadow: 0 4px 14px rgba(0,0,0,0.05);
        }
        .card h4 {
            font-weight: 600;
            font-size: 1.4rem;
            border-bottom: 2px solid #e2e8f0;
            padding-bottom: 12px;
        }
        .form-label {
            font-weight: 500;
        }
        .form-control {
            border-radius: 10px;
        }
        .btn {
            border-radius: 12px;
            padding: 8px 18px;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card p-4">
                <h4 class="mb-4 text-center"><i class="fa fa-plus-circle me-2 text-success"></i>Thêm danh mục mới</h4>

                <!-- Hiển thị thông báo lỗi nếu có -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger" role="alert">
                        <i class="fa fa-exclamation-triangle me-2"></i>${error}
                    </div>
                </c:if>

                <form action="${pageContext.request.contextPath}/admin/category/insert" method="post" enctype="multipart/form-data">
                    <div class="mb-4">
                        <label for="name" class="form-label">Tên danh mục</label>
                        <input type="text" id="name" name="name" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="image" class="form-label">Chọn hình ảnh</label>
                        <input type="file" id="image" name="image" class="form-control" accept="image/*">
                    </div>
                    <div class="d-flex justify-content-between">
                        <button type="submit" class="btn btn-success"><i class="fa fa-save me-1"></i>Thêm mới</button>
                        <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-outline-secondary"><i class="fa fa-arrow-left me-1"></i>Quay lại</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
