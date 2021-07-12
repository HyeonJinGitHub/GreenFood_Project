<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <title>찍먹부먹–상품상세정보</title>
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
        <!-- start section -->
        <section class="big-section wow animate__fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-12 shopping-content d-flex flex-column flex-lg-row align-items-md-center">
                        <div class="w-60 md-w-100">
                            <div class="product-images-box lightbox-portfolio row">
                                <div class="col-12 col-lg-9 px-lg-0 order-lg-2 product-image md-margin-10px-bottom">
                                    <div class="swiper-container product-image-slider" data-slider-options='{ "spaceBetween": 10, "watchOverflow": true, "navigation": { "nextEl": ".slider-product-next", "prevEl": ".slider-product-prev" }, "thumbs": { "swiper": { "el": ".product-image-thumb", "slidesPerView": "auto", "spaceBetween": 15, "direction": "vertical", "navigation": { "nextEl": ".swiper-thumb-next", "prevEl": ".swiper-thumb-prev" } } } }' data-thumb-slider-md-direction="horizontal">
                                        <div class="swiper-wrapper">
                                        	<c:forEach var="image" items="${images}">
                                        	<!-- start slider item -->
                                        		<div class="swiper-slide">
                                                	<a class="gallery-link" href="${image }"><img class="w-100" src="${image}" alt=""></a>
                                            	</div>
                                            <!-- end slider item -->
                                       		</c:forEach>
                                        </div>
                                    </div>
                                    <div class="slider-product-next swiper-button-next text-extra-dark-gray"><i class="fa fa-chevron-right"></i></div>
                                    <div class="slider-product-prev swiper-button-prev text-extra-dark-gray"><i class="fa fa-chevron-left"></i></div>
                                </div>
                                <div class="col-12 col-lg-3 order-lg-1 single-product-thumb md-margin-50px-bottom sm-margin-40px-bottom">
                                    <div class="swiper-container product-image-thumb slider-vertical padding-15px-lr padding-45px-bottom md-no-padding left-0px">
                                        <div class="swiper-wrapper">
                                       		<c:forEach var="image" items="${images}">
                                       			<div class="swiper-slide"><img class="w-100" src="${image}" alt=""></div>
                                       		</c:forEach>
                                        </div>
                                    </div>
                                    <div class="swiper-thumb-next-prev text-center">
                                        <div class="swiper-button-prev swiper-thumb-prev"><i class="fa fa-chevron-up"></i></div>
                                        <div class="swiper-button-next swiper-thumb-next"><i class="fa fa-chevron-down"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="w-40 md-w-100 product-summary padding-7-rem-left lg-padding-5-rem-left md-no-padding-left">
                            <div class="breadcrumb text-small p-0">
                                <!-- start breadcrumb -->
                                <ul>
                                    <li><a href="${contextPath }/">Home</a></li>
                                    <li><a href="${contextPath }/product">Product</a></li>
                                    <li>${productDTO.name }</li>
                                </ul>
                                <!-- end breadcrumb -->
                            </div>
                            <div class="d-flex align-items-center margin-3-half-rem-tb md-margin-1-half-rem-tb">
                                <div class="flex-grow-1">
                                    <div class="text-extra-dark-gray font-weight-500 text-extra-large alt-font margin-5px-bottom">${productDTO.name}</div>
                                    <span class="product-price text-extra-medium"><del>￦${productDTO.price + 6000}</del> -> ￦${productDTO.price }</span>
                                </div>
                                <div class="text-right line-height-30px">
                                    <div><a href="#" class="letter-spacing-3px"><i class="fas fa-star text-very-small text-golden-yellow"></i><i class="fas fa-star text-very-small text-golden-yellow"></i><i class="fas fa-star text-very-small text-golden-yellow"></i><i class="fas fa-star text-very-small text-golden-yellow"></i><i class="fas fa-star text-very-small text-golden-yellow"></i></a></div>
                                    <span class="text-small"><span class="text-extra-dark-gray">SKU: </span>${productDTO.sku }</span>
                                </div>
                            </div>
                            <div class="last-paragraph-no-margin">
                                <p>${productDTO.description}</p>
                            </div>
                            <div class="margin-4-rem-top">
                                <div class="margin-4-rem-bottom">
                                    <label class="size-chart text-uppercase w-60px margin-10px-left">
                                        <a class="modal-popup alt-font text-extra-small text-decoration-line-bottom" href="#modal-popup">칼로리 정보</a>
                                    </label>
                                    <div id="modal-popup" class="white-popup-block mfp-hide w-55 mx-auto position-relative bg-white modal-popup-main padding-5-rem-all xl-w-70 md-w-80 md-padding-4-rem-all xs-w-95 xs-padding-3-rem-all">
                                        <div class="table-style-01">
                                            <table>
                                                <tbody>
                                                    <tr class="alt-font bg-extra-dark-gray font-weight-500 text-white">
                                                        <th>SIZE</th>
                                                        <th>S</th>
                                                        <th>M</th>
                                                        <th>L</th>
                                                        <th>XL</th>
                                                        <th>XXL</th>
                                                        <th>2XL</th>
                                                        <th>3XL</th>
                                                    </tr>
                                                    <tr>
                                                        <td>Collar</td>
                                                        <td>14</td>
                                                        <td>15</td>
                                                        <td>16</td>
                                                        <td>17</td>
                                                        <td>18</td>
                                                        <td>19</td>
                                                        <td>20</td>
                                                    </tr>
                                                    <tr class="bg-light-gray">
                                                        <td>Shoulder</td>
                                                        <td>16</td>
                                                        <td>17</td>
                                                        <td>18</td>
                                                        <td>19</td>
                                                        <td>20</td>
                                                        <td>21</td>
                                                        <td>22</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Chest, waist, hips</td>
                                                        <td>28-29</td>
                                                        <td>30-31</td>
                                                        <td>32-33</td>
                                                        <td>34-35</td>
                                                        <td>36-37</td>
                                                        <td>38-39</td>
                                                        <td>40-41</td>
                                                    </tr>
                                                    <tr class="bg-light-gray">
                                                        <td>Cuff</td>
                                                        <td>9</td>
                                                        <td>9.5</td>
                                                        <td>10</td>
                                                        <td>10.5</td>
                                                        <td>11</td>
                                                        <td>11.5</td>
                                                        <td>12</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Short-sleeve length</td>
                                                        <td>10</td>
                                                        <td>10.5</td>
                                                        <td>11</td>
                                                        <td>11.5</td>
                                                        <td>12</td>
                                                        <td>12.5</td>
                                                        <td>13</td>
                                                    </tr>
                                                    <tr class="bg-light-gray">
                                                        <td>Long-sleeve length</td>
                                                        <td>23</td>
                                                        <td>23.5</td>
                                                        <td>24</td>
                                                        <td>24.5</td>
                                                        <td>25</td>
                                                        <td>25.5</td>
                                                        <td>26</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Arm Hole</td>
                                                        <td>22</td>
                                                        <td>22.5</td>
                                                        <td>32</td>
                                                        <td>23.5</td>
                                                        <td>24</td>
                                                        <td>24.5</td>
                                                        <td>25</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="quantity margin-15px-right">
                                    <label class="screen-reader-text">Quantity</label>
                                    <input type="button" value="-" class="qty-minus qty-btn" data-quantity="minus" data-field="quantity">
                                    <input class="input-text qty-text" type="number" name="quantity" id="quantity" value="1">
                                    <input type="button" value="+" class="qty-plus qty-btn" data-quantity="plus" data-field="quantity">
                                </div>
                                <a href="#modal-popup2" onclick="addCart()" class="modal-popup btn btn-dark-gray btn-medium">Add to cart</a>
                                <div id="modal-popup2" class="white-popup-block mfp-hide w-15 mx-auto position-relative bg-white modal-popup-main padding-5-rem-all xl-w-70 md-w-80 md-padding-4-rem-all xs-w-95 xs-padding-3-rem-all">
                                        <label class="table-style-01">장바구니에 담겼습니다.</label>
                                        <form action="${contextPath}/shoppingcart">
                                        	<button type="submit" class="btn btn-medium btn-fancy btn-dark-gray">장바구니로 이동</button>
                                        </form>
                                    </div>
                                <div class="margin-25px-top">
                                    <a href="#" class="text-uppercase text-extra-small alt-font margin-20px-right font-weight-500 "><i class="feather icon-feather-heart align-middle margin-5px-right"></i>Add to wishlist</a>
                                    <a href="#" class="text-uppercase text-extra-small alt-font margin-20px-right font-weight-500 "><i class="feather icon-feather-shuffle align-middle margin-5px-right"></i>Add to compare</a>
                                </div>
                            </div>
                            <div class="d-flex alt-font margin-4-rem-top align-items-center">
                                <div class="flex-grow-1">
                                    <span class="text-uppercase text-extra-small font-weight-500 text-extra-dark-gray d-block">Tags: <a href="shop-wide.html" class="font-weight-400">${productDTO.category }</a></span>
                                </div>
                                <div class="text-right social-icon-style-02 w-50">
                                    <ul class="extra-small-icon">
                                        <li><a class="text-extra-dark-gray facebook" href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a class="text-extra-dark-gray twitter" href="http://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                        <li><a class="text-extra-dark-gray linkedin" href="http://www.linkedin.com" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                                        <li><a class="text-extra-dark-gray flickr" href="https://www.pinterest.com/" target="_blank"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="border-top border-width-1px border-color-medium-gray pt-0 wow animate__fadeIn">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 p-0 tab-style-07">
                        <ul class="nav nav-tabs justify-content-center text-center alt-font font-weight-500 text-uppercase margin-9-rem-bottom border-bottom border-color-medium-gray md-margin-50px-bottom sm-margin-35px-bottom">
                            <li class="nav-item"><a data-toggle="tab" href="#description" class="nav-link active">Description</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#additionalinformation">Additional information</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#reviews">Reviews (2)</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="tab-content">
                    <!-- start tab item -->
                    <div id="description" class="tab-pane fade in active show">
                        <div class="row align-items-center">
                            <div class="col-12 col-xl-5 col-lg-6 md-margin-50px-bottom">
                                <p>${productDTO.description }</p>
                                <ul class="list-style-03">
                                    <li>${productDTO.detail_description }</li>
                                </ul>
                            </div>
                            <div class="col-12 col-lg-6 offset-xl-1">
                                <img src="${images[0] }" alt="">
                            </div>
                        </div>
                    </div>
                    <!-- end tab item -->
                    <!-- start tab item -->
                    <div id="additionalinformation" class="tab-pane fade">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <table class="table-style-02">
                                    <tbody>
                                        <tr>
                                            <th class="text-extra-dark-gray font-weight-500">Color</th>
                                            <td>Black, Blue, Brown, Red, Silver</td>
                                        </tr>
                                        <tr class="bg-light-gray">
                                            <th class="text-extra-dark-gray font-weight-500">Size</th>
                                            <td>L, M, S, XL</td>
                                        </tr>
                                        <tr>
                                            <th class="text-extra-dark-gray font-weight-500">Style/Type</th>
                                            <td>Sports, Formal</td>
                                        </tr>
                                        <tr class="bg-light-gray">
                                            <th class="text-extra-dark-gray font-weight-500">Lining</th>
                                            <td>100% polyester taffeta with a DWR finish</td>
                                        </tr>
                                        <tr>
                                            <th class="text-extra-dark-gray font-weight-500">Material</th>
                                            <td>Lather, Cotton, Silk</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>                                
                        </div>
                    </div>
                    <!-- end tab item -->
                    <!-- start tab item -->
                    <div id="reviews" class="tab-pane fade">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-12 col-lg-10">
                                <ul class="blog-comment margin-5-half-rem-bottom">
                                    <li>
                                        <div class="d-block d-md-flex w-100 align-items-center align-items-md-start">
                                            <div class="w-75px sm-w-50px sm-margin-10px-bottom">
                                                <img src="https://placehold.it/125x125" class="rounded-circle w-95 sm-w-100" alt=""/>
                                            </div>
                                            <div class="w-100 padding-25px-left last-paragraph-no-margin sm-no-padding-left">
                                                <a href="#" class="text-extra-dark-gray text-fast-blue-hover alt-font font-weight-500 text-medium">글쓴이</a>
                                                <span class="text-orange text-extra-small float-right letter-spacing-2px"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                                                <div class="text-medium text-medium-gray margin-15px-bottom">17 July 2020, 6:05 PM</div>
                                                <p class="w-85">Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry's standard dummy text ever since the make a type specimen book.</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>                            
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-12 col-lg-10 margin-4-rem-bottom ">
                                <h6 class="alt-font text-extra-dark-gray font-weight-500 margin-5px-bottom">리뷰 작성하기</h6>
                                <div class="margin-5px-bottom">Your email address will not be published. Required fields are marked <span class="text-radical-red">*</span></div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-12 col-lg-10">
                                <form action="#" method="post">
                                    <div class="row align-items-center">
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <label class="margin-15px-bottom" for="basic-name">Your name <span class="text-radical-red">*</span></label>
                                            <input id="basic-name" class="medium-input border-radius-4px bg-white margin-30px-bottom" type="text" name="name" placeholder="Enter your name">
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <label class="margin-15px-bottom">Your email address <span class="text-radical-red">*</span></label>                                    
                                            <input class="medium-input border-radius-4px bg-white margin-30px-bottom" type="text" name="email" placeholder="Enter your email">
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12 margin-30px-bottom">
                                            <label class="margin-15px-bottom">Your rating <span class="text-radical-red">*</span></label>                                    
                                            <span class="text-orange text-extra-small d-block"><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i></span>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="margin-15px-bottom">Your comment</div>
                                            <textarea class="medium-textarea border-radius-4px bg-white h-120px margin-2-half-rem-bottom" rows="6" name="comment" placeholder="Enter your comment"></textarea>
                                        </div>
                                        <div class="col-12 sm-margin-20px-bottom">
                                            <input class="btn btn-medium btn-dark-gray mb-0 btn-round-edge-small" type="button" name="submit" value="Submit">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- end tab item -->
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="border-top border-width-1px border-color-medium-gray wow animate__fadeIn">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-5 col-md-6 text-center margin-4-rem-bottom sm-margin-2-rem-bottom">
                        <span class="alt-font font-weight-500 text-uppercase d-inline-block margin-5px-bottom">이런 상품은 어때요?</span>
                        <h5 class="alt-font font-weight-500 text-extra-dark-gray letter-spacing-minus-1px">비슷한 제품</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="product-listing shop-wrapper grid grid-loading grid-4col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large text-center">
                            <li class="grid-sizer"></li>
                            <!-- start shop item -->
                             <c:forEach var="item" items="${items}">
	                            <li class="grid-item">
	                                <div class="product-box">
	                                    <!-- start product image -->
	                                    <div class="product-image border-radius-6px">
	                                        <a href="${contextPath}/productDetail?no=${item.value[0]}}">
	                                            <img class="default-image" src="${item.value[7] }" alt=""/>
	                                            <img class="hover-image" src="${item.value[8] }" alt=""/>
	                                        </a>
	                                        <div class="product-overlay bg-gradient-extra-midium-gray-transparent"></div>
	                                        <div class="product-hover-bottom text-center padding-30px-tb">
	                                            <a href="#" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to cart"><i class="feather icon-feather-shopping-cart"></i></a>
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
        
        
        <script>
        	function addCart() {
        		var no = ${productDTO.no};
        		var name = '${productDTO.name}';
        		var price = ${productDTO.price};
        		var cnt = $("#quantity").val();
        		var image = '${images[0] }';
        		$.ajax({
    				async: false,
    				type: 'POST',
    				data: {"no": no,
    					"name": name,
    					"price": price,
    					"cnt": cnt,
    					"image": image
    					},
    				url : '/greenfood/addCart',
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
        	}
        </script>
    </body>
</html>