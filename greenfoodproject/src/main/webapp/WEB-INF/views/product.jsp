<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <title>찍먹부먹–전체상품</title>
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
    </head>
 <body data-mobile-nav-style="classic">
        <!-- start header -->
       		<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
        <!-- start page title -->
        <section class="half-section parallax" data-parallax-background-ratio="0.5" style="background-image:url('resources/images/portfolio-bg.jpg');">
            <div class="container">
                <div class="row align-items-stretch justify-content-center extra-small-screen">
                    <div class="col-12 page-title-extra-small text-center d-flex justify-content-center flex-column">
                     	<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>상품 목록</span>
	                	<h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px"><span class="font-weight-600">모든 음식</span>을 지금 맛보세요!</h2>
                    </div>
                </div>
            </div>
        </section>
        <!-- end page title -->
        <!-- start section -->
        <section class="pt-0 padding-five-lr xs-no-padding-lr">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 shopping-content">
                        <ul class="product-listing shop-wrapper grid grid-loading grid-5col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large text-center">
                            <li class="grid-sizer"></li>
                            <!-- start shop item -->
                            <c:forEach var="item" items="${items}">
	                            <li class="grid-item wow animate__fadeIn">
	                                <div class="product-box margin-45px-bottom lg-margin-25px-bottom xs-no-margin-bottom">
	                                    <!-- start product image -->
	                                    <div class="product-image border-radius-6px">
	                                        <a href="${contextPath}/productDetail?no=${item.value[0]}}">
	                                            <img class="default-image" src="${item.value[7]}" alt="" style="width:320px; height:280px"/>
	                                            <img class="hover-image" src="${item.value[8]}" alt="" style="width:320px; height:280px"/>
	                                        </a>
	                                        <div class="product-overlay bg-gradient-extra-midium-gray-transparent"></div>
	                                        <div class="product-hover-bottom text-center padding-30px-tb">
	                                            <a href="장바구니 넣기" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to cart"><i class="feather icon-feather-shopping-cart"></i></a>
	                                            <a href="#" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quick shop"><i class="feather icon-feather-zoom-in"></i></a>
	                                            <a href="#" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to wishlist"><i class="feather icon-feather-heart"></i></a>
	                                        </div>
	                                    </div>
	                                    <!-- end product image -->
	                                    <!-- start product footer -->
	                                    <div class="product-footer text-center padding-25px-top xs-padding-10px-top">
	                                        <a href="${contextPath}/productDetail?no=${item.value[0]}" class="text-extra-dark-gray font-weight-500 d-inline-block">${item.value[1] }</a>
	                                        <div class="product-price text-medium">￦ ${item.value[2] }</div>
	                                    </div>
	                                    <!-- end product footer -->
	                                </div>
	                            </li>
                            </c:forEach>
                            <!-- end shop item -->
                        </ul>
                    </div>
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
    </body>
</html>