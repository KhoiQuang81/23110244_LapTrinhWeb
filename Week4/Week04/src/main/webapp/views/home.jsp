<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Trang home của user</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        .hero-section {
            background: linear-gradient(120deg, #ff9a9e 0%, #fad0c4 100%);
            color: white;
            padding: 60px 0;
            text-align: center;
            margin-bottom: 40px;
            border-radius: 0 0 20px 20px;
        }

        .card {
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .card:hover {
            transform: scale(1.03);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .card-title {
            font-weight: bold;
        }

        .price {
            font-size: 1.3rem;
            text-align: center;
            color: #d9534f;
            margin-top: 10px;
        }

        .btn-custom {
            background-color: #20c997;
            border: none;
        }

        .btn-custom:hover {
            background-color: #198754;
        }
    </style>
</head>
<body>

<%@ include file="/common/web/header.jsp"%>

<!-- Hero -->
<div class="hero-section">
    <h1>Chào mừng bạn đến với cửa hàng</h1>
    <p>Khám phá những sản phẩm nổi bật với ưu đãi hấp dẫn</p>
</div>

<!-- Body -->
<div class="container my-5">
    <h2 class="text-center mb-5">Sản phẩm nổi bật</h2>
    <div class="row g-5">
        <!-- Product 1 -->
        <div class="col-md-4">
            <div class="card h-100 shadow">
                <img src="https://via.placeholder.com/300x200" class="card-img-top"
                     alt="Sản phẩm 1">
                <div class="card-body text-center">
                    <h5 class="card-title">Sản phẩm 1</h5>
                    <p class="card-text text-muted">Mô tả ngắn gọn về sản phẩm.</p>
                    <p class="price">250.000đ</p>
                    <a href="#" class="btn btn-custom text-white"><i
                            class="fas fa-cart-plus"></i> Thêm vào giỏ</a>
                </div>
            </div>
        </div>
        <!-- Product 2 -->
        <div class="col-md-4">
            <div class="card h-100 shadow">
                <img src="https://via.placeholder.com/300x200" class="card-img-top"
                     alt="Sản phẩm 2">
                <div class="card-body text-center">
                    <h5 class="card-title">Sản phẩm 2</h5>
                    <p class="card-text text-muted">Mô tả ngắn gọn về sản phẩm.</p>
                    <p class="price">350.000đ</p>
                    <a href="#" class="btn btn-custom text-white"><i
                            class="fas fa-cart-plus"></i> Thêm vào giỏ</a>
                </div>
            </div>
        </div>
        <!-- Product 3 -->
        <div class="col-md-4">
            <div class="card h-100 shadow">
                <img src="https://via.placeholder.com/300x200" class="card-img-top"
                     alt="Sản phẩm 3">
                <div class="card-body text-center">
                    <h5 class="card-title">Sản phẩm 3</h5>
                    <p class="card-text text-muted">Mô tả ngắn gọn về sản phẩm.</p>
                    <p class="price">450.000đ</p>
                    <a href="#" class="btn btn-custom text-white"><i
                            class="fas fa-cart-plus"></i> Thêm vào giỏ</a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/common/web/footer.jsp"%>
</body>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</html>
