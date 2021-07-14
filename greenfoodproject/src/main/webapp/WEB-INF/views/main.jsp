<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="app" value="${pageContext.request.contextPath}" />

<c:set var="memberDTO" value="${memberDTO }"></c:set>
<c:set var="recipeDTO" value="${recipeDTO }"></c:set>
<c:set var="categoryDTO" value="${categoryDTO }"></c:set>
<c:set var="productDTO" value="${productDTO }"></c:set>


<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>Vecipe | 메인</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="author" content="ThemeZaa">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <meta name="description" content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
        <!-- favicon icon -->
        <link rel="shortcut icon" href="resources/images/favicon.png">
        <link rel="apple-touch-icon" href="resources/images/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="resources/images/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="resources/images/apple-touch-icon-114x114.png">
        <!-- style sheets and font icons  -->
        <link rel="stylesheet" type="text/css" href="resources/css/font-icons.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/theme-vendors.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/responsive.css" />
        <!-- revolution slider -->
        <link rel="stylesheet" type="text/css" href="resources/revolution/css/settings.css">
        <link rel="stylesheet" type="text/css" href="resources/revolution/css/layers.css">
        <link rel="stylesheet" type="text/css" href="resources/revolution/css/navigation.css">
    </head>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap');
	
	body{
		font-family: 'Noto Sans KR', sans-serif;
	}
	</style>
    <body data-mobile-nav-style="classic">
        <!-- start header -->
        	<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
         
        <!-- start slider section -->
        <section class="py-0 position-relative">
            <div class="swiper-container slider-blog-banner black-move one-third-screen sm-h-450px" data-slider-options='{ "centeredSlides": true, "spaceBetween": 18, "loop": true, "pagination": { "el": ".swiper-pagination", "clickable": true }, "navigation": { "nextEl": ".swiper-button-next-nav", "prevEl": ".swiper-button-previous-nav" }, "autoplay": { "delay": "4500", "disableOnInteraction": false }, "keyboard": { "enabled": true, "onlyInViewport": true }, "breakpoints": { "991": { "slidesPerView": 2 }, "767": { "slidesPerView": 1 } }, "effect": "slide" }'>
                <div class="swiper-wrapper">
                    <!-- start slider item -->
                    <c:forEach var="item" items="${plist }" >
                    <div class="swiper-slide w-60 cover-background" style="background-image: url('${item.main_img}')">
                        <div class="swiper-bottom-content d-flex align-items-center position-relative align-items-lg-end h-100">
                            <div class="w-60 mx-auto text-center bg-white box-shadow-extra-large margin-6-half-rem-bottom padding-5-rem-all xl-padding-2-rem-lr lg-w-70 lg-padding-2-half-rem-lr sm-w-75 sm-padding-2-rem-lr md-no-margin-bottom">
                                <a href="${pageContext.request.contextPath}/productDetail?no=${item.no}" class="btn btn-fancy btn-small btn-gradient-tan-geraldine margin-30px-bottom">이달의 상품</a>
                                <h5><a href="${pageContext.request.contextPath}/productDetail?no=${item.no}" class="text-extra-dark-gray text-black-hover alt-font text-extra-dark-gray font-weight-500 letter-spacing-minus-1px margin-30px-bottom" style="font-family: 'Noto Sans KR', sans-serif;">${item.name}</a></h5>
                                <div class="alt-font text-medium text-uppercase"><a href=""${pageContext.request.contextPath}/productDetail?no=${item.no}" class="text-medium-gray text-medium-gray-hover d-block d-sm-inline-block">${item.description}</a></div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- end slider item -->
                </div>
                <!-- start slider pagination -->
                <div class="swiper-pagination swiper-light-pagination d-sm-none d-block"></div>
                <!-- end slider pagination -->
                <!-- start slider navigation buttons -->
                <div class="swiper-button-next-nav swiper-button-next rounded-circle slider-navigation-style-08 d-none d-sm-flex"><i class="feather icon-feather-arrow-right"></i></div>
                <div class="swiper-button-previous-nav swiper-button-prev rounded-circle slider-navigation-style-08 d-none d-sm-flex"><i class="feather icon-feather-arrow-left"></i></div>
                <!-- end slider navigation buttons -->
            </div>  
        </section>
        <!-- end slider section -->
         <!-- start section -->
        <section class="padding-8-half-rem-lr xl-padding-3-rem-lr md-no-padding-lr">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 text-center margin-5-half-rem-bottom md-margin-3-rem-bottom wow animate__fadeIn">
                        <span class="alt-font  text-dark-orange text-uppercase letter-spacing-1px d-block margin-5px-bottom " style="font-family: 'Noto Sans KR', sans-serif;">인기레시피</span>
                        <h5 class="alt-font  font-weight-400 text-extra-dark-gray mb-0 letter-spacing-minus-1px font-weight-500" style="font-family: 'Noto Sans KR', sans-serif;">HOT 레시피</h5>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 filter-content">
                        <ul class="product-listing shop-wrapper grid grid-loading grid-5col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large text-center">
                            <li class="grid-sizer"></li>
                            
                            <!-- start product item -->
                            <c:forEach var="item" items="${recipeDTO }" >
                            <li class="grid-item wow animate__fadeIn border-radius-6px" style="margin-top: -10px; margin-bottom:-10px;">
                                <div class="product-box margin-45px-bottom lg-margin-25px-bottom xs-no-margin-bottom">
                                    <div class="product-image  border-radius-5px">
                                        <a href="${pageContext.request.contextPath}/recipe/${item.no}">
                                            <img src="${item.thumbnail }" alt=""  style="width:300px; height:200px"   />
                                            <img class="hover-img" src="${item.step_img }" alt=""  style="width:300px; height:200px" />
                                        </a>
                                        <div class="product-hover-details">
                                            <a href="${pageContext.request.contextPath}/recipe/${item.no}" class="alt-font text-white text-small font-weight-500 text-uppercase"><i class="feather icon-feather-shopping-bag margin-10px-right"></i>레시피 살펴보기</a>
                                        </div>
                                        <div class="product-hover-right padding-20px-tb padding-15px-right w-65px">
                                            <a href="#" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="left" title="" data-original-title="찜하기"><i class="feather icon-feather-heart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-footer text-center padding-25px-top xs-padding-10px-top">
                                        <a href="${pageContext.request.contextPath}/recipe/${item.no}" class="text-extra-dark-gray text-black-hover font-weight-500 d-inline-block"><c:out value="${item.title}" /></a>
                                        <div class="product-price text-medium"><c:out value="${item.foodname}" /></div>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                            <!-- end product item -->
                        </ul>
                    </div>
                    <div class="col-12 text-center margin-3-rem-top wow animate__fadeIn" data-wow-delay="0.2s">
                        <a href="${pageContext.request.contextPath}/recipe/foodCategory/all" class="btn btn-medium btn-fancy btn-transparent-black">More recipe</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
           <!-- start section -->
        <section class="p-0">
            <div class="container-fluid">
                <div class="row row-cols-1 row-cols-lg-2">
                    <!-- start info banner item -->
                    <c:forEach var="item" items="${productDTO }" >
                    <div class="col bg-very-light-orange padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn" data-wow-delay="0.2s">
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-7 xs-margin-30px-bottom">
                                <a href="${app }/productDetail?no=${item.no}"><img src="${item.image_path }" alt=""></a>
                            </div>
                            <div class="col-12 col-sm-5 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left">
                                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span></span>
                                <h5 class="alt-font text-extra-dark-gray letter-spacing-minus-1px"> <span class="font-weight-600"><c:out value="${item.name }"></c:out></span></h5>
                                <a href="${app }/productDetail?no=${item.no}" class="btn btn-small btn-fancy btn-box-shadow btn-white margin-5px-top">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- end info banner item -->

                </div>
            </div>
        </section>
        <!-- end section -->
       
            <!-- start section -->
        <section class="">
            <div class="container ">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 text-center margin-5-half-rem-bottom md-margin-3-rem-bottom wow animate__fadeIn">
                        <span class="alt-font text-dark-orange text-uppercase letter-spacing-1px d-block margin-5px-bottom font-weight-400" style="font-family: 'Noto Sans KR', sans-serif; ">레시퍼</span>
                        <h5 class="alt-font  font-weight-400 text-extra-dark-gray mb-0 letter-spacing-minus-1px font-weight-500" style="font-family: 'Noto Sans KR', sans-serif;">인기 레시퍼</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 blog-content px-sm-0">
                        <ul class="blog-classic blog-wrapper grid grid-loading grid-4col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large">
                            <li class="grid-sizer"></li>
                            <!-- start blog item -->
                            <c:forEach var="item" items="${memberDTO }" >
                            <li class="grid-item wow animate__fadeIn">
                                <div class="blog-post">
                                    <div class="blog-post-image margin-40px-bottom md-margin-35px-bottom xs-margin-25px-bottom  border-radius-5px">
                                        <a href="${pageContext.request.contextPath}/myRecipe/${item.id}"><img src="${item.profile_img}" alt="resources/images/user.png" style="width:300px; height:300px"/></a>
                                    </div>
                                    <div style="text-align:center; margin-top:-20px">
                                    	<a href="${pageContext.request.contextPath}/myRecipe/${item.id}" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray text-dark-orange-hover d-block margin-20px-bottom xs-margin-10px-bottom"><c:out value="${item.nickname}" /></a>
                                    </div>
                                    <div class="post-details" style="text-align:center">
                                        <i class="feather icon-feather-monitor margin-5px-right text-large"></i> 조회수 <c:out value="${item.views }"></c:out>
                                        <i class="feather icon-feather-thumbs-up margin-5px-right margin-20px-left"> 좋아요 </i><c:out value="${item.likes }"></c:out>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                            <!-- end blog item   --> 
                            
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="padding-8-half-rem-lr xl-padding-3-rem-lr lg-no-padding-lr bg-very-light-orange">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 text-center margin-5-half-rem-bottom md-margin-3-rem-bottom wow animate__fadeIn">
                        <span class="alt-font text-dark-orange text-uppercase letter-spacing-1px d-block margin-5px-bottom font-weight-400" style="font-family: 'Noto Sans KR', sans-serif;">음식 카테고리</span>
                        <h5 class="alt-font font-weight-400 text-extra-dark-gray mb-0 letter-spacing-minus-1px font-weight-500" style="font-family: 'Noto Sans KR', sans-serif;">오늘은 이 음식 어때요?</h5>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-xl-3 row-cols-lg-2 justify-content-center margin-3-rem-tb md-no-margin-tb">
                    <!-- start category item -->
                    <c:set var="imgcnt" value="1" />
                    <c:forEach var="item" items="${categoryDTO }" >
                    <div class="col col-md-6 col-sm-10 shop-category-style-02">
                        <div class="shop-product align-items-center d-flex padding-30px-lr xs-no-padding-lr">
                            <div class="shop-product-image text-center d-flex justify-content-center align-items-center wow animate__zoomIn" data-wow-delay="0.7s">
                                <img src="resources/images/foodCategory/${imgcnt}.png" alt=""/>
                                <a href="${app }/recipe/foodCategory/${item.no}" class="d-inline-block line-height-65px rounded-circle bg-extra-dark-gray box-shadow-extra-large h-60px w-60px position-absolute product-view-link"><i class="feather icon-feather-arrow-right text-white icon-extra-small"></i></a>
                           		<c:set var="imgcnt" value="${imgcnt + 1}" />
                            </div>
                            <div class="shop-product-overlay position-relative wow animate__fadeIn" data-wow-delay="0.8s" style="width: 100%">
                           		<h6 class="alt-font text-extra-dark-gray mb-0 letter-spacing-minus-1px line-height-40px sm-line-height-30px font-weight-500" style="font-family: 'Noto Sans KR', sans-serif; margin-left:35px"><c:out value="${item.title }"></c:out></h6>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- end category item -->
                </div>
            </div>
        </section>
        <!-- end section -->
       
      
    
        <!-- start footer -->
        	<jsp:include page='/WEB-INF/views/layout/footer.jsp' />
        <!-- end footer -->
        <!-- start scroll to top -->
        <a class="scroll-top-arrow" href="javascript:void(0);"><i class="feather icon-feather-arrow-up"></i></a>
        <!-- end scroll to top -->
        <!-- javascript -->
        <script type="text/javascript" src="resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="resources/js/theme-vendors.min.js"></script>
        <script type="text/javascript" src="resources/js/main.js"></script>

        <!-- revolution js files -->
        <script type="text/javascript" src="resources/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/jquery.themepunch.revolution.min.js"></script>

        <!-- slider revolution 5.0 extensions (load extensions only on local file systems ! the following part can be removed on server for on demand loading) --> 
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="resources/revolution/js/extensions/revolution.extension.video.min.js"></script>

        <script type="text/javascript">
            var revapi263,
                    tpj;
            (function () {
                if (!/loaded|interactive|complete/.test(document.readyState))
                    document.addEventListener("DOMContentLoaded", onLoad);
                else
                    onLoad();
                function onLoad() {
                    if (tpj === undefined) {
                        tpj = jQuery;
                        if ("off" == "on")
                            tpj.noConflict();
                    }
                    if (tpj("#rev_slider_34_1").revolution == undefined) {
                        revslider_showDoubleJqueryError("#rev_slider_34_1");
                    } else {
                        var revOffset = tpj(window).width() <= 991 ? '73px' : '';
                        revapi263 = tpj("#rev_slider_34_1").show().revolution({
                            sliderType: "standard",
                            jsFileLocation: "resources/revolution/js/",
                            sliderLayout: "fullscreen",
                            dottedOverlay: "none",
                            delay: 9000,
                            navigation: {
                                keyboardNavigation: "on",
                                keyboard_direction: "horizontal",
                                mouseScrollNavigation: "off",
                                mouseScrollReverse: "default",
                                onHoverStop: "off",
                                touch: {
                                    touchenabled: "on",
                                    touchOnDesktop: "off",
                                    swipe_threshold: 75,
                                    swipe_min_touches: 1,
                                    swipe_direction: "horizontal",
                                    drag_block_vertical: false
                                },
                                bullets: {
                                    enable: true,
                                    hide_onmobile: false,
                                    style: "hermes",
                                    hide_onleave: false,
                                    direction: "horizontal",
                                    h_align: "center",
                                    v_align: "bottom",
                                    h_offset: 0,
                                    v_offset: 40,
                                    space: 12,
                                    tmp: ''
                                },
                                arrows: {

                                    enable: true,
                                    style: 'uranus',
                                    tmp: '',
                                    rtl: false,
                                    hide_onleave: false,
                                    hide_onmobile: true,
                                    hide_under: 767,
                                    hide_over: 9999,
                                    hide_delay: 200,
                                    hide_delay_mobile: 1200,
                                    left: {
                                        container: 'slider',
                                        h_align: 'left',
                                        v_align: 'center',
                                        h_offset: 64,
                                        v_offset: 0
                                    },
                                    right: {
                                        container: 'slider',
                                        h_align: 'right',
                                        v_align: 'center',
                                        h_offset: 64,
                                        v_offset: 0
                                    }

                                }
                            },
                            responsiveLevels: [1240, 1025, 778, 480],
                            visibilityLevels: [1240, 1024, 778, 480],
                            gridwidth: [1240, 1024, 778, 480],
                            gridheight: [868, 768, 960, 720],
                            lazyType: "none",
                            shadow: 0,
                            spinner: "spinner0",
                            stopLoop: "on",
                            stopAfterLoops: 0,
                            stopAtSlide: 1,
                            shuffle: "off",
                            autoHeight: "off",
                            fullScreenAutoWidth: "off",
                            fullScreenAlignForce: "off",
                            fullScreenOffsetContainer: "",
                            fullScreenOffset: revOffset,
                            disableProgressBar: "on",
                            hideThumbsOnMobile: "off",
                            hideSliderAtLimit: 0,
                            hideCaptionAtLimit: 0,
                            hideAllCaptionAtLilmit: 0,
                            debugMode: false,
                            fallbacks: {
                                simplifyAll: "off",
                                nextSlideOnWindowFocus: "off",
                                disableFocusListener: false,
                            }
                        });
                    }
                    ; /* END OF revapi call */
                }
                ; /* END OF ON LOAD FUNCTION */
            }());/* END OF WRAPPING FUNCTION */
        </script>
    </body>
</html>