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
    <link rel="stylesheet" type="text/css" href="styles/product-detail.css">
    <link rel="stylesheet" type="text/css" href="styles/lightslider.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title></title>
</head>

<body>
   <jsp:include page="Components/header.jsp" />
   
   	<jsp:include page="top-title.jsp">
		<jsp:param name="title" value="" />
	</jsp:include>
	
    <div class="container mt-3">
        <div class="row gx-4">
            <div class="col-9">
                <div class="left-side row">
                    <div class="col-6">
                        <div class="product-images">
                            <ul id="imageGallery">
                            </ul>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="product-details">
                            <h4 class="title text-primary-green" id="productName">Kim chi cải thảo cắt lát Bibigo Ông Kim's gói</h4>
                            <div class="description"> <span>Tình trạng: </span><span class="description text-light-color" id="productStatus">Còn hàng</span>
                            </div>
                            <div class="description"> <span>Mã sản phẩm: </span><span id="productId" class="description text-light-color">KT0032</span>
                            </div>
                            <div class="product-price-box">
                                <div class="row gx-0">
                                    <div class="col-4">
                                        <h2 id="price" class="text-primary-green">12.000đ</h2>
                                        <span class="saving">Tiết kiệm: <span class="text-red">1.500đ</span></span>
                                    </div>
                                    <div class="col-4">
                                        <span class="origin-price">13.500đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="weight mt-3">
                                <span class="description fw-bold">Trọng lượng: </span><span id="type-label" class="text-primary-green"></span>
                                <div class="type-btns d-flex">
                                </div>
                            </div>
                            <div class="quantity mt-3">
                                <span class="description fw-bold">Số lượng: </span>
                                <div class="quantity-form">
                                    <button class="btn-green minus-btn">-</button>
                                    <input class="input-quanlity" type="number" value="1">
                                    <button class="btn-green plus-btn">+</button>
                                </div>
                            </div>
                            <button class="add-to-cart-btn btn-green mt-3">
                                <div class="col-2">
                                    <i class="fas fa-shopping-cart cart-icon"></i>
                                </div>
                                <div class="col-10">
                                    <span class="fw-bold">Thêm vào giỏ hàng</span><br>
                                    <span>Giao hàng tận nơi miễn phí</span>
                                </div>
                            </button>
                            <div class="progress mr-3  mt-2">
                                <div class="progress-bar 
                        progress-bar-striped 
                        progress-bar-animated my-progress-bar" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                                </div>
                            </div>
                            <span class="fw-bold">Đã được miễn phí vận chuyển</span>
                            <div class="sale-box">
                                <div class="sale-title bg-primary-green"> <i class="fa-solid fa-gift" style="font-size: 25px;"></i> Khuyến mãi đặc biệt !!!</div>
                            </div>
                            <div class="sale-detail border-s-r-5">
                                <div class="d-flex align-items-center"> <i class="fa-solid fa-check text-primary-green p-2 fs-2"></i>
                                    <span>Áp dụng Phiếu quà tặng/ Mã giảm giá theo ngành hàng.</span>
                                </div>
                                <div class="d-flex align-items-center"> <i class="fa-solid fa-check text-primary-green p-2 fs-2"></i>
                                    <span>Giảm giá 10% khi mua từ 5 sản phẩm trở lên.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-des mt-4">
                        <button id="show-des-btn" class="px-4 py-2 btn-white-border-green active">MÔ TẢ SẢN PHẨM</button>
                        <button id="show-guide-btn" class="px-4 py-2 btn-white-border-green">HƯỚNG DẪN MUA HÀNG</button>
                        <div class="description-box">
                            <small> Việt Nam đã và đang nổi tiếng với các giống gạo ngon hàng đầu thế giới như gạo ST24, ST25... Bên cạnh đó, những loại gạo nhập khẩu cũng đã lấy lòng được rất nhiều thực khách Việt. Giống gạo Lài Miên Campuchia là một trong những giống gạo nhập khẩu ngon và được rất nhiều người tiêu dùng ưa chuộng. </small>
                        </div>
                        <div class="buy-guide-box">
                            <iframe src="buy-guide.html" onload="resizeIframe(this,400)" scrolling="no"></iframe>
                        </div>
                    </div>
                    <div class="relative-product">
                        <div class="group_title mt-5">
                            <div class="title">
                                <a class="title-name" href="">
                                    Sản phẩm liên quan
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
                            <div class="col-6 col-md-4 col-xl-3">
                                <div class="card radius-green">
                                    <span class="span-sale">Giảm 11%</span>
                                    <img class="card-img-top" src="images/product-images/gaoLaoMien1.png" alt="">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="">
                                                GẠO LÀI MIÈN CAMPUCHIA 1
                                            </a>
                                        </h3>
                                        <div class="price-box">
                                            270.000đ
                                            <span class="price-compare">
                                                27.000đ
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 col-md-4 col-xl-3">
                                <div class="card radius-green">
                                    <span class="span-sale">Giảm 11%</span>
                                    <img class="card-img-top" src="images/product-images/gaoLaoMien1.png" alt="">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="">
                                                GẠO LÀI MIÈN CAMPUCHIA 1
                                            </a>
                                        </h3>
                                        <div class="price-box">
                                            270.000đ
                                            <span class="price-compare">
                                                27.000đ
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 col-md-4 col-xl-3">
                                <div class="card radius-green">
                                    <span class="span-sale">Giảm 11%</span>
                                    <img class="card-img-top" src="images/product-images/gaoLaoMien1.png" alt="">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="">
                                                GẠO LÀI MIÈN CAMPUCHIA 1
                                            </a>
                                        </h3>
                                        <div class="price-box">
                                            270.000đ
                                            <span class="price-compare">
                                                27.000đ
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="relative-product">
                        <div class="group_title mt-5">
                            <div class="title">
                                <a class="title-name" href="">
                                    Sản phẩm đã xem
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
                                <span class="span-sale">Giảm 11%</span>
                                <img class="card-img-top" src="images/product-images/gaoLaoMien1.png" alt="">
                                <div class="card-body">
                                    <h3 class="card-title">
                                        <a href="">
                                            GẠO LÀI MIÈN CAMPUCHIA 1
                                        </a>
                                    </h3>
                                    <div class="price-box">
                                        270.000đ
                                        <span class="price-compare">
                                            27.000đ
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card radius-green">
                                <span class="span-sale">Giảm 10%</span>
                                <img class="card-img-top" src="images/product-images/yen-mach-nguyen-chat-yumfood-goi-400g).jpg" alt="">
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
                                </div>
                            </div>
                            <div class="card radius-green">
                                <span class="span-sale">Giảm 10%</span>
                                <img class="card-img-top" src="images/product-images/yen-mach-nguyen-chat-yumfood-goi-400g).jpg" alt="">
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
                                </div>
                            </div>
                            <div class="card radius-green">
                                <span class="span-sale">Giảm 10%</span>
                                <img class="card-img-top" src="images/product-images/yen-mach-nguyen-chat-yumfood-goi-400g).jpg" alt="">
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="right-side">
                    <div class="box">
                        <h4 class="title text-primary-green">Chính sách cửa hàng</h4>
                        <div class="d-flex align-items-center mt-3">
                            <img src="images/chinhsach/chinhsach_1.png" width="40" height="40" alt="">
                            <div class="text-group">
                                <h6 class="text-primary-green m-0 font-weight-light ">Miễn phí vẫn chuyển</h6>
                                <span>Cho tất cả đơn hàng trong nội thành Hồ Chí Minh</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <img src="images/chinhsach/chinhsach_2.png" width="40" height="40" alt="">
                            <div class="text-group">
                                <h6 class="text-primary-green m-0 font-weight-light ">Miễn phí đổi - trả</h6>
                                <span>Đối với sản phẩm lỗi sản xuất hoặc vận chuyển</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <img src="images/chinhsach/chinhsach_3.png" width="40" height="40" alt="">
                            <div class="text-group">
                                <h6 class="text-primary-green m-0 font-weight-light ">Hỗ trợ nhanh chóng</h6>
                                <span>Gọi Hotline: 19006750 để được hỗ trợ ngay</span>
                            </div>
                        </div>
                    </div>
                    <div class="box mt-4">
                        <h4 class="title text-primary-green">Mã khuyến mãi</h4>
                        <div class="discount-item mt-2">
                            <p class="fs-5 m-0">LTV10</p>
                            <i class="fa-solid fa-info"></i>
                            <small class="d-block">Giảm 10.000đ giá trị đơn hàng</small>
                            <small class="text-primary-green">HSD: 1/12/2023</small>
                            <button class="btn-green copy-btn">Sao chép</button>
                        </div>
                        <div class="discount-item mt-2">
                            <p class="fs-5 m-0">FREESHIP</p>
                            <i class="fa-solid fa-info"></i>
                            <small class="d-block">Miễn phí vận chuyển</small>
                            <small class="text-primary-green ">HSD: <br> Không thời hạn</small>
                            <button class="btn-green copy-btn">Sao chép</button>
                        </div>
                        <div class="discount-item mt-2">
                            <p class="fs-5 m-0">LTV20</p>
                            <i class="fa-solid fa-info"></i>
                            <small class="d-block">Giảm 20% giá trị đơn hàng</small>
                            <small class="text-primary-green ">HSD: 1/12/2023</small>
                            <button class="btn-green copy-btn">Sao chép</button>
                        </div>
                        <div class="discount-item mt-2">
                            <p class="fs-5 m-0">LTV50K</p>
                            <i class="fa-solid fa-info"></i>
                            <small class="d-block">Giảm 50.000đ giá trị đơn hàng</small>
                            <small class="text-primary-green ">HSD: 1/12/2023</small>
                            <button class="btn-green copy-btn">Sao chép</button>
                        </div>
                    </div>
                    <div class=" mt-4">
                        <div class="group_title">
                            <h5 class="title text-primary-green">Có thể bạn thích</h5>
                            <div class="button-control">
                                <div class="btn-green btn-small disabled">
                                    <i class="fa-solid fa-chevron-left fa-chevron"></i>
                                </div>
                                <div class="btn-green btn-small">
                                    <i class="fa-solid fa-chevron-right fa-chevron"></i>
                                </div>
                            </div>
                        </div>
                        <div class="vertical-items-container d-flex flex-column">
                            <div class="item d-flex border-s-r-5 border-hover-green p-2 mb-2">
                                <img src="images/product-images/khoai-lang-mat-tui-1kg-3-10-cu%20(1).jpg" alt="" class="mr-2" width="80px" height="80px">
                                <div>
                                    <span class="max-width-50">Khoai lang mật 1kg (2 - 5 củ)</span>
                                    <span class="text-primary-green fw-bold">12.000đ</span>
                                    <small class="text-decoration-line-through text-secondary text-sm">19.500đ</small>
                                </div>
                            </div>
                            <div class="item d-flex border-s-r-5 border-hover-green p-2 mb-2">
                                <img src="images/product-images/khoai-lang-mat-tui-1kg-3-10-cu%20(1).jpg" alt="" class="mr-2" width="80px" height="80px">
                                <div>
                                    <span class="max-width-50">Khoai lang mật 1kg (2 - 5 củ)</span>
                                    <span class="text-primary-green fw-bold">12.000đ</span>
                                    <small class="text-decoration-line-through text-secondary text-sm">19.500đ</small>
                                </div>
                            </div>
                            <div class="item d-flex border-s-r-5 border-hover-green p-2 mb-2">
                                <img src="images/product-images/khoai-lang-mat-tui-1kg-3-10-cu%20(1).jpg" alt="" class="mr-2" width="80px" height="80px">
                                <div>
                                    <span class="max-width-50">Khoai lang mật 1kg (2 - 5 củ)</span>
                                    <span class="text-primary-green fw-bold">12.000đ</span>
                                    <small class="text-decoration-line-through text-secondary text-sm">19.500đ</small>
                                </div>
                            </div>
                            <div class="item d-flex border-s-r-5 border-hover-green p-2 mb-2">
                                <img src="images/product-images/khoai-lang-mat-tui-1kg-3-10-cu%20(1).jpg" alt="" class="mr-2" width="80px" height="80px">
                                <div>
                                    <span class="max-width-50">Khoai lang mật 1kg (2 - 5 củ)</span>
                                    <span class="text-primary-green fw-bold">12.000đ</span>
                                    <small class="text-decoration-line-through text-secondary text-sm">19.500đ</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
      <jsp:include page="Components/footer.jsp" />
    </footer>
