<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/footer.css">
    <link rel="stylesheet" href="styles/tai-khoan.css">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta name="theme-color" content="#fafafa">
</head>
<script type="text/javascript" src="javascripts/main.js"></script>

<body>
    <jsp:include page="Components/header.jsp" />
    
    	<jsp:include page="top-title.jsp">
		<jsp:param name="title" value="Tài khoản" />
	</jsp:include>
	
    <section class="signup">
        <div class="container">
            <div class="row pt-3">
                <div class="col-lg-3">
                    <div id="page_account">
                        <h5 class="title-acccount">TRANG TÀI KHOẢN</h5>
                        <p class="title-acccount">Xin chào! <span class="text-primary-green" id="userName" style="color: #b02a37"></span></p>
                    </div>
                    <ul class=" toc-list m-0 p-0">
                        <li class="info_account" data-target="ACCOUNT_INFORMATION" style="cursor: pointer">Thông tin tài khoản</li>
                        <li class="order" data-target="YOUR_ORDER" style="cursor: pointer">Đơn hàng của bạn</li>
                        <li class="change-pass" data-target="Change_Password" style="cursor: pointer">Đổi mật khẩu</li>
                        <li class="address-number" data-target="address_your" style="cursor: pointer">Sổ địa chỉ (0)</li>
                    </ul>
                </div>
                <div class="col-lg-9">
                    <div class="block-account" id="ACCOUNT_INFORMATION">
                        <h5 class="title-acccount">THÔNG TIN TÀI KHOẢN</h5>
                        <p class="">Họ tên: <strong id="user_fullname"></strong></p>
                        <p class="">Email: <strong id="user_email"></strong></p>
                        <p class="">Số điện thoại: <strong id="user_phone"></strong></p>
                        <p class="">Địa chỉ: <strong id="user_address"></strong></p>
                        <button class="btn btn-warning btn-hover" data-toggle="modal" data-target="#updateInfor">Cập nhập thông tin?</button>
                    </div>
                    <div class="block-account" id="YOUR_ORDER">
                        <div class="recent-orders">
                            <div class="table-responsive-block tab-all" style="overflow-x:auto;">
                                <h5 class="title-acccount">ĐƠN HÀNG CỦA BẠN</h5>
                                <table class="table table-cart table-order" id="my-orders-table" style="border: #2c3034 solid 1px">
                                    <thead class="thead-default bg-primary-green text-white">
                                        <tr>
                                            <th>Đơn hàng</th>
                                            <th>Ngày</th>
                                            <th>Địa chỉ</th>
                                            <th>Giá trị đơn hàng</th>
                                            <th>TT thanh toán</th>
                                            <th>TT vận chuyển</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="6" class="text-center">
                                                <p>Không có đơn hàng nào.</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="paginate-pages pull-right page-account text-right col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            </div>
                        </div>
                    </div>
                    <div class="block-account" id="Change_Password">
                        <div class="col-xs-12 col-sm-12 col-lg-9 col-right-ac">
                            <h5 class="title-head margin-top-0">ĐỔI MÂT KHẨU</h5>
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="page-login">
                                        <form method="post" action="" id="change_customer_password" accept-charset="UTF-8">
                                            <input name="FormType" type="hidden" value="change_customer_password">
                                            <input name="utf8" type="hidden" value="true">
                                            <p>Để đảm bảo tính bảo mật bạn vui lòng đặt lại mật khẩu với ít nhất 8 kí tự</p>
                                            <div class="form-signup clearfix">
                                                <fieldset class="form-group">
                                                    <label for="oldPass">Mật khẩu cũ <span class="error">*</span></label>
                                                    <input type="password" name="OldPassword" id="OldPass" required="" class="form-control form-control-lg">
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="changePass">Mật khẩu mới <span class="error">*</span></label>
                                                    <input type="password" name="Password" id="changePass" required="" class="form-control form-control-lg">
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="confirmPass">Xác nhận lại mật khẩu <span class="error">*</span></label>
                                                    <input type="password" name="ConfirmPassword" id="confirmPass" required="" class="form-control form-control-lg">
                                                </fieldset>
                                                <button class=" text-primary-white  btn btn-hover" style="color: #fff; background-color: var(--primary-green)" type="submit">
                                                    <i class="hoverButton"></i>Đặt lại mật khẩu</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="block-account" id="address_your">
                        <h5 class="title-acccount">ĐỊA CHỈ CỦA BẠN</h5>
                        <p class="btn-row">
                            <button class="btn btn-success btn-hover" id="add-adress" type="button">Thêm địa chỉ</button>
                        </p>
                        <div class="row adress-form">
                            <div class="col-md-8 mb-4">
                                <div class="card mb-4">
                                    <div class="adress-form">
                                        <div class="adress-form-content">
                                            <h2>
                                                <span id="adress-close">X Đóng</i></span></h2>
                                            <form action="">
                                                <p>Chọn đầy đủ địa chỉ nhận hàng để biết chính xác thời gian giao</p>
                                                <div class=" col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group" style="margin: 0">
                                                        <input type="text" class="form-input select-field" value="" name="lastName" id="lastName" placeholder="Họ tên" required="">
                                                    </fieldset>
                                                </div>
                                                <div class=" col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group">
                                                        <input placeholder="Số điện thoại" type="text" pattern="\d+" class="form-input form-control-comment" name="PhoneNumber" required="" id="PhoneNumber">
                                                    </fieldset>
                                                </div>
                                                <div class="group-country col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group select-field">
                                                        <select name="Province" value="" class="form-control add" id="provinces" onchange="getDistricts()"></select>
                                                    </fieldset>
                                                    <fieldset class="form-group select-field">
                                                        <select name="District" class="form-control add" value="" id="districts" onchange="getWards()">
                                                            <option value="" hidden="">Quận huyện</option>
                                                        </select>
                                                    </fieldset>
                                                    <fieldset class="form-group select-field">
                                                        <select name="Ward" class="form-control add" value="" id="wards">
                                                            <option value="" hidden="">Phường xã</option>
                                                        </select>
                                                    </fieldset>
                                                </div>
                                                <div class=" col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group">
                                                        <input class="" type="text" placeholder="Số nhà tên đường (không bắt buộc)" style="margin: 0">
                                                    </fieldset>
                                                </div>
                                                <button class="btn-hover">Xác nhận</button>
                                            </form>
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
    <div class="modal" tabindex="-1" role="dialog" id="updateInfor">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Cập nhập thông tin</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="newFullName" placeholder="">
                        <label for="newFullName">Họ tên mới</label>
                    </div>
                    <div class="form-floating">
                        <input type="number" class="form-control" id="newPhone" placeholder="">
                        <label for="newPhone">Số điện thoại mới</label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" id="update-btn" class="btn btn-primary">Lưu thông tin</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
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
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossOrigin="anonymous"></script>
    <script src="javascripts/vn-provinces.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script type="text/javascript" src="admin/javascripts/FakeDataBase.js"></script>
    <script type="text/javascript" src="javascripts/bootstrap.min.js"></script>
    <script>
    var districts;
    let provincesElement = $("#provinces");
    let districtsE = $("#districts");
    for (const province of provinces) {
        var optionE = $("<option>").html(province.name);
        provincesElement.append(optionE);
    }
    provincesElement.select2();

    function getDistricts() {

        var selectedProvince = $("#provinces").val();
        districtsE.empty();
        for (const province of provinces) {
            if (province.name === (selectedProvince)) {
                districts = province.districts
            }
        }
        for (const district of districts) {
            var option = $("<option>").html(district.name);
            districtsE.append(option);
        }
    }

    function getWards() {
        var selectedDisctrict = districtsE.val();
        var wards;
        var wardE = $("#wards");
        wardE.empty();
        for (const district of districts) {
            if (district.name === (selectedDisctrict)) {
                wards = district.wards;
            }
        }
        for (const ward of wards) {
            var option = $("<option>").html(ward.name);
            wardE.append(option);
        }
    }

    function removeActive() {
        $(".toc-list li").each(function() {
            $(this).removeClass("active");
        })
    }
    $(".toc-list li").each(function() {
        $(this).click(() => {
            $(".block-account").each(function() {
                $(this).hide();
            });
            removeActive();
            $(this).addClass("active");
            let id = $(this).data("target");
            $("#" + id).toggle("slide");
        })
    });
    $(document).ready(function() {
        let user = JSON.parse(localStorage.getItem("user"));
        let userFullnameElement = $("#user_fullname");
        let userEmailElement = $("#user_email");
        let userPhoneElement = $("#user_phone");
        let userAdressElement = $("#user_address");
        let address = user.address == "" ? "Chưa có địa chỉ" : user.address;
        let curtomer = $("#userName");

        userFullnameElement.text(user.fullName);
        userEmailElement.text(user.email);
        curtomer.text(user.fullName);
        userPhoneElement.text(user.phone);
        userAdressElement.text(address);
        $(".adress-form").hide();
        $("#add-adress").click(function(event) {
            $(".adress-form").show();
        });
        $("#adress-close").click(() => {
            $(".adress-form").hide();
        })

        $("#update-btn").click(function(argument) {
            let newFullName = $("#newFullName").val();
            let newPhone = $("#newPhone").val();
            let userInDataBase = fakeDataBase.findUserByUsername(user.email);
            userInDataBase.fullName = newFullName;
            userInDataBase.phone = newPhone;
            localStorage.setItem("user", JSON.stringify(userInDataBase));
            alert("Cập nhập thông tin thành công");
        })
    });
    $(document).ready(function() {
        $('#change-password-form').submit(function(event) {
            event.preventDefault();

            var oldPassword = $('#old-password').val();
            var newPassword = $('#new-password').val();
            var confirmPassword = $('#confirm-password').val();
            var errorMessageElement = $('#error-message');

            // Kiểm tra mật khẩu cũ có trùng khớp với mật khẩu đã lưu hay không
            if (fakeDataBase.checkPassword(oldPassword)) {
                // Kiểm tra mật khẩu mới và xác nhận mật khẩu mới
                if (newPassword === confirmPassword) {
                    // Cập nhật mật khẩu trong fake database (hoặc backend thực sự)
                    fakeDataBase.updatePassword(newPassword);

                    // Thông báo thành công
                    errorMessageElement.text('Đổi mật khẩu thành công!');
                } else {
                    errorMessageElement.text('Mật khẩu mới không khớp. Vui lòng thử lại.');
                }
            } else {
                errorMessageElement.text('Mật khẩu cũ không đúng. Vui lòng kiểm tra lại.');
            }
        });
    });
    </script>
    <script type="text/javascript" src="javascripts/main.js"></script>
</body>

</html>