<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
<link rel="stylesheet" href="styles/login.css">
<link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/base.css">
<link rel="stylesheet" type="text/css" href="styles/main.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="styles/news.css">
<link rel="stylesheet" type="text/css" href="styles/footer.css">
<link rel="stylesheet" type="text/css" href="styles/nav.css">
<script type="text/javascript" src="javascripts/jquery-3.7.1.js"></script>
<title></title>
<style>
.h_recover {
	display: none;
}
</style>
</head>
<%
String error = request.getAttribute("error") == null ? "" : (String) request.getAttribute("error");
%>
<body>
	<jsp:include page="Components/header.jsp" />
	<section class="section">
		<div class="container">
			<div class="wrap_background_aside">
				<div class="row">
					<div style="margin: auto;"
						class="col-lg-4 col-md-6 col-sm-12 col-12 col-xl-4 offset-xl-4 offset-lg-4 offset-md-3 offset-xl-3 ">
						<div class="row no-margin align-items-center"
							style="background: #fff; border-radius: 5px;">
							<div class="page-login clearfix">
								<div class="wpx">
									<h1 class="title_heads text-center">
										<span>Đăng nhập</span>
									</h1>
									<div id="overlay">
										<div class="loader"></div>
									</div>
									<div id="error-message" style="color: red;"></div>
									<div id="login" class="section">
										<form method="post" action="Login" id="customer_login"
											accept-charset="UTF-8">
											<input name="FormType" type="hidden" value="customer_login">
											</span>
											<p style="color: red;">
												<%=error%></p>
											<div class="form-signup clearfix">
												<fieldset class="form-group">
													<input type="email"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
														class="form-input" value="" name="email" id="email"
														placeholder="Email" required="">
												</fieldset>
												<fieldset class="form-group">
													<input type="password" class=" form-input" value=""
														name="password" id="customer_password"
														placeholder="Mật khẩu" required="">
													<div id="eye">
														<i class="far fa-eye"></i>
													</div>
												</fieldset>
												<div class="pull-xs-left justify-content-center text-center">
													<button type="submit" value=""
														class="btn btn-green w-100 my-2" style="color: #fff">Đăng
														nhập</button>
													<span class="block a-center quenmk ">Quên mật khẩu</span>
												</div>
											</div>
										</form>
									</div>
									<div class="h_recover" style="">
										<div id="recover-password" class="form-signup page-login">
											<form method="post" id="recover_customer_password"
												accept-charset="UTF-8">
												<div class="error" style="color: red"></div>
												<div class="form-signup clearfix">
													<fieldset class="form-group">
														<input type="email"
															pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
															class="form-control" value="" name="Email"
															id="recover-email" placeholder="Email" required="">
													</fieldset>
												</div>
												<div class="action_bottom">
													<input class="btn btn-hover w-100 "
														style="margin-top: 0px; background-color: #2c3034; border: none"
														type="submit" value="Lấy lại mật khẩu">
												</div>
											</form>
										</div>
									</div>
									<div class="block social-login--facebooks pt-3"
										style="justify-items: center; text-align: center">
										<p>
											Không có tài khoản? <a href="signup.html" id="register-link">Đăng
												ký</a>
										</p>
										<p class="text-center">Hoặc đăng nhập bằng</p>
										<a href="javascript:void(0)" class="social-login--facebook"
											onclick="loginFacebook()"><img width="129px"
											height="37px" alt="facebook-login-button"
											src="images/logo/fb-btn.svg"></a> <a
											href="javascript:void(0)" class="social-login--google"
											onclick="loginGoogle()"><img width="129px" height="37px"
											alt="google-login-button" src="images/logo/gp-btn.svg"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
		<footer>
			<jsp:include page="Components/footer.jsp" />
		</footer>
</body>

<script type="text/javascript" src="javascripts/main.js"></script>
<script>
	$(document).ready(function() {
		$('#eye').click(function() {
			$(this).toggleClass('open');
			$(this).children('i').toggleClass('fa-eye-slash fa-eye');
			if ($(this).hasClass('open')) {
				$(this).prev().attr('type', 'text');
			} else {
				$(this).prev().attr('type', 'password');
			}

		});
	});
</script>

</html>