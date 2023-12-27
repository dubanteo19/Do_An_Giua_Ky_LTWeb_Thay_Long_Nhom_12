<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/news.css">
    <link rel="stylesheet" type="text/css" href="styles/footer.css">
    <link rel="stylesheet" href="styles/nav.css">
    <link rel="stylesheet" href="styles/lien-he.css">
    <link rel="stylesheet" type="text/css" href="styles/product-detail.css">
    <link rel="stylesheet" type="text/css" href="styles/lightslider.css">
    <link rel="stylesheet" href="styles/gio-hang.css">

</head>
<body>
	<jsp:include page="header.jsp" />
	
		<jsp:include page="top-title.jsp">
		<jsp:param name="title" value="Giỏ hàng" />
	</jsp:include>
	
<section id="card">
    <div class="container">
        <div class="row">
            <div class=" discount d-flex row-cols-4">
                <div class="discount-item mt-2 me-1">
                    <p class="fs-5 m-0">LTV10</p>
                    <i class="fa-solid fa-info"></i>
                    <small class="d-block">Giảm 10.000đ giá trị đơn hàng</small>
                    <small class="text-primary-green">HSD: 1/12/2023</small>
                    <button class="btn-green copyz-btn">Sao chép</button>
                </div>
                <div class="discount-item mt-2 me-1">
                    <p class="fs-5 m-0">FREESHIP</p>
                    <i class="fa-solid fa-info"></i>
                    <small class="d-block">Miễn phí vận chuyển</small>
                    <small class="text-primary-green">HSD: Không thời hạn</small>
                    <button class="btn-green copyz-btn">Sao chép</button>
                </div>
                <div class="discount-item mt-2 me-1">
                    <p class="fs-5 m-0">LTV20</p>
                    <i class="fa-solid fa-info"></i>
                    <small class="d-block">Giảm 20% giá trị đơn hàng</small>
                    <small class="text-primary-green">HSD: 1/12/2023</small>
                    <button class="btn-green copyz-btn">Sao chép</button>
                </div>
                <div class="discount-item mt-2 ">
                    <p class="fs-5 m-0">LTV50K</p>
                    <i class="fa-solid fa-info"></i>
                    <small class="d-block">Giảm 50.000đ giá trị đơn hàng</small>
                    <small class="text-primary-green">HSD: 1/12/2023</small>
                    <button class="btn-green copyz-btn">Sao chép</button>
                </div>
            </div>
        </div>
        <div class="row pt-3">
            <div class="col-xl-9 col-lg-8 col-12 col-cart-left">
                <div class="cart-page d-xl-block d-none">
                    <div class="drawer__inner">
                        <div class="CartPageContainer">
                            <form action="" method="post" novalidate="" class="cart">
                                <div class="cart-header-info d-flex">
                                    <div class="cart-header-info-item col-xl-7">Thông tin sản phẩm</div>
                                    <div class="cart-header-info-item col-xl-2">Đơn giá</div>
                                    <div class="cart-header-info-item col-xl-2">Số lượng</div>
                                    <div class="cart-header-info-item col-xl-2">Thành tiền</div>
                                </div>
                                <div class="cart_body items">
                                    <div class="row m-0">
                                        <div class="cart_product d-flex text-center" data-line="1">
                                            <a href="" class="cart_image" title="Kim chi"><img src="images/product-images/kim-chi1.png" alt="Kim chi" style="width: 140px"></a>
                                            <div class="cart_info d-flex col-xl-10">
                                                <div class="cart_name col-xl-6 text-lg-start text-center">
                                                    <a href="" class="h6 fw-bold text-dark" title="Kim chi">Kim chi</a>
                                                    <span class="variant-title d-block">500gr</span>
                                                    <a class="remove-item-cart fw-bold text-primary-green" href="" data-line="1">Xóa</a>
                                                </div>
                                                <div class="grid d-flex col-xl-2">
                                                    <div class="grid__item one-half cart_prices">
                                                        <span class="cart-price fw-bold text-primary-green">16.000₫</span>
                                                    </div>
                                                </div>
                                                <div class="grid col-xl-2">
                                                    <div class="quantity">
                                                        <div class="quantity-form" style="width: 100px; height: 30px">
                                                            <button class="btn-green minus-btn" style="width:25px; height: 25px; color: #fff">-</button>
                                                            <input type="text" name="updates[]" class="input-quanlity number-sidebar" maxlength="3" value="3" min="0" data-id="" data-line="2" aria-label="quantity" pattern="[0-9]*" style="width: 33px">
                                                            <button class="btn-green plus-btn" style="width: 25px ; height: 25px; color: #fff">+</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="grid col-xl-2 text-center">
                                                    <div class="grid__item one-half text-right cart_prices">
                                                        <span class="cart-price fw-bold text-primary-green">48.000₫</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart_product d-flex" data-line="2">
                                            <a href="" class="cart_image" title="Kim chi"><img src="images/product-images/kim-chi1.png" alt="Kim chi" style="width: 140px"></a>
                                            <div class="cart_info d-flex col-xl-10">
                                                <div class="cart_name col-xl-6 text-lg-start text-center">
                                                    <a href="" class="h6 fw-bold text-dark" title="Kim chi">Kim chi</a>
                                                    <span class="variant-title d-block">500gr</span>
                                                    <a class="remove-item-cart fw-bold text-primary-green" href="" data-line="1">Xóa</a>
                                                </div>
                                                <div class="grid d-flex col-xl-2">
                                                    <div class="grid__item one-half cart_prices">
                                                        <span class="cart-price fw-bold text-primary-green">16.000₫</span>
                                                    </div>
                                                </div>
                                                <div class="grid col-xl-2">
                                                    <div class="quantity">
                                                        <div class="quantity-form" style="width: 100px; height: 30px">
                                                            <button class="btn-green minus-btn" style="width:25px; height: 25px; color: #fff">-</button>
                                                            <input type="text" name="updates[]" class="input-quanlity number-sidebar" maxlength="3" value="3" min="0" data-id="" data-line="2" aria-label="quantity" pattern="[0-9]*" style="width: 33px">
                                                            <button class="btn-green plus-btn" style="width: 25px ; height: 25px; color: #fff">+</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="grid col-xl-2 text-center">
                                                    <div class="grid__item one-half text-right cart_prices">
                                                        <span class="cart-price fw-bold text-primary-green">48.000₫</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="cart-footer">
                                    <div class="row">
                                        <div class="col-lg-4 col-12 offset-md-8">
                                            <div class="pt-3">
                                                <div class="cart_subtotal d-flex">
                                                    <div class="cart-left" style="padding-right: 150px">Tổng tiền:</div>
                                                    <div class="text-right text-primary-green fw-bold"><span class="total-price">288.300₫</span></div>
                                                </div>
                                            </div>
                                            <div class="mt-3">
                                                <button type="button" class="button btn btn-default bg-primary-green" id="btn-proceed-checkout" title="Thanh toán">Thanh toán</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="cart-mobile-page d-block d-xl-none">
                    <div class="CartMobileContainer"></div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-12 col-cart-right ">
                <form method="post" novalidate="" class="formVAT bg-footer p-3">
                    <h4 class="">
                        Thời gian giao hàng
                    </h4>
                    <div class="timedeli-modal d-flex justify-content-between">
                        <fieldset class="input_group date_pick">
                            <input type="text" placeholder="Chọn ngày" readonly="" id="date" name="attributes[shipdate]" class="date_picker" required="" style="width: 130px">
                        </fieldset>
                        <fieldset class="input_group date_time" >
                            <select name="time" class="timeer timedeli-cta" style="width: 130px">
                                <option selected="">Chọn thời gian</option>


                                <option value="08h00 - 12h00">08h00 - 12h00</option>

                                <option value=" 14h00 - 18h00"> 14h00 - 18h00</option>

                                <option value=" 19h00 - 21h00"> 19h00 - 21h00</option>

                            </select>
                        </fieldset>
                    </div>

                    <div class="r-bill">
                        <div class="checkbox pt-3">
                            <input type="checkbox" id="checbkox-bill" name="attributes[invoice]" value="có" class="regular-checkbox">
                            <label for="checkbox-bill" class="title" style="font-size: 20px">Xuất hóa đơn công ty</label>
                        </div>
                        <div class="bill-field">
                            <div class="form-group mt-2">
                                <label>Tên công ty</label>
                                <input type="text" class="form-control val-f" name="attributes[company_name]" value="" placeholder="Tên công ty">
                            </div>
                            <div class="form-group mt-2">
                                <label>Mã số thuế</label>
                                <input type="number" pattern=".{10,}" class="form-control val-f val-n" name="attributes[tax_code]" value="" placeholder="Mã số thuế">
                            </div>
                            <div class="form-group mt-2">
                                <label>Địa chỉ công ty</label>
                                <textarea type="text" class="form-control val-f" name="attributes[company_address]" placeholder="Nhập địa chỉ công ty (bao gồm Phường/Xã, Quận/Huyện, Tỉnh/Thành phố nếu có)"></textarea>
                            </div>
                            <div class="form-group mt-2">
                                <label>Email nhận hoá đơn</label>
                                <input type="email" class="form-control val-f val-email" name="attributes[invoice_email]" value="" placeholder="Email nhận hoá đơn">
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

</section>

<footer>
    	<jsp:include page="footer.jsp" />
</footer>
<script>
    const checkbox = document.querySelector('#checbkox-bill');
    const billField = document.querySelector('.bill-field');

    checkbox.addEventListener('change', () => {
        if (checkbox.checked) {
            billField.style.display = 'block';
        } else {
            billField.style.display = 'none';
        }
    });

</script>
</body>
<script type="text/javascript" src="javascripts/main.js"></script>

</html>