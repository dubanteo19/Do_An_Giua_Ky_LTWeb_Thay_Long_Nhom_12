<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Header</title>
</head>
 <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/nav.css">
<body>
  <header class="header" style="min-height: 124px">
        <nav class="nav navbar-light bg-light" style="height: 60px">
            <div id="topbar" class="d-flex align-items-center fixed-top bg-light pt-1">
                <div class="container d-flex justify-content-center justify-content-md-between">
                    <div class="contact-info d-flex align-items-center">
                        <i class="fas fa-mobile d-flex align-items-center " style="margin-right: 5px;"></i><span class=""> +84 955 488 55</span>
                        <i class="fa-regular fa-clock d-flex align-items-center ms-4 " style="margin-right: 5px"></i><span class=""> Mon-Sat: 6AM - 23PM</span>
                    </div>
                    <div class="search-smart d-none d-md-flex">
                        <form class="">
                            <input id="searchInput" class="form-control justify-content-md-start" type="search" placeholder="Bạn tìm gì..." aria-label="Search" width="300" height="200">
                            <i class="fas fa-search bg-primary-green"></i>
                        </form>
                    </div>
                    <div class="header-control d-none d-md-flex" style="padding-top: 2px">
                        <button class=" btn btn-hover ms-md-2 bg-primary-green btn-user" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="margin-right: 10px">
                            <a style="color: #fff"> <i class="fa-solid fa-circle-user"></i></a>
                        </button>
                        <ul class="dropdown-menu" id="userLinks">
                            <li><a class="dropdown-item" target="_top" href="login.html">Đăng nhập</a></li>
                            <li><a class="dropdown-item" target="_top" href="signup.html">Đăng ký</a></li>
                        </ul>
                        <button type="button" class="btn btn-hover ms-md-2 bg-primary-green" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Hệ thống cửa hàng" style="margin-right: 10px">
                            <a href="he-thong.html" target="_top" style="color: #fff"><i class="fa-solid fa-location-dot"></i></a>
                        </button>
                        <button type="button" class="position-relative btn btn-hover ms-md-2 bg-primary-green" data-bs-toggle="tooltip" data-bs-placement="left" title="Sản phẩm yêu thích" style="margin-right: 10px">
                            <i class="fa-regular fa-heart"></i>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">1</span>
                            <span class="visually-hidden">unread messages</span>
                        </button>
                        <button type="button" id="btn-card" class="position-relative btn btn-hover ms-md-2 bg-primary-green" data-bs-toggle="tooltip" data-bs-placement="left" title="Giỏ hàng">
                            <a href="gio-hang.html" target="_top" style="color: #fff"><i class="fas fa-cart-shopping"></i></a>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">1</span>
                            <span class="visually-hidden">unread messages</span>
                        </button>
                        <div class="top-cart-content" style="width: 300px; height: auto">
                            <div class="CartHeaderContainer">
                                <form action="" method="post" novalidate="" class="cart">
                                    <div class=" cart_body items">
                                        <div class="row">
                                            <div class="cart_products d-flex">
                                                <a href="" target="_top" class="cart_image p-3" title="Kim chi">
                                                    <img width="80" height="80" src="images/product-images/kim-chi1.png" alt="Kim chi">
                                                </a>
                                                <div class="cart_info pt-3">
                                                    <div class="cart_name " style="display: flex!important;flex-direction: column">
                                                        <a href="" target="_top"  class="product-name text-dark" title="Kim chi">Kim chi</a>
                                                        <span class="variant-title">300g</span>
                                                        <a class="cart__btn-remove remove-item-cart" style="color: red">Xóa</a>
                                                    </div>
                                                    <div class="grid pt-2 mb-3">
                                                        <div class="one-half cart_select cart_item_name">
                                                            <div class="cart_prices d-flex justify-content-between">
                                                                <label class="cart_quantity" style="padding-right: 70px">Số lượng</label>
                                                                <span class="cart-price fw-bold" style="color: #679210">4.500₫</span>
                                                            </div>
                                                            <div class="quantity mt-1">
                                                                <div class="quantity-form text-center justify-content-center" style="width: 96px; height: 30px;border: 1px solid #679210; border-radius: 5px">
                                                                    <button class="btn-green minus-btn" style="width:25px; height: 25px; color: #fff; border-radius: 5px; margin-top: 2px">-</button>
                                                                    <input type="text" name="updates[]" class="input-quanlity number-sidebar text-center" maxlength="3" value="3" min="0" data-id="" data-line="2" aria-label="quantity" pattern="[0-9]*" style="width: 33px; border: none">
                                                                    <button class="btn-green plus-btn" style="width: 25px ; height: 25px; color: #fff; border-radius: 5px">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cart-footer" style="border-top: 1px solid #679210">
                                        <div class="subtotal p-3">
                                            <div class="cart__subtotal d-flex" style="justify-content: space-between">
                                                <div class="cart__col-6">Tổng tiền:</div>
                                                <div class=" cart__totle"><span class="total-price text-primary-green fw-bold">4.500₫</span></div>
                                            </div>
                                        </div>
                                        <div class="cart__btn-proceed-checkout-dt m-3">
                                            <button type="button" class="button btn btn-default bg-primary-green text-primary-white w-100" id="btn-proceed-checkout" title="Thanh toán">
                                                <a href="thanh-toan.html" target="_top">Thanh toán</a>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="languages d-none d-md-flex align-items-center">
                        <a class="nav-link text-primary-green fw-bolder" href="#">EN</a>
                        <a class="text-dark">/</a>
                        <a class="nav-link text-primary-green fw-bolder" href="#">VN</a>
                    </div>
                </div>
            </div>
        </nav>
        <!--    Logo and Thanh điều hướng -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light p-xl-0">
            <div class="container">
                <div class="menubar d-sm-flex">
                    <a class="navbar-brand m-lg-0" href="#">
                        <img src="images/logo/logo.png" alt="" width="200" height="" class="d-inline-block align-text-top" title="Logo">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll bg-primary-green w-100" style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link active text-light " target="_top" aria-current="page" href="index.html">Trang chủ</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="san-pham.html" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Sản phẩm
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink" id="show-category">
                                <li><a class="dropdown-item" href="#">Đậu</a></li>
                                <li><a class="dropdown-item" href="#">Gạo</a></li>
                                <li><a class="dropdown-item" href="#">Củ quả</a>
                                    <ul class="level1">
                                        <li class="level2">
                                            <a href="/rau-la" title="Rau lá">Ngô</a>
                                        </li>
                                        <li class="level2">
                                            <a href="/cu-qua" title="Củ, quả">Sắn</a>
                                        </li>
                                        <li class="level2">
                                            <a href="/nam-cac-loai" title="Nấm các loại">Khoai</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="#">Hạt</a></li>
                                <li><a class="dropdown-item" href="#">Ngũ cốc</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" target="_top" href="san-pham-khuyen-mai.html">Sản phẩm khuyến mãi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" target="_top" href="tin-tuc.html">Tin tức</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" target="_top" href="gioi-thieu.html">Giới thiệu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" target="_top" href="lien-he.html">Liên hệ</a>
                        </li>
                        <li class="nav-item" style="background-color: var(--primary-red); border-radius: 5px">
                            <a class="nav-link text-light" target="_top" href="san-pham-hot.html">Sản phẩm hot</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" target="_top" href="chinh-sach.html">Chính sách cửa hàng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</body>
    <style type="text/css">
    .title-group {
        background-image: url("images/titlebackground/title-bg.png");
        height: 200px;
        box-shadow: inset 0px -40px 60px 40px rgba(0, 0, 0, 0.8);
    }

    .text-green {
        color: #679210;
    }

    </style>
     <script type="text/javascript" src="javascripts/jquery-3.7.1.js"></script>
    <script type="text/javascript" src="javascripts/main.js"></script>
    <script type="text/javascript" src="javascripts/bootstrap.bundle.js"></script>
    <script type="text/javascript">
    const url = window.location.search;
    const urlParas = new URLSearchParams(url);
    const titleText = urlParas.get("title");
    const titleTag = document.getElementsByClassName("title-text");
    titleTag[0].innerHTML = titleText;
    titleTag[1].innerHTML = titleText;
    </script>
    <script>
    document.getElementById('btn-card').addEventListener('mouseover', function() {
        document.querySelector('.top-cart-content').classList.add('active');
    });

    document.querySelector('.top-cart-content').addEventListener('mouseover', function() {
        document.querySelector('.top-cart-content').classList.add('active');
    });
    document.querySelector('.top-cart-content').addEventListener('mouseout', function() {
        document.querySelector('.top-cart-content').classList.remove('active');
    });
    document.getElementById('btn-card').addEventListener('click', function() {
        window.location.href = 'gio-hang.html';
    });

    document.getElementById('navbarScrollingDropdown').addEventListener('click', function() {
        window.location.href = 'san-pham.html';
    });



    $(document).ready(function() {
        $(".heartIcon").click(function(event) {
            event.preventDefault();
            $(this).toggleClass("active");
        });
        fetchUserLink();
    });

    function redirectToPage(page) {
        var heartIcon = document.querySelector('.heartIcon');
        window.location.href = page;
    }

    function fetchUserLink() {
        let user = JSON.parse(window.localStorage.getItem("user"));
        let userLinks = $("#userLinks > li > a");
        if (user != null) {
            $(userLinks[0]).text("Tài khoản").attr("href", "tai-khoan.html");
            let logoutBtn = $(userLinks[1]);
            logoutBtn.text("Đăng xuất").removeAttr("href").addClass("cursor-pointer");
            logoutBtn.attr("id", "logout");
        }

        function logout() {
            setTimeout(function() {
                window.localStorage.removeItem("user");
                window.open("index.html","_top");
            }, 1000)
        }
        let logoutBtn = $("#logout");
        logoutBtn.on("click", logout);
    }
    $(document).ready(function() {
        // Mảng chứa các placeholder khác nhau
        var placeholders = ["Tìm kiếm theo tên sản phẩm", "Tìm kiếm theo danh mục", "Tìm kiếm theo thương hiệu"];
        var currentIndex = 0;
        var currentPlaceholder = "";
        var placeholderIndex = 0;

        // Hàm cập nhật placeholder với từng chữ
        function updatePlaceholder() {
            if (placeholderIndex <= placeholders[currentIndex].length) {
                currentPlaceholder = placeholders[currentIndex].substring(0, placeholderIndex);
                $("#searchInput").attr("placeholder", currentPlaceholder);
                placeholderIndex++;
            } else {
                // Khi hoàn thành, đặt lại index và chuyển sang placeholder tiếp theo
                placeholderIndex = 0;
                currentIndex = (currentIndex + 1) % placeholders.length;
            }
        }

        // Thực hiện cập nhật mỗi giây
        setInterval(updatePlaceholder, 60);
    });
    </script>
</html>