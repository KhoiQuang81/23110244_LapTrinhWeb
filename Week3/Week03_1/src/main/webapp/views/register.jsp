<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">

	<h2 class="mb-4">Tạo tài khoản mới</h2>

	<!-- Hiển thị thông báo lỗi nếu có -->
	<c:if test="${alert != null}">
		<div class="alert alert-danger">${alert}</div>
	</c:if>

	<form action="${pageContext.request.contextPath}/register"
		method="post">
		<div class="mb-3">
			<label class="form-label">Tên đăng nhập</label> <input type="text"
				name="username" class="form-control" required>
		</div>

		<div class="mb-3">
			<label class="form-label">Mật khẩu</label> <input type="password"
				name="password" class="form-control" required>
		</div>

		<div class="mb-3">
			<label class="form-label">Email</label> <input type="email"
				name="email" class="form-control" required>
		</div>

		<div class="mb-3">
			<label class="form-label">Họ và tên</label> <input type="text"
				name="fullname" class="form-control" required>
		</div>

		<div class="mb-3">
			<label class="form-label">Số điện thoại</label> <input type="text"
				name="phone" class="form-control" required>
		</div>

		<button type="submit" class="btn btn-primary">Đăng ký</button>
	</form>

</body>
</html>
