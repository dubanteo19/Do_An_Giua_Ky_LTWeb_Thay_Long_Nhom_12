<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
<title></title>
<style>
#introduce p {
	color: #212529;;
	font-size: 14px;
	font-weight: 500;
	line-height: 1.5;
	font-family: sans-serif;
}

b {
	line-height: 1.5;
	font-family: sans-serif;
	font-size: 14px;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp" />

	<jsp:include page="top-title.jsp">
		<jsp:param name="title" value="Chính sách" />
	</jsp:include>
	
	<section id="policy">
		<div class="container">
			<div class="row">
				<div class="content-page p-3">
					<h3>Miễn phí vẫn chuyển</h3>
					Cho tất cả đơn hàng trong nội thành Hồ Chí Minh
					<h3>Miễn phí đổi - trả</h3>
					Đối với sản phẩm lỗi sản xuất hoặc vận chuyển
					<h3>Hỗ trợ nhanh chóng</h3>
					Gọi Hotline: 19006750 để được hỗ trợ ngay

				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="Componets/footer.jsp" />
	</footer>
</body>
<script type="text/javascript" src="javascripts/main.js"></script>

</html>