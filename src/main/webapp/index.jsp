<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Luong Thuc Viet</title>
    <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/news.css">
    <link rel="stylesheet" type="text/css" href="styles/footer.css">
    <link rel="stylesheet" type="text/css" href="styles/nav.css">
    <link rel="stylesheet" type="text/css" href="styles/lightslider.css">
    <link rel="stylesheet" href="styles/gio-hang.css">
</head>
<style>
</style>

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
                            <li><a class="dropdown-item" href="login.html">Đăng nhập</a></li>
                            <li><a class="dropdown-item" href="signup.html">Đăng ký</a></li>
                        </ul>
                        <button type="button" class="btn btn-hover ms-md-2 bg-primary-green" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Hệ thống cửa hàng" style="margin-right: 10px">
                            <a href="he-thong.html" style="color: #fff"><i class="fa-solid fa-location-dot"></i></a>
                        </button>
                        <button type="button" class="position-relative btn btn-hover ms-md-2 bg-primary-green" data-bs-toggle="tooltip" data-bs-placement="left" title="Sản phẩm yêu thích" style="margin-right: 10px">
                            <i class="fa-regular fa-heart"></i>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">1</span>
                            <span class="visually-hidden">unread messages</span>
                        </button>
                        <button type="button" id="btn-card" class="position-relative btn btn-hover ms-md-2 bg-primary-green" data-bs-toggle="tooltip" data-bs-placement="left" title="Giỏ hàng">
                            <a href="gio-hang.html" style="color: #fff"><i class="fas fa-cart-shopping"></i></a>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">1</span>
                            <span class="visually-hidden">unread messages</span>
                        </button>
                        <div class="top-cart-content" style="width: 300px; height: auto">
                            <div class="CartHeaderContainer">
                                <form action="" method="post" novalidate="" class="cart">
                                    <div class=" cart_body items">
                                        <div class="row">
                                            <div class="cart_products d-flex">
                                                <a href="" class="cart_image p-3" title="Kim chi">
                                                    <img width="80" height="80" src="images/product-images/kim-chi1.png" alt="Kim chi">
                                                </a>
                                                <div class="cart_info pt-3">
                                                    <div class="cart_name " style="display: flex!important;flex-direction: column">
                                                        <a href="" class="product-name text-dark" title="Kim chi">Kim chi</a>
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
                            <a class="nav-link active text-light" aria-current="page" href="index.html">Trang chủ</a>
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
                            <a class="nav-link text-light" href="san-pham-khuyen-mai.html">Sản phẩm khuyến mãi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="tin-tuc.html">Tin tức</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="gioi-thieu.html">Giới thiệu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="lien-he.html">Liên hệ</a>
                        </li>
                        <li class="nav-item" style="background-color: var(--primary-red); border-radius: 5px">
                            <a class="nav-link text-light" href="san-pham-hot.html">Sản phẩm hot</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="chinh-sach.html">Chính sách cửa hàng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!--Slider-->
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
                <img src="images/slider/snapedit_1700070350154.png" class="d-block w-100" style="height: 640px" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Vũ điệu của hương vị và màu sắc.</h5>
                    <p>Một bữa ăn nhẹ lành mạnh và bổ dưỡng với nhiều loại hạt và đậu khác nhau.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="images/slider/snapedit_1700070244749.png" class="d-block w-100" style="height: 640px" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Bữa sáng trong mơ.</h5>
                    <p> Một bữa sáng đầy màu sắc và ngon miệng với ngũ cốc, sữa, và trái cây.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/slider/zyro-image.png" class="d-block w-100" style="height: 640px" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Kho báu của lương thực lành mạnh.</h5>
                    <p>Một lựa chọn tuyệt vời cho bữa sáng, bữa trưa, hoặc bữa tối.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!--Danh mục sản phẩm-->
    <div class="container" id="catalogs">
        <div class="group_title">
            <div class="title">
                <a class="title-name" href="">
                    Danh mục nổi bật
                </a>
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
        <div class="container product-catalog overflow-auto ">
            <div class="d-flex justify-content-between">
                <div class="catalog-item">
                    <img src="images/catalogs/gao.png" alt="" class="catalog-image ">
                    <p class="catalog-name text-primary-green"> Gạo</p>
                </div>
                <div class="catalog-item">
                    <img src="images/catalogs/ngu-coc.png" height="100px" alt="" class="catalog-image ">
                    <p class="catalog-name text-primary-green"> Ngũ cốc</p>
                </div>
                <div class="catalog-item">
                    <img src="images/catalogs/rau-cu.png" alt="" class="catalog-image">
                    <p class="catalog-name text-primary-green"> Củ quả</p>
                </div>
                <div class="catalog-item">
                    <img src="images/catalogs/hat.png" alt="" class="catalog-image">
                    <p class="catalog-name text-primary-green"> Hạt</p>
                </div>
                <div class="catalog-item">
                    <img src="images/catalogs/dau.png" alt="" class="catalog-image">
                    <p class="catalog-name text-primary-green"> Đậu</p>
                </div>
                <div class="catalog-item">
                    <img src="images/catalogs/danhmuc_8.webp" alt="" class="catalog-image">
                    <p class="catalog-name text-primary-green">Sản phẩm khác</p>
                </div>
            </div>
        </div>
        <!-- khuyến mãi-->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="group_title">
                            <div class="title">
                                <a class="title-name" href="">
                                    Khuyến mãi hấp dẫn
                                </a>
                                <span class="title-content">
                                    Chương trình khuyến mãi hấp dẫn đang chờ đợi bạn
                                </span>
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
                            <div class="card radius-green" onclick="redirectToPage('show-san-pham.html?productId=GAO1')">
                                <span class="span-sale">Giảm 10%</span>
                                <img class="card-img-top" src="images/product-images/gaoLaoMien1.png" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass chi-tiet"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            GẠO LÀI MIÈN CAMPUCHIA 1
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">
                                            270.000₫
                                            <span class="price-compare">
                                                27.000đ
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-state">
                                        <div class="progress-bar small-progress-bar">
                                            <div class="fill bg-primary-green"></div>
                                        </div>
                                        <span class="product-sold">
                                            Đã bán 148
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <span class="span-sale">Giảm 11%</span>
                                <img class="card-img-top" src="images/product-images/watermarked-gao-lai-mien-capuchia-copy.webp" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            GẠO LÀI MIÈN CAMPUCHIA 2
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">
                                            250.000đ
                                            <span class="price-compare">
                                                27.500đ
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-state">
                                        <div class="progress-bar small-progress-bar">
                                            <div class="fill bg-primary-green"></div>
                                        </div>
                                        <span class="product-sold">
                                            Đã bán 158
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <span class="span-sale">Giảm 5%</span>
                                <img class="card-img-top" src="images/product-images/ngũ%20cốc.jpg" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Ngũ cốc Calbee đỏ 800g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">
                                            270.000đ
                                            <span class="price-compare">
                                                13.500đ
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-state">
                                        <div class="progress-bar small-progress-bar">
                                            <div class="fill bg-primary-green"></div>
                                        </div>
                                        <span class="product-sold">
                                            Đã bán 19
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <span class="span-sale">Giảm 11%</span>
                                <img class="card-img-top" src="images/product-images/2-goi-dau-xanh-hat3%20(1).jpg" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            2 gói đậu xanh hạt PMT 250g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">
                                            28.500đ
                                            <span class="price-compare">
                                                3.135đ
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-state">
                                        <div class="progress-bar small-progress-bar">
                                            <div class="fill bg-primary-green"></div>
                                        </div>
                                        <span class="product-sold">
                                            Đã bán 53
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <span class="span-sale">Giảm 10%</span>
                                <img class="card-img-top" src="images/product-images/yen-mach-nguyen-chat-yumfood-goi-400g).jpg" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Yến mạch nguyên chất Yumfood gói 400g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">
                                            86.500đ
                                            <span class="price-compare">
                                                8.650đ
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-state">
                                        <div class="progress-bar small-progress-bar">
                                            <div class="fill bg-primary-green"></div>
                                        </div>
                                        <span class="product-sold">
                                            Đã bán 148
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="see-more">
                            <a href="" class="">Xem tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Dịch vụ của chúng tôi-->
        <div class="container" id="our-services">
            <div class="our-services-header">
                <h3 class="font-weight-bold text-primary-green">Dịch vụ đặc biệt của chúng tôi</h3>
                <p>Những dịch vụ tốt nhất dành cho khách hàng của chúng tôi</p>
            </div>
            <div class="services-container row gx-4">
                <div class="col-md-4 col-sm-1">
                    <div class="service-item d-flex flex-column align-items-center justify-content-center">
                        <img class="services-image" src="images/services/dichvu_1.jpg" alt="">
                        <h4 class="service-title text-primary-green text-center">Lương thực an toàn</h4>
                        <div class="underline font-weight-bold text-primary-green "></div>
                        <p class="text-center">Lương thực được thu hoạch đúng độ chín, được bảo quản trong điều kiện tốt nhất, giữ được hương vị thơm ngon, chất dinh dưỡng cao.</p>
                        <button class="btn btn-white-border-green">Tìm hiểu thêm</button>
                    </div>
                </div>
                <div class="col-md-4 col-sm-1 ">
                    <div class="service-item d-flex flex-column align-items-center justify-content-center">
                        <img class="services-image" src="images/services/dichvu_2.jpg" alt="">
                        <h4 class="service-title text-primary-green text-center">Giao hàng nhanh chóng</h4>
                        <div class="underline font-weight-bold text-primary-green "></div>
                        <p class="text-center">Giao hàng trong thời gian nhanh nhất để đảm bảo chất lượng tốt nhất cho những sản phẩm bạn đã đặt.</p>
                        <button class="btn btn-white-border-green">Tìm hiểu thêm</button>
                    </div>
                </div>
                <div class="col-md-4 col-sm-1 ">
                    <div class="service-item d-flex flex-column align-items-center justify-content-center">
                        <img class="services-image" src="images/services/dichvu_3.jpg" alt="">
                        <h4 class="service-title text-primary-green text-center">Thanh toán dễ dàng</h4>
                        <div class="underline font-weight-bold text-primary-green "></div>
                        <p class="text-center">Nhiều hình thức thanh toán làm cho việc đặt hàng của bạn và shop trở nên dễ dàng và tiện lợi hơn rất nhiều.</p>
                        <button class="btn btn-white-border-green">Tìm hiểu thêm</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- review sp -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <a class="image-effect" href="">
                            <img class="br-5" src="images/product-images/cac-loai-khoai%20(1).jpg" alt="">
                        </a>
                    </div>
                    <div class="col-md-9">
                        <div class="group_title">
                            <div class="title">
                                <a class="title-name" href="">
                                    Củ quả
                                </a>
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
                            <div class="card radius-green">
                                <img class="card-img-top" src="images/product-images/bap-nu-hoang-trai-tu-250g-tro-len.jpg" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Bắp nữ hoàng trái 250g trở lên
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">16.000đ</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <img class="card-img-top" src="images/product-images/khoai-lang-mat-tui-1kg-3-10-cu%20(1).jpg" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass chi-tiet"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Khoai lang mật 1kg (2 - 5 củ)
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">19.500đ</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <img class="card-img-top" src="images/product-images/khoai-lang-tim-1kg%20(1).jpg" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart heartIcon"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Khoai lang tím 1kg
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">38.000đ</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <img class="card-img-top" src="images/product-images/khoai-so-got-vo-400g%20(1).jpg" alt="">
                                <div class="icons">
                                    <a href="#" class="fas fa-heart"></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="#" class="fas"><i class="fa-solid fa-magnifying-glass"></i></a>
                                </div>
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Khoai sọ gọt vỏ 400g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">36.000đ</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="see-more">
                            <a href="" class="">Xem tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <a href="" class="image-effect">
                            <img class="br-5" src="images/product_test/banner_three_1.webp" alt="">
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="" class="image-effect">
                            <img class="br-5" src="images/product_test/banner_three_2.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="" class="image-effect">
                            <img class="br-5" src="images/product_test/banner_three_3.webp" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <a style="height: 100%;" class="image-effect" href="">
                            <img style="height: 100%; object-fit: cover;" class="br-5" src="images/product-images/gao.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-md-9">
                        <div class="group_title">
                            <div class="title">
                                <a class="title-name" href="">
                                    Gạo
                                </a>
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
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/gao/gao-phu-sa-tui-5kg.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Gạo thơm Vua Gạo Phù Sa túi 5kg
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">138.000đ</div>
                                    </div>
                                </div>
                            </div>
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/gao/gao-st24-tui-5kg.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Gạo thơm Vua Gạo Đậm Đà ST24 túi 5kg
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">165.000đ</div>
                                    </div>
                                </div>
                            </div>
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/gao/gao-nhat-shinichi-tui-5kg.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Gạo Nhật Shinichi Vua Gạo túi 5kg
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">140.000đ</div>
                                    </div>
                                </div>
                            </div>
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/gao/gao-lac-viet-de-nhat-st25-tui-5kg.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Gạo Lạc Việt đệ nhất ST25 túi 5kg
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">132.000đ</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="see-more">
                            <a href="" class="">Xem tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <a href="" class="image-effect">
                            <img class="br-5" src="images/product_test/Banner1.png" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <a class="image-effect" href="">
                            <img class="br-5" src="images/product_test/image_product3.webp" alt="">
                        </a>
                    </div>
                    <div class="col-md-9">
                        <div class="group_title">
                            <div class="title">
                                <a class="title-name" href="">
                                    Hạt
                                </a>
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
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/hat/hat-sen-viet-san-150g-201812041634117252.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Hạt sen khô Việt San gói 150g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">40.800đ</div>
                                    </div>
                                </div>
                            </div>
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/hat/hat-dieu-vo-lua-yen-nhung-hop-180g-202211260948312440.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Hạt điều vỏ lụa Yến Nhung hộp 180g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">65.000đ</div>
                                    </div>
                                </div>
                            </div>
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/hat/hat-hanh-nhan-my-your-superfood-hu-450g-202201120844001533.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Hạt hạnh nhân Mỹ Your Superfood hũ 450g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">225.000đ</div>
                                    </div>
                                </div>
                            </div>
                            <div style="width: calc(100%/4)" class="card radius-green">
                                <img class="card-img-top" src="images/product-images/hat/hat-dieu-rang-cui-your-superfood-hop-tron-240g-202311040947410838.jpg" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            Hạt điều rang củi Your Superfood hộp tròn 240g
                                        </a>
                                    </h3>
                                    <div class="card-text">
                                        <div class="price-box">119.500đ</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="see-more">
                            <a href="" class="">Xem tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <a href="" class="image-effect">
                            <img class="br-5" src="images/product_test/Banner2.png" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="group_title">
                            <div class="title">
                                <a class="title-name" href="">
                                    Đậu
                                </a>
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
                        <div class="card-desk mb-child-20">
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/dau/dau-nanh-naita-500g-202204161723244150.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Đậu nành gói 500g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">22.500đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/dau/dau-phong-viet-san-150g-201812041440132432.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Đậu phộng Việt San 150g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">11.500đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/dau/dau-xanh-khong-vo-viet-san-500g-201812041347258312.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Đậu xanh không vỏ Việt San 500g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">35.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/dau/dau-den-viet-san-300g-201812041650351216.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">2 gói đậu đen Việt San 300g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">28.500đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="see-more">
                            <a href="" class="">Xem tất cả</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="group_title">
                            <div class="title">
                                <a class="title-name" href="">
                                    Ngũ cốc
                                </a>
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
                        <div class="card-desk mb-child-20">
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/ngu-coc/ngu-coc-macgereal.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Ngũ cốc dinh dưỡng MacCereal bịch 560g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">63.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/ngu-coc/ngu-coc-dinh-duong-nutifood-nguyen-cam-bo-sung-canxi-bich-500g.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Ngũ cốc dinh dưỡng NutiFood bịch 500g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">55.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/ngu-coc/bot-ngu-coc-an-kieng-euro-cereal-goi-500g-25g-x-20-goi-202111192314385764.jpeg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Bột ngũ cốc ăn kiêng Euro Cereal gói 500g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">57.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/ngu-coc/sua-dinh-duong-ngu-coc-dutch-lady-tui-300g-12-goi-x-25g-202204231154439430.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Sữa dinh dưỡng ngũ cốc Dutch Lady túi 300g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">65.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="see-more">
                            <a href="" class="">Xem tất cả</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="group_title">
                            <div class="title">
                                <a class="title-name" href="">
                                    Thực phẩm khác
                                </a>
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
                        <div class="card-desk mb-child-20">
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/tp-khac/banh-canh-ong-mikiri-goi-300g-202308210940075440.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Bánh canh ống Mikiri gói 300g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">28.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/tp-khac/banh-mi-tuoi-osmiles-goi-350g-70g-x-5-o-202101141649320940.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Bánh mì tươi đông lạnh O'smiles 350g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">35.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/tp-khac/banh-gao-tteokbokki-han-quoc-ht-food-goi-500g-202201181305036109.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Bánh gạo Tteokbokki Hàn Quốc HT Food gói 500g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">38.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex align-items-center p-2">
                                        <img src="images/product-images/tp-khac/banh-bao-nhan-khoai-mon-cp-270g-202212261129142314.jpg" alt="" class="card-img mx-auto">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body d-flex flex-column">
                                            <h3 class="card-title">
                                                <a href="">Bánh bao nhân khoai môn C.P 270g</a>
                                            </h3>
                                            <div class="card-text">
                                                <div class="price-box">23.000đ</div>
                                            </div>
                                            <div class="button-control mt-2">
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-basket-shopping"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </div>
                                                <div class="btn-green btn-small">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="see-more">
                            <a href="" class="">Xem tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </div>
    <!-- Tin tức mới nhất           -->
    <div class="container" id="news">
        <div class="row">
            <div class="col-md-12">
                <div class="group_title">
                    <div class="title">
                        <a class="title-name" href="">Tin tức mới nhất</a>
                        <span class="title-content">Tin tức mới nhất được chúng tôi cập nhật thường xuyên</span>
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
                <div class="news-container card-deck d-flex mr-child-20">
                    <div class="card">
                        <div class="time-post text-primary-white fw-bold text-center bg-primary-green">
                            <span>24 <br> Tháng 5</span>
                        </div>
                        <img src="images/news/new1.webp" alt="" class="card-img">
                        <div class="card-body box-content">
                            <h3 class="card-title">
                                <a href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                            </h3>
                            <p class="card-text">
                                Người cao tuổi có sự hấp thụ và chuyển hóa các chất kém hơn so với người trẻ tuổi, vì thế chế độ ăn hợp ý là một việc rất...
                            </p>
                            <a href="" class="viewmore">Đọc tiếp</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="time-post text-primary-white fw-bold text-center bg-primary-green">
                            <span>24 <br> Tháng 5</span>
                        </div>
                        <img src="images/news/new1.webp" alt="" class="card-img">
                        <div class="card-body box-content">
                            <h3 class="card-title">
                                <a href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                            </h3>
                            <p class="card-text">
                                Người cao tuổi có sự hấp thụ và chuyển hóa các chất kém hơn so với người trẻ tuổi, vì thế chế độ ăn hợp ý là một việc rất...
                            </p>
                            <a href="" class="viewmore">Đọc tiếp</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="time-post text-primary-white fw-bold text-center bg-primary-green">
                            <span>24 <br> Tháng 5</span>
                        </div>
                        <img src="images/news/new1.webp" alt="" class="card-img">
                        <div class="card-body box-content">
                            <h3 class="card-title">
                                <a href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                            </h3>
                            <p class="card-text">
                                Người cao tuổi có sự hấp thụ và chuyển hóa các chất kém hơn so với người trẻ tuổi, vì thế chế độ ăn hợp ý là một việc rất...
                            </p>
                            <a href="" class="viewmore">Đọc tiếp</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="time-post text-primary-white fw-bold text-center bg-primary-green">
                            <span>24 <br> Tháng 5</span>
                        </div>
                        <img src="images/news/new1.webp" alt="" class="card-img">
                        <div class="card-body box-content">
                            <h3 class="card-title">
                                <a href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                            </h3>
                            <p class="card-text">
                                Người cao tuổi có sự hấp thụ và chuyển hóa các chất kém hơn so với người trẻ tuổi, vì thế chế độ ăn hợp ý là một việc rất...
                            </p>
                            <a href="" class="viewmore">Đọc tiếp</a>
                        </div>
                    </div>
                </div>
                <div class="d-grid gap-2 col-2 mx-auto py-3">
                    <button class="btn btn-green" type="button">Xem tất cả</button>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--    footer-->
    <footer id="footer">
        <iframe onload="resizeIframe(this,339)" src="footer.html"></iframe>
    </footer>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="fa-solid fa-arrow-up"></i></a>
</body>
<script type="text/javascript" src="javascripts/lightslider.js"></script>
<script type="text/javascript" src="javascripts/jquery-3.7.1.js"></script>
<script type="text/javascript" src="javascripts/main.js"></script>
<script type="text/javascript" src="javascripts/bootstrap.bundle.js"></script>
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

document.addEventListener('DOMContentLoaded', function() {
    var backToTopButton = document.querySelector('.back-to-top');

    // Thêm sự kiện cuộn trang
    window.addEventListener('scroll', function() {
        if (window.scrollY > 300) {
            // Hiển thị nút khi cuộn xuống
            backToTopButton.style.visibility = 'visible';
        } else {
            // Ẩn nút khi cuộn lên đầu
            backToTopButton.style.visibility = 'hidden';
        }
    });

    // Thêm sự kiện click để cuộn về đầu trang
    backToTopButton.addEventListener('click', function() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });
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
            window.location.href = "index.html";
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