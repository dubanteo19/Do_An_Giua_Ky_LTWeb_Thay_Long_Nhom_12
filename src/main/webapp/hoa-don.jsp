<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hoa don</title>

    <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/news.css">
    <link rel="stylesheet" type="text/css" href="styles/footer.css">
    <link rel="stylesheet" type="text/css" href="styles/nav.css">
    <link rel="stylesheet" href="styles/login.css">
    <script type="text/javascript" src="javascripts/jquery-3.7.1.js"></script>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        .icon-check {
            max-width: 72px;
            max-height: 72px;
        }

        .message-container {
            text-align: start;
            padding-left: 14px;
        }

        .message-content {
            width: 100%;
            height: calc(1em * 1.4 * 2);
        }

        .section_order {
            border: 1px solid #dadada;
            padding: 1em;
            margin: 1em;
        }

        p {
            text-align: start !important;
            font-weight: normal;
            font-size: 14px;
        }

        .title-head {
            text-align: start !important;
        }

        body {
            background-color: #e6e8ea;
        }

        .btn-blue {
            padding: 16px 24px;
            color: #fff;
            border: none;
            border-radius: 8px;
            background-color: #357ebd;
            white-space: nowrap;
        }

        .btn-blue:hover {
            background-color: #2a6395;
            border-color: #225179;
        }

        .section_print {
            margin-top: 40px;
            display: flex;
            align-items: center;
            justify-content: end;
        }

        span.print {
            margin-left: 40px;
            margin-right: 40px;
        }

        span.print:hover>* {
            color: #2a6395;
        }

        span.print i {
            font-size: 1.8rem;
            color: #2a9dcc;
            cursor: pointer;
        }

        span.print i:hover {

        }

        span.print span {
            font-size: 1.5rem;
            cursor: pointer;
            color: #2a9dcc;
        }
        .container {
            width: 80%;
        }

        aside {
            margin-left: 20px;
            background-color: #fafafa;
            border: 1px solid #e1e1e1;
            padding: 10px 10px;
        }

        aside * {
            font-size: 14px !important;
        }

        aside > *:not(:last-child) {
            border-bottom: 1px solid #ddd;
            margin-bottom: 10px;
        }

        .border-bottom-child>*:not(:last-child) {
            border-bottom: 2px solid #ddd;
        }

        .order-summary {
            display: flex;
            flex-direction: column;
        }

        .order-item {
            display: flex;
            text-align: start;
        }

        .total_cost > * {
            font-size: 16px !important;
        }

        .large-price {
            color: #2a9dcc;
            font-size: 20px !important;
            font-weight: 400;
        }
    </style>

</head>
<body>
    <div id="wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <a href=""><img src="./images/logo/logo_large.png" alt=""></a>
                    </div>
                    <form action="">
                        <div class="row">
                            <div class="col-md-7">
                                <section class="heading d-flex">
                                    <div class="icon-check">
                                        <img src="./images/icons/check_icon.png" alt="">
                                    </div>
                                    <div class="message-container">
                                        <h4 class="title-head">Cảm ơn đã đặt hàng</h4>
                                        <p class="message-content">Một email xác nhận đã được gửi tới masd@gmail.com.<br>Xin vui lòng kiểm tra email của bạn</p>
                                    </div>
                                </section>
                                <section class="section_order mt-3">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h4 class="title-head">Thông tin mua hàng</h4>
                                            <p>asd</p>
                                            <p>masd@gmail.com</p>
                                            <p>+84988422322</p>
                                        </div>
                                        <div class="col-md-6">
                                            <h4 class="title-head">Địa chỉ nhận hàng</h4>
                                            <p>asd</p>
                                            <p>12312</p>
                                            <p>Phường Quang Trung, Thị xã Sơn Tây, Hà Nội</p>
                                            <p>+84988422322</p>
                                        </div>
                                        <div class="col-md-6">
                                            <h4 class="title-head">Phương thức thanh toán</h4>
                                            <p>Thanh toán khi giao hàng (COD)</p>
                                        </div>
                                        <div class="col-md-6">
                                            <h4 class="title-head">Phương thức vận chuyển</h4>
                                            <p>Giao hàng tận nơi</p>
                                        </div>
                                    </div>
                                </section>
                                <section class="section_print">
                                    <button class="btn-blue">Tiếp tục mua hàng</button>
                                    <span class="print">
                                        <i class="fa fa-print"></i>
                                        <span>In</span>
                                    </span>
                                </section>
                            </div>

                            <div class="col-md-5">
                                <aside>
                                    <div>
                                        <h4 class="title-head">Đơn hàng #1012 (3)</h4>
                                    </div>
                                    <div class="order-summary border-bottom-child">
                                        <div class="order-item">
                                            <div class="row g-0">
                                                <div class="col-md-3 d-flex align-items-center p-2">
                                                    <img src="images/product_test/6-hop-nuoc-dua-xiem-xanh-cocoxim-1-lit-202104081023172228.webp" alt="" class="card-img mx-auto">
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="card-body d-flex flex-column">
                                                        <h3 class="card-title">
                                                            <a href="">6 hộp nước dừa xiêm xanh Cocoxim 1 lít</a>
                                                        </h3>
                                                        <div class="card-text">
                                                            <div class="price-box">229.000đ</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order-summary">
                                        <div class="py-3">
                                            <div class="d-flex justify-content-between">
                                                <span>Tạm tính</span>
                                                <span class="small-price">229.000đ</span>
                                            </div>
                                            <div class="d-flex justify-content-between mt-2">
                                                <span>Phí vận chuyển</span>
                                                <span class="small-price">1.100đ</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="total_cost d-flex justify-content-between">
                                        <span class="title-head">Tổng cộng</span>
                                        <span class="large-price">11.000đ</span>
                                    </div>
                                </aside>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>