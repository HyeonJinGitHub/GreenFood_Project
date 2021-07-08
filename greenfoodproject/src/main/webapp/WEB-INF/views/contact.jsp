<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>찍먹부먹–연락처수정</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="ThemeZaa">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1" />
<meta name="description"
	content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
<!-- favicon icon -->
<link rel="shortcut icon" href="resources/images/favicon.png">
<link rel="apple-touch-icon"
	href="resources/images/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="resources/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="resources/images/apple-touch-icon-114x114.png">
<!-- style sheets and font icons  -->
<link rel="stylesheet" type="text/css"
	href="resources/css/font-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/theme-vendors.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/responsive.css" />

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
.box {
	width: 120px;
	height: 120px;
	border-radius: 70%;
	overflow: hidden;
	margin-left: 20px;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>
</head>
<body data-mobile-nav-style="classic">
	<!-- start section -->
	 <section class="big-section bg-light-gray">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center margin-four-bottom">
                        <h6 class="alt-font text-extra-dark-gray font-weight-500">내 정보</h6>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-6 md-margin-15px-bottom">
                        <div class="bg-white padding-40px-all sm-padding-30px-all last-paragraph-no-margin box-shadow-small">
                            <h6 class="text-extra-dark-gray">연락처</h6>
									<div class="swiper-slide box-shadow-small box-shadow-extra-large-hover">
                                    <div class="position-relative bg-white padding-3-rem-all md-padding-4-rem-lr">
                                    <br>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">이메일</span>
                                        <input class="small-input bg-white margin-15px-bottom required w-80 margin-20px-left"  
								type="text" id="nickname" name="nickname" value="${nickname}"
								autocomplete="off">
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">${email }</span>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">휴대전화</span>
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">${phone }</span>
                                    	<button type="button" onclick="move_contact()" class="btn btn-medium btn-fancy btn-dark-gray">수정</button>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-12 col-lg-6 md-margin-15px-bottom">
                       <div class="bg-white padding-40px-all sm-padding-30px-all last-paragraph-no-margin box-shadow-small">
                            <h6 class="text-extra-dark-gray">비밀번호</h6>
							 		<div class="swiper-slide box-shadow-small box-shadow-extra-large-hover">
                                    <div class="position-relative bg-white padding-3-rem-all md-padding-4-rem-lr">
                                    <br>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">로그인 시 사용하는 비밀번호를 변경할 수 있습니다. 주기적인 비밀번호 변경을 통해 개인정보를 안전하게 보호하세요.</span>
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">현재 아이디 : ${id }</span>
                                        <form action="#">
                                    	<button type="submit" class="btn btn-medium btn-fancy btn-dark-gray">수정</button>
                                    	</form>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	<!-- end section -->
	<!-- start footer  -->
	<footer class="footer-dark bg-slate-blue">
		<div
			class="footer-top padding-five-tb lg-padding-eight-tb md-padding-50px-tb">
			<div class="container">
				<div class="row">
					<!-- start footer column -->
					<div
						class="col-12 col-lg-3 col-sm-6 md-margin-40px-bottom xs-margin-25px-bottom">
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Company</span>
						<ul>
							<li><a href="about-us.html">About company</a></li>
							<li><a href="our-services.html">Company services</a></li>
							<li><a href="our-team.html">Job opportunities</a></li>
							<li><a href="contact-us-classic.html">Contact us</a></li>
						</ul>
					</div>
					<!-- end footer column -->
					<!-- start footer column -->
					<div
						class="col-12 col-lg-3 col-sm-6 md-margin-40px-bottom xs-margin-25px-bottom">
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Customer</span>
						<ul>
							<li><a href="faq.html">Client support</a></li>
							<li><a href="pricing-packages.html">Pricing packages</a></li>
							<li><a href="our-story.html">Company history</a></li>
							<li><a href="our-process.html">Our process</a></li>
						</ul>
					</div>
					<!-- end footer column -->
					<!-- start footer column -->
					<div class="col-12 col-lg-3 col-sm-6 xs-margin-25px-bottom">
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Get
							in touch</span>
						<p class="w-85 margin-15px-bottom">27 Eden walk eden centre,
							Orchard view, Paris, France</p>
						<div>
							<i
								class="feather icon-feather-phone-call icon-very-small margin-10px-right text-white"></i>+1
							234 567 8910
						</div>
						<div>
							<i
								class="feather icon-feather-mail icon-very-small margin-10px-right text-white"></i><a
								href="#">info@yourdomain.com</a>
						</div>
					</div>
					<!-- end footer column -->
					<!-- start footer column -->
					<div class="col-12 col-lg-3 col-sm-6">
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom">Follow
							us on Instagram</span>
						<div class="w-100 d-inline-block margin-10px-top">
							<ul
								class="instafeed-grid instafeed-wrapper grid grid-3col xl-grid-3col lg-grid-3col md-grid-3col sm-grid-3col xs-grid-3col gutter-small"
								data-total="3">
								<li class="grid-item"><figure>
										<a href="#" data-href="{{link}}" target="_blank"><img
											src="#" data-src="{{image}}" class="insta-image" alt="" /><span
											class="insta-counts"><i class="fab fa-instagram"></i>{{likes}}</span></a>
									</figure></li>
							</ul>
							<a
								class="alt-font text-extra-small text-uppercase font-weight-500 margin-20px-top d-inline-block"
								href="https://www.instagram.com/" target="_blank"><i
								class="fab fa-instagram icon-extra-small align-middle margin-10px-right text-gradient-light-purple-light-orange"></i><span
								class="d-inline-block align-middle">Follow instagram</span></a>
						</div>
					</div>
					<!-- end footer column -->
				</div>
			</div>
		</div>
		<div
			class="footer-bottom padding-40px-tb border-top border-color-white-transparent">
			<div class="container">
				<div class="row align-items-center">
					<div
						class="col-12 col-md-3 text-center text-md-left sm-margin-20px-bottom">
						<a href="index.html" class="footer-logo"><img
							src="images/logo-white.png" data-at2x="images/logo-white@2x.png"
							alt=""></a>
					</div>
					<div
						class="col-12 col-md-6 text-center last-paragraph-no-margin sm-margin-20px-bottom">
						<p>
							&copy; 2021 Litho is Proudly Powered by <a
								href="https://www.themezaa.com/" target="_blank">ThemeZaa</a>
						</p>
					</div>
					<div class="col-12 col-md-3 text-center text-md-right">
						<div class="social-icon-style-12">
							<ul class="extra-small-icon light">
								<li><a class="facebook" href="https://www.facebook.com/"
									target="_blank"><i class="fab fa-facebook-f"></i></a></li>
								<li><a class="dribbble" href="http://www.dribbble.com"
									target="_blank"><i class="fab fa-dribbble"></i></a></li>
								<li><a class="twitter" href="http://www.twitter.com"
									target="_blank"><i class="fab fa-twitter"></i></a></li>
								<li><a class="instagram" href="http://www.instagram.com"
									target="_blank"><i class="fab fa-instagram"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<!-- start scroll to top -->
	<a class="scroll-top-arrow" href="javascript:void(0);"><i
		class="feather icon-feather-arrow-up"></i></a>
	<!-- end scroll to top -->
	<!-- javascript -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/theme-vendors.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>