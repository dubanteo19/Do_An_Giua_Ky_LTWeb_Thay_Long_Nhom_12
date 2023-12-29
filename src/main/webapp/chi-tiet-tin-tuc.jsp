<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/news.css">
    <link rel="stylesheet" type="text/css" href="styles/footer.css">
    <link rel="stylesheet" href="styles/nav.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	
		<jsp:include page="top-title.jsp">
		<jsp:param name="title" value="Chi tiết tin tức" />
	</jsp:include>
	
<section class="blog-page container pt-3" id="news">
        <article class="article-main">
            <div class="row m-0" style="flex-wrap: wrap;">
                <div class="col-lg-3 blog-left  justify-content-between right-column">
                    <div class="content-menu px-3 bg-footer">
                        <div class="title-head d-flex">
                            <h4 class="font-weight-bold text-primary-green text-center pt-3">Danh mục sản phẩm</h4>
                            <img class="leaf-category" src="images/logo/leaf.png" alt="">
                        </div>
                        <nav class="nav-category">
                            <ul class="nav-news px-0">
                                <li class="list-inline py-1">Trang chủ</li>
                                <li class="item-news list-inline py-2">Sản phẩm <i class="float-end fa-solid fa-plus"></i></li>
                                <li class="item-news list-inline py-2">Sản phẩm khuyến mãi</li>
                                <li class="item-news list-inline py-2 text-primary-green ">Tin tức</li>
                                <li class="item-news list-inline py-2">Giới thiệu</li>
                                <li class="item-news list-inline py-2">Liên hệ</li>
                                <li class="item-news list-inline py-2">Đặt hàng nhanh</li>
                                <li class="item-news list-inline py-1">Chính sách thành viên</li>
                            </ul>
                        </nav>
                    </div>

                    <div class="content-menu px-3 bg-footer">
                        <div class="title-head d-flex">
                            <h4 class="font-weight-bold text-primary-green pt-3">Tin tức nổi bật</h4>
                            <img class="leaf-news" src="images/logo/leaf.png" alt="">
                        </div>
                        <div class="blog-content mb-child-20">
                            <div class="post-thumb d-flex">
                                <a href="">
                                    <img class="img-blog" src="images/news/new1.webp" alt="" title="9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi">
                                </a>
                                <div class="content-right px-2">
                                    <a class="" href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                                </div>
                            </div>
                            <div class="post-thumb d-flex">
                                <a href="">
                                    <img class="img-blog" src="images/news/new1.webp" alt="" title="9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi">
                                </a>
                                <div class="content-right px-2">
                                    <a class="" href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                                </div>
                            </div>
                            <div class="post-thumb d-flex">
                                <a href="">
                                    <img class="img-blog" src="images/news/new1.webp" alt="" title="9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi">
                                </a>
                                <div class="content-right px-2">
                                    <a class="" href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                                </div>
                            </div>
                            <div class="post-thumb d-flex">
                                <a href="">
                                    <img class="img-blog" src="images/news/new1.webp" alt="" title="9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi">
                                </a>
                                <div class="content-right px-2">
                                    <a class="" href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                                </div>
                            </div>
                            <div class="post-thumb d-flex">
                                <a href="">
                                    <img class="img-blog" src="images/news/new1.webp" alt="" title="9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi">
                                </a>
                                <div class="content-right px-2">
                                    <a class="" href="">9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-9 left-column ">
                    <div class="news-container card-deck justify-content-between">
                        <div class="title w-100">
                            <h1>9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi</h1>
                        </div>
                        <div class="posts d-flex">
                            <div class="time-posts">
                                <a a class="text-primary-green"href=""><i class="fa-regular fa-clock"></i></a>
                                <a a class="text-primary-black" href="">Thứ 4, 24/5/2023</a>
                            </div>
                            <div class="time-posts px-3">
                                <a a class="text-primary-green" href=""><i class="fa-regular fa-user"></i></a>
                                <a a class="text-primary-black" href="">Trần Tấn Phát</a>
                            </div>
                        </div>
                        <div class="content-menu bg-footer ps-sm-3">
                            <div class="title-head d-flex">
                                <h4 class="font-weight-bold text-primary-green text-center pt-3">Nội dung chính</h4>
                                <img class="leaf-main-content" src="images/logo/leaf.png" alt="">
                            </div>
                            <nav class="nav-category">
                                <ul class="nav-news px-3">
                                    <li class="py-1"><a class="text-primary-black" href="#1_qua_viet_quat">1. Quả việt quất</a></li>
                                    <li class="item-news py-2"><a class="text-primary-black" href="#2_cac_loai_rau_xanh_la_dam">2. Các loại rau lá xanh đậm</a></li>
                                    <li class="item-news py-2"><a class="text-primary-black" href="#3_cai_brussels">3. Cải Brussels</a></li>
                                    <li class="item-news py-2"><a class="text-primary-black" href="#4_ca_hoi">4. Cá hồi</a></li>
                                    <li class="item-news py-2"><a class="text-primary-black" href="#5_trung">5. Trứng</a></li>
                                    <li class="item-news py-2"><a class="text-primary-black" href="#6_sua_chua">6. Sữa chua Hy Lạp nguyên chất</a></li>
                                    <li class="item-news py-2"><a class="text-primary-black" href="#7_hat_va_qua_hach">7. Hạt và quả hạch</a></li>
                                    <li class="item-news py-1"><a class="text-primary-black" href="#8_ngu_coc">8. Ngũ cốc nguyên hạt</a></li>
                                    <li class="item-news py-1"><a class="text-primary-black" href="#9_nuoc">9. Nước</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="art-content">
                            <p>Người cao tuổi có sự hấp thụ và chuyển hóa các chất kém hơn so với người trẻ tuổi, vì thế chế độ ăn hợp ý là một việc rất quan trọng.
                                Cùng Bách hóa XANH khám phá 9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi qua bài viết sau đây nhé!</p>
                            <h3 id="1_qua_viet_quat">1. Quả việt quất</h3>
                            <p>
                                Quả việt quất được xem là một siêu thực phẩm với <b>hàm lượng chất dinh dưỡng dồi dào</b>. Trong việt quất có hàm lượng phytochemical, anthocyanins và chất chống oxy hóa cao, <b>tăng cường sức khỏe của não bộ và xương.</b>
                            </p>
                            <p>  Một số nghiên cứu khoa học đã chứng minh, người ăn nhiều việt quất có nhận thức thần kinh tích cực hơn, ngăn chặn suy giảm trí nhớ.</p>
                            <p>Người lớn tuổi cần nhiều thực phẩm giàu chất chống oxy hóa để cải thiện chức năng của xương và các cơ quan khác. Vì thế quả việt quất chính là siêu thực phẩm đối với người cao tuổi.</p>
                            <p>Bên cạnh đó, theo nhà nghiên cứu Vivian Chi-Hua Wu, Đại học Maine cho rằng  quả việt quất hoang dã có chứa prebiotic giúp tăng cường sự phát triển của vi khuẩn có lợi (probiotic) trong đường ruột, từ đó giúp hệ tiêu hóa khỏe mạnh hơn.</p>
                            <img src="images/news/quavietquat.jpg" alt="">
                            <p>Quả việt quất</p>
                            <h3 id="2_cac_loai_rau_xanh_la_dam">2. Các loại rau lá xanh đậm</h3>
                            <p>Các loại rau lá xanh đậm giàu chất chống oxy hóa, <b>folate</b>, có tác dụng loại bỏ các gốc tự do ra khỏi cơ thể, giảm nguy cơ mắc bệnh tiểu đường, tim mạch, ung thư,...
                            </p>
                            <p> Các loại rau có màu xanh đậm như rau bina, cải xoăn chứa nhiều viatmin K, hạn chế đông máu và ngừa loãng xương.</p>
                            <p> Rau xanh có nhiều magie giúp ngăn ngừa tiểu đường type 2, bệnh tim mạch, loãng xương và giảm đau.</p>
                            <img src="images/news/raulaxanhdam.jpg" alt="">
                            <p>Các loại rau lá xanh đậm</p>
                            <h3 id="3_cai_brussels">3. Cải Brussels</h3>
                            <p>Cải Brussels giàu chất xơ, ít calo, giúp tăng cường chức năng của hệ tiêu hóa, giúp no lâu hạn chế tiêu thụ các thực phẩm chứa nhiều chất béo.</p>
                            <p>Sulforaphane có cải Brussels trong là một chất chống oxy hóa mạnh, giúp giải độc tốt hơn.</p>
                            <img src="images/news/caibrussels.jpg" alt="">
                            <p>Cải Brussels</p>

                            <h3 id="4_ca_hoi">4. Cá hồi</h3>
                            <p>Cá hồi chứa nhiều axit béo omega, giúp ngăn ngừa bệnh tim mạch. Protein có trong cá hồi cung cấp năng lượng tuyệt vời, duy trì khối lượng cơ và sức mạnh.</p>
                            <p>Bên cạnh đó, choline có trong trứng là chất dẫn truyền thần kinh quan trọng đối với người lớn tuổi, có tác dụng trong việc điều chỉnh trí nhớ và tâm trạng.</p>
                            <img src="images/news/cahoi.jpg" alt="">
                            <p>Cá hồi</p>

                            <h3 id="5_trung">5. Trứng</h3>
                            <p>Trứng là một thực phẩm rất giàu dinh dưỡng, phù hợp với nhiều lứa tuổi. Protein có trong trứng rất tốt cho người cao tuổi.</p>
                            <img src="images/news/trung.jpg" alt="">
                            <p>Trứng</p>

                            <h3 id="6_sua_chua">6. Sữa chua Hy Lạp nguyên chất</h3>
                            <p>Sữa chua Hy Lạp nguyên chất có nhiều protein hơn so với các loại sữa chua khác. Một cốc sữa chua Hy Lạp chứa 17 g protein và khoảng 20% lượng canxi cần thiết cho một ngày, giúp tăng cường sức khỏe xương và hạn chế chứng suy giảm trí nhớ.</p>
                            <img src="images/news/suachua.jpg" alt="">
                            <p>Sữa chua Hy Lạp nguyên chất</p>

                            <h3 id="7_hat_va_qua_hach">7. Hạt và quả hạch</h3>
                            <p>Quả óc chó, hạt lanh xay, hạt chia và hạt cây gai dầu đều là những thực phẩm siêu tốt cho người lớn tuổi. Các loại hạt này chứa một lượng axit béo omega-3 dồi dào có lợi cho sức khỏe.</p>
                            <p>Tuy nhiên, các loại quả hạch và hạt đều chứa nhiều calo và chất béo nên người dùng cần cân nhắc đến khẩu phần ăn hợp lý, tránh bị dư thừa gây tác dụng ngược.</p>
                            <img src="images/news/quahach.jpg" alt="">'
                            <p>Hạt và quả hạch</p>

                            <h3 id="8_ngu_coc">8. Ngũ cốc nguyên hạt</h3>
                            <p>Ngũ cốc nguyên hạt là một loại siêu thực phẩm tốt cho nhiều người, đặc biệt là đối với người lớn tuổi.</p>
                            <p>So với các loại ngũ cốc đã tinh chế, ngũ cốc nguyên hạt sẽ giàu dưỡng chất hơn, giữ được trọn vẹn những chất dinh dưỡng cần thiết như chất xơ, folate, sắt, magie, kali, protein, vitamin B1 (thiamin), vitamin B2,...</p>
                            <img src="images/news/ngucoc.jpg" alt="">
                            <p>Ngũ cốc nguyên hạt</p>

                            <h3 id="9_nuoc">9. Nước</h3>
                            <p>Nước là một thành phần không thể thiếu trong cơ thể. Hãy uống đủ 1.5 lít nước mỗi ngày, ngay cả khi bạn không cảm thấy khác.</p>
                            <p>Tuy nhiên, tránh uống quá nhiều nước 1 giờ trước khi đi ngủ để tránh thức giữa đêm.</p>
                            <img src="images/news/nuoc.jpg" alt="">
                            <p>Nước</p>

                            <p><i>Trên đây là  9 'siêu thực phẩm' cần có trong chế độ ăn uống của người cao tuổi. Mong rằng bài viết đã mang đến cho bạn nhiều thông tin hữu ích.</i></p>
                            <p><i>Nguồn: Tạp chí Sức khỏe & Đời sống</i></p>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
    <div class="setmeunuclick">
        <span class="tabclick">
            <img src="images/news/list-scroll.svg" alt="Mục lục" style="width: 50px">
        </span>
        <div class="fixmenu">
            <div class="close">
                <div class="toc-top d-flex" style="background-color: rgb(238 238 238);">
                    <img src="images/news/list-scroll.svg" alt="Mục lục" style="width: 30px">
                    <p class="text-center pt-2 px-3"  style="font-size: 20px">Nội dung bài viết</p>
                    <span class="icon-close"><i class="fa-regular fa-circle-xmark p-3" style="font-size: 20px"></i></i></span>
                </div>
                <div class="toc-bottom" style="background-color: rgb(249 249 249)">
                    <ul class="toc-list">
                        <li class="item-news py-1"><a class="text-primary-black" href="#1_qua_viet_quat">1. Quả việt quất</a></li>
                        <li class="item-news py-2"><a class="text-primary-black" href="#2_cac_loai_rau_xanh_la_dam">2. Các loại rau lá xanh đậm</a></li>
                        <li class="item-news py-2"><a class="text-primary-black" href="#3_cai_brussels">3. Cải Brussels</a></li>
                        <li class="item-news py-2"><a class="text-primary-black" href="#4_ca_hoi">4. Cá hồi</a></li>
                        <li class="item-news py-2"><a class="text-primary-black" href="#5_trung">5. Trứng</a></li>
                        <li class="item-news py-2"><a class="text-primary-black" href="#6_sua_chua">6. Sữa chua Hy Lạp nguyên chất</a></li>
                        <li class="item-news py-2"><a class="text-primary-black" href="#7_hat_va_qua_hach">7. Hạt và quả hạch</a></li>
                        <li class="item-news py-1"><a class="text-primary-black" href="#8_ngu_coc">8. Ngũ cốc nguyên hạt</a></li>
                        <li class="item-news py-1"><a class="text-primary-black" href="#9_nuoc">9. Nước</a></li>
                    </ul>
                </div>
                <div class="bg"></div>
            </div>

        </div>
    </div>
    <div class="container">
        <div>
            <h3 class="title text-center">
                <a class="title-name text-primary-green " href="">Viết bình luận của bạn</a>
            </h3>
        </div>
        <div class="row py-3" >
            <div class="col-md-6 pe-3 ps-0" ><input type="text" name="" placeholder="Họ và tên" style="width: 100%; border-radius: 5px; border: 1px solid #e6e6e6;border-bottom: #679210 solid 4px;font-size: 20px;"></div>
            <div class="col-md-6 pe-0 ps-3"><input type="email" name="" placeholder="Email" style="width: 100%; border-radius: 5px; border: 1px solid #e6e6e6;border-bottom: #679210 solid 4px;font-size: 20px;"></div>

        </div>
        <div class="row">
            <textarea style="width: 100%; border-radius: 5px; border: 1px solid #e6e6e6;border-bottom: #679210 solid 4px;font-size: 20px;" name="" id="" cols="30" rows="10" placeholder="Nội dung"></textarea>
        </div>
        <div class="d-grid gap-2 col-2 py-3 px-0">
            <button class="btn btn-green" type="button" style="color: #cbccce">Gửi thông tin</button>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="group_title">
                    <div>
                        <h3 class="title">
                            <a class="title-name" href="">Tin tức liên quan</a>
                        </h3>
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

            </div>
        </div>
    </div>
</section>

</body>
<script>
    const tabClick = document.querySelector('.tabclick');
    const fixMenu = document.querySelector('.fixmenu');
    const close = document.querySelector('.close');
    const closeX = document.querySelector('.icon-close');

    tabClick.addEventListener('click', function() {
        fixMenu.style.display = 'block';
        tabClick.style.display = 'none';
    });

    closeX.addEventListener('click', function() {
        tabClick.style.display = 'block';
        fixMenu.style.display = 'none';
    });
    const tocList = document.querySelector('.toc-list');

    tocList.addEventListener('click', function(event) {
        const li = event.target.closest('li');
        li.style.backgroundColor = '#679210';

        const prevLi = tocList.querySelector('.active');
        if (prevLi) {
            prevLi.style.backgroundColor = '#ffffff';
            prevLi.classList.remove('active');
        }

        li.classList.add('active');
    });
</script>
</html>