</body>
<script type="text/javascript" src="javascripts/jquery-3.7.1.js"></script>
<script type="text/javascript" src="javascripts/lightslider.js"></script>
<script type="text/javascript" src="javascripts/main.js"></script>
<script type="text/javascript" src="admin/javascripts/FakeDataBase.js"></script>
<script type="text/javascript">
function fetchProductData() {
    let typeBtns = $(".type-btns");

    let urlParametes = new URLSearchParams(window.location.search);
    let productId = urlParametes.get("productId");
    let product = fakeDataBase.findProduct(productId);
    let images = fakeDataBase.getImagesByProductId(productId);
    let types = fakeDataBase.getTypesByProductId(productId);
    for (const t of types) {
        let typeBtn = $("<button>").text(t.description).attr({
            "id": t.id,
            "class": "btn weight-btn"
        });
        typeBtns.append(typeBtn);
    }
    $(".weight-btn").first().addClass(" active");
    let imageGallery = $("#imageGallery");
    for (const image of images) {
        let li = $("<li>").attr({
            "data-thumb": image.path,
            "data-src": image.path
        });
        let img = $("<img>").attr({
            "src": image.path,
            "width": "400px"
        });
        li.append(img);
        imageGallery.append(li);
    }
    $("#top-title").attr("src", "top-title.html?title=" + product.name);
    $("#productId").text(product.id);
    $("#productName").text(product.name);
}
$(document).ready(function() {


    function plus(val) {
        let inputQuanlity = $(".input-quanlity");
        let newCount = Number(inputQuanlity.val()) + val;
        if (newCount > 0) {
            inputQuanlity.val(newCount);
        }
    }

    function getThumbsCount() {
        let re = $("#imageGallery li").length;
        return re;
    }
    fetchProductData();
    getThumbsCount();
    $('#imageGallery').lightSlider({
        gallery: true,
        item: 1,
        loop: true,
        auto: true,
        thumbItem: getThumbsCount(),
        slideMargin: 0,
        enableDrag: true,
        currentPagerPosition: 'left',

    });
    $(".plus-btn").on('click', () => plus(1));
    $(".minus-btn").on('click', () => plus(-1));




    var showDesBtn = $("#show-des-btn");
    var showGuideBtn = $("#show-guide-btn");
    $(".buy-guide-box").hide();
    showDesBtn.click(function(event) {
        $(".description-box").show();
        $(".buy-guide-box").hide();
        showDesBtn.addClass('active');
        showGuideBtn.removeClass('active');
    });
    showGuideBtn.click(function(event) {
        $(".description-box").hide();
        $(".buy-guide-box").show();
        showGuideBtn.addClass('active');
        showDesBtn.removeClass('active');
    });
});
</script>

</html>