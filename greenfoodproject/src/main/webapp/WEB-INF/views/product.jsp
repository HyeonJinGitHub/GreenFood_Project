<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <div class="col-12 col-xl-6 col-lg-7 col-md-8 page-title-extra-small text-center d-flex justify-content-center flex-column">
                        <h1 class="alt-font text-gradient-sky-blue-pink margin-15px-bottom d-inline-block">상품 목록</h1>
                        <h2 class="text-extra-dark-gray alt-font font-weight-500 letter-spacing-minus-1px line-height-50 sm-line-height-45 xs-line-height-30 no-margin-bottom">모든 음식을 지금 맛보세요.</h2>
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
	                                            <img class="default-image" src="${item.value[7]}" alt=""/>
	                                            <img class="hover-image" src="${item.value[8]}" alt=""/>
	                                        </a>
	                                        <div class="product-overlay bg-gradient-extra-midium-gray-transparent"></div>
	                                        <div class="product-hover-bottom text-center padding-30px-tb">
	                                            <a href="#modal-popup2" id="${item.value[0]}" name="${item.value[7]}" class="modal-popup add_cart product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to cart"><i class="feather icon-feather-shopping-cart"></i></a>
                                                  	<div id="modal-popup2" class="white-popup-block mfp-hide w-15 mx-auto position-relative bg-white modal-popup-main padding-5-rem-all xl-w-20 md-w-20 md-padding-4-rem-all xs-w-25 xs-padding-3-rem-all">
                                        				<label class="table-style-01">장바구니에 담겼습니다.</label>
                                        				<form action="${contextPath}/shoppingcart">
                                        				<button type="submit" class="btn btn-medium btn-fancy btn-dark-gray">장바구니로 이동</button>
                                        				</form>
                                    				</div>
	                                            <a href="#" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quick shop"><i class="feather icon-feather-zoom-in"></i></a>
	                                            <a href="#" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to wishlist"><i class="feather icon-feather-heart"></i></a>
	                                        </div>
	                                    </div>
	                                    <!-- end product image -->
	                                    <!-- start product footer -->
	                                    <div class="product-footer text-center padding-25px-top xs-padding-10px-top">
	                                        <a href="${contextPath}/productDetail?no=${item.value[0]}" class="text-extra-dark-gray font-weight-500 d-inline-block">${item.value[1] }</a>
	                                        <div class="product-price text-medium">￦ <f:formatNumber value="${item.value[2] }" pattern="#,###,###"></f:formatNumber></div>
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
        
        <script>
        	$(document).ready(function() {
        		$(document).on('click', '.add_cart', function() {
        			var no = $(this).attr('id');
        			var image = $(this).attr('name');
        			$.ajax({
        				async: false,
	    				type: 'POST',
	    				data : {"no": no,
	    					"image": image},
	    				url : '/greenfood/productAddcart',
	    				success : function(data) {
	    					if(data == true) {
	    						
	    					} else {
	    						alert('장바구니 담기에 실패하였습니다.');
	    					}
	    				},
	    				error : function(error) {
	    					alert('error : ' + JSON.stringify(error));
	    				}
        			});
        		});
        	});
        </script>
    </body>
</html>