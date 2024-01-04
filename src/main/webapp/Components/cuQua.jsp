<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Formatter"%>
<%@page import="java.util.logging.SimpleFormatter"%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%
List<Product> dsCuQua = (List<Product>) request.getAttribute("dsCuQua");
NumberFormat nf = NumberFormat.getCurrencyInstance();
%>
<body>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<a class="image-effect" href=""> <img class="br-5"
						src="images/product-images/cac-loai-khoai%20(1).jpg" alt="">
					</a>
				</div>
				<div class="col-md-9">
					<div class="group_title">
						<div class="title">
							<a class="title-name" href=""> Củ quả </a>
						</div>
						<div class="button-control">
							<div class="btn-green btn-small disabled">
								<i class="fa-solid fa-chevron-left fa-chevron"></i>
							</div>
							<div class="btn-green btn-small">
								<i class="fa-solid fa-chevron-right fa-chevron"></i>
							</div>
						</div>
					</div>
					<div class="card-deck d-flex mr-child-20">
						<c:forEach items="${dsCuQua}" var="item">
							<div class="card radius-green">
								<img class="card-img-top"
									src="${item.thumb}"
									alt="">
								<div class="icons">
									<a href="#" class="fas fa-heart heartIcon"></a> <a href="#"
										class="fas"><i class="fa-solid fa-cart-shopping"></i></a> <a
										href="#" class="fas"><i
										class="fa-solid fa-magnifying-glass"></i></a>
								</div>
								<div class="card-body">
									<h3 class="card-title">
										<a href=""> ${item.name} </a>
									</h3>
									<div class="card-text">
										<div class="price-box">
										<fmt:setLocale value='vi-VN'/>
										<fmt:formatNumber value="${item.unitPrice}" type="currency"/>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					
					</div>
					<div class="see-more">
						<a href="" class="">Xem tất cả</a>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>