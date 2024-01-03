<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/news.css">
    <link rel="stylesheet" type="text/css" href="styles/footer.css">
    <link rel="stylesheet" type="text/css" href="styles/nav.css">
    <link rel="stylesheet" href="styles/login.css">
    <script type="text/javascript" src="javascripts/jquery-3.7.1.js"></script>
    <title></title>
</head>

<body>
   	<jsp:include page="header.jsp" />
    <section class="section">
        <div class="container ">
            <div class="wrap_background_aside ">
                <div class="wrap_background_aside">
                    <div class="row">
                        <div style="margin: auto;" class="col-lg-4 col-md-6 col-sm-12 col-12 col-xl-4 offset-xl-4 offset-lg-4 offset-md-3 offset-xl-3">
                            <div class="row no-margin align-items-center" style="background: #fff;border-radius: 5px;">
                                <div class="page-login clearfix no-padding">
                                    <div class="wpx">
                                        <h1 class="title_heads text-center pt-3"><span>Đăng ký</span></h1>
                                        <div id="overlay">
                                            <div class="loader"></div>
                                        </div>
                                        <div id="error-message" style="color: red;"></div>
                                        <div id="login" class="section">
                                            <form id="customer_register" accept-charset="UTF-8" action="SignUp" method="post">
                                                <div class="form-signup clearfix">
                                                    <div class="row">
                                                   
                                                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                            <fieldset class="form-group">
                                                                <input type="text" class="form-input" value="" name="lastName" id="lastName" placeholder="Họ" required="">
                                                            </fieldset>
                                                        </div>
                                                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                            <fieldset class="form-group">
                                                                <input type="text" class="form-input" value="" name="firstName" id="firstName" placeholder="Tên" required="">
                                                            </fieldset>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                            <fieldset class="form-group">
                                                                <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" class="form-input" value="" name="email" id="email" placeholder="Email" required="">
                                                            </fieldset>
                                                        </div>
                                                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                            <fieldset class="form-group">
                                                                <input placeholder="Số điện thoại" type="text" pattern="\d+" class="form-input form-control-comment" name="PhoneNumber" required="" id="PhoneNumber">
                                                            </fieldset>
                                                        </div>
                                                        <div id="error-pass" style="color: red;"></div>
                                                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                            <fieldset class="form-group">
                                                                <input type="password" class="form-input" value="" name="password" id="password" placeholder="Mật khẩu" required="">
                                                                <div id="eye">
                                                                    <i class="far fa-eye"></i>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                            <fieldset class="form-group">
                                                                <input type="password" class="form-input" value="" name="password confirmPassword" id="password-again" placeholder="Nhập lại mật khẩu" required="">
                                                                <div id="eyes-again">
                                                                    <i class="far fa-eye"></i>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                    </div>
                                                    <div class="section" style="justify-items: center; text-align: center">
                                                        <button type="submit" id="signupBtn" value="Đăng ký" class="btn btn-green w-100" style="color: #fff">Đăng ký</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="block social-login--facebooks" style="justify-items: center; text-align: center">
                                                <p class="a-center">
                                                    Hoặc <a href="login.html" class="text-primary-green">đăng nhập</a> bằng
                                                </p>
                                                <a href="javascript:void(0)" class="social-login--facebook" onclick="loginFacebook()"><img width="129px" height="37px" alt="facebook-login-button" src="images/logo/fb-btn.svg"></a>
                                                <a href="javascript:void(0)" class="social-login--google" onclick="loginGoogle()"><img width="129px" height="37px" alt="google-login-button" src="images/logo/gp-btn.svg"></a>
                                            </div>
                                        </div>
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
       	<jsp:include page="footer.jsp" />
    </footer>
</body>
<script type="text/javascript" src="javascripts/main.js"></script>
<script type="text/javascript" src="javascripts/jquery-3.7.1.js"></script>
<script type="text/javascript" src="admin/javascripts/FakeDataBase.js"></script>
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

$(document).ready(function() {
	$('#eyes-again').click(function() {
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