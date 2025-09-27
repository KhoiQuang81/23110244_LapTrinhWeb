<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 27/09/2025
  Time: 1:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách danh mục</title>
    <!-- Bootstrap 5 & Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            background: #f1f5f9;
        }
        .card {
            border-radius: 14px;
            border: 1px solid #e2e8f0;
            box-shadow: 0 2px 10px rgba(0,0,0,0.04);
        }
        .card h4 {
            font-weight: 600;
            border-bottom: 2px solid #e9ecef;
            padding-bottom: 10px;
        }
        .table th {
            border: none;
            font-weight: 600;
            background: #f8f9fa;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #fdfdfd;
        }
        .btn {
            border-radius: 6px;
            padding: 4px 10px;
        }
        .category-image {
            width: 58px;
            height: 58px;
            object-fit: cover;
            border-radius: 10px;
            border: 1px solid #dee2e6;
        }
        .empty-row {
            background: #f8f9fa;
            border-radius: 6px;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <div class="card p-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h4><i class="fa fa-list me-2 text-primary"></i>Danh sách danh mục</h4>
            <a href="${pageContext.request.contextPath}/admin/category/add" class="btn btn-success">
                <i class="fa fa-plus me-1"></i>Thêm mới
            </a>
        </div>

        <!-- Hiển thị thông báo thành công/lỗi -->
        <c:if test="${not empty message}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <i class="fa fa-check-circle me-2"></i>${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </c:if>
        <c:if test="${not empty error}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <i class="fa fa-exclamation-triangle me-2"></i>${error}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </c:if>

        <div class="table-responsive">
            <table class="table table-hover table-striped align-middle">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Hình ảnh</th>
                    <th>Tên danh mục</th>
                    <th class="text-center">Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${categories}" var="category">
                    <tr>
                        <td>${category.id}</td>
                        <td>
                            <c:if test="${not empty category.images}">
                                <img src="${pageContext.request.contextPath}/image?fname=${category.images}"
                                     alt="Category image" class="category-image">
                            </c:if>
                            <c:if test="${empty category.images}">
                                <div class="category-image d-flex align-items-center justify-content-center bg-light text-muted">
                                    <i class="fa fa-image"></i>
                                </div>
                            </c:if>
                        </td>
                        <td class="fw-medium">${category.name}</td>
                        <td class="text-center">
                            <a href="${pageContext.request.contextPath}/admin/category/edit?id=${category.id}"
                               class="btn btn-sm btn-outline-warning me-2">
                                <i class="fa fa-edit"></i>
                            </a>
                            <a href="${pageContext.request.contextPath}/admin/category/delete?id=${category.id}"
                               class="btn btn-sm btn-outline-danger"
                               onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này?')">
                                <i class="fa fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="${empty categories}">
                    <tr class="empty-row">
                        <td colspan="4" class="text-center text-muted py-4">
                            <i class="fa fa-inbox fa-3x mb-3 d-block"></i>
                            Chưa có danh mục nào
                        </td>
                    </tr>
                </c:if>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


</body>
</html>
