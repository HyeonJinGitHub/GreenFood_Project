<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="images" value='/resources/images' />
<c:url var="css" value='/resources/css' />
<c:url var="email-templates" value='/resources/email-templates' />
<c:url var="js" value='/resources/js' />
<c:url var="revolution" value='/resources/revolution' />
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>관리자 페이지</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="author" content="ThemeZaa">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <meta name="description" content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
        <!-- favicon icon -->
        <link rel="shortcut icon" href="${images}/favicon.png">
        <link rel="apple-touch-icon" href="${images}/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${images}/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="${images}/apple-touch-icon-114x114.png">
        <!-- style sheets and font icons  -->
        <link rel="stylesheet" type="text/css" href="${css}/font-icons.min.css">
        <link rel="stylesheet" type="text/css" href="${css}/theme-vendors.min.css">
        <link rel="stylesheet" type="text/css" href="${css}/style.css" />
        <link rel="stylesheet" type="text/css" href="${css}/responsive.css" />
    </head>
    <body data-mobile-nav-style="classic">
       <!-- start header -->
        	<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
        <!-- start page title -->
        
        </section>
            <div class="col bg-light-gray padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn">
         <div class="row align-items-center">
             <div class="col-12 col-sm-12 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left  margin-100px-top">
                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>상품화에 적합한 레시피 추천!</span>
                <h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px"><span class="font-weight-600">관리자</span>페이지</h2>
             </div>
         </div>
    </div>
        <!-- end page title -->
       <!-- start section -->
        <section class="shopping-left-side-bar pt-0" style="margin-top:100px">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-9 col-md-8 shopping-content padding-55px-left md-padding-15px-left sm-margin-30px-bottom">
                        <ul class="product-listing shop-wrapper grid grid-loading grid-3col xl-grid-3col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-large text-center">
                            <!-- start shop item -->
                            <li class="grid-item wow animate__fadeIn">
                                <div class="product-box margin-25px-bottom xs-margin-15px-bottom">
                                    <!-- start product image -->
                                    <div class="product-image border-radius-6px">
                                        <a href="single-product.html">
                                            <img class="default-image" src="https://placehold.it/600x765" alt=""/>
                                            <img class="hover-image" src="https://placehold.it/600x765" alt=""/>
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
                                        <a href="single-product.html" class="text-extra-dark-gray font-weight-500 d-inline-block">Merlon Jeans</a>
                                        <div class="product-price text-medium">$470.00</div>
                                    </div>
                                    <!-- end product footer -->
                                </div>
                            </li>
                            <!-- end shop item -->
                           
                        </ul>
                    </div>
                    <!-- start sidebar -->
                    <aside class="col-12 col-lg-3 col-md-4 shopping-sidebar">
                        <div class="border-bottom border-color-medium-gray padding-3-rem-bottom margin-3-rem-bottom wow animate__fadeIn">
                            <span class="shop-title alt-font font-weight-500 text-extra-dark-gray d-block margin-20px-bottom">Filter by category</span>
                            <ul class="list-style-07 filter-category">
                                <li><a href="#"><span class="product-cb product-category-cb"></span>Casual shirts</a><span class="item-qty">25</span></li>
                                <li><a href="#"><span class="product-cb product-category-cb"></span>Leather bags</a><span class="item-qty">05</span></li>
                                <li><a href="#"><span class="product-cb product-category-cb"></span>Men's shorts</a><span class="item-qty">36</span></li>
                                <li><a href="#"><span class="product-cb product-category-cb"></span>Polo t-shirts</a><span class="item-qty">05</span></li>
                                <li><a href="#"><span class="product-cb product-category-cb"></span>Short skirts</a><span class="item-qty">09</span></li>
                                <li><a href="#"><span class="product-cb product-category-cb"></span>Winter jackets</a><span class="item-qty">12</span></li>
                            </ul>
                        </div>
                        <div class="border-bottom border-color-medium-gray padding-3-rem-bottom margin-3-rem-bottom wow animate__fadeIn">
                            <span class="shop-title alt-font font-weight-500 text-extra-dark-gray d-block margin-20px-bottom">Filter by color</span>
                            <ul class="list-style-07 filter-color">
                                <li><a href="#"><span class="product-cb paroduct-color-cb" style="background-color: #363636"></span>Carbon black</a><span class="item-qty">25</span></li>
                                <li><a href="#"><span class="product-cb paroduct-color-cb" style="background-color:#657fa8"></span>Prussian blue</a><span class="item-qty">03</span></li>
                                <li><a href="#"><span class="product-cb paroduct-color-cb" style="background-color:#936f5e"></span>Light brown</a><span class="item-qty">15</span></li>
                                <li><a href="#"><span class="product-cb paroduct-color-cb" style="background-color:#97a27f"></span>Parrot green</a><span class="item-qty">40</span></li>
                                <li><a href="#"><span class="product-cb paroduct-color-cb" style="background-color:#b95b5b"></span>Dark orange</a><span class="item-qty">29</span></li>
                                <li><a href="#"><span class="product-cb paroduct-color-cb" style="background-color:#b7b5b5"></span>Slate blue</a><span class="item-qty">35</span></li>
                            </ul>
                        </div>
                        <div class="border-bottom border-color-medium-gray padding-3-rem-bottom margin-3-rem-bottom wow animate__fadeIn">
                            <span class="shop-title alt-font font-weight-500 text-extra-dark-gray d-block margin-20px-bottom">Filter by price</span>
                            <span class="price-filter d-block margin-10px-top"></span>
                            <div class="price-filter-details">
                                <button type="submit" class="btn-filter btn">Filter</button>
                                <span class="price-filter-amount">
                                    <label class="mb-0" for="price-amount">Price:</label>
                                    <input type="text" class="price-amount mb-0" id="price-amount" readonly>
                                </span>
                            </div>
                        </div>
                        <div class="border-bottom border-color-medium-gray padding-3-rem-bottom margin-3-rem-bottom wow animate__fadeIn">
                            <span class="shop-title alt-font font-weight-500 text-extra-dark-gray d-block margin-20px-bottom">Filter by rating</span>
                            <ul class="list-style-07">
                                <li><a href="#" class="letter-spacing-2px"><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i></a><span class="item-qty">19</span></li>
                                <li><a href="#" class="letter-spacing-2px"><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="far fa-star icon-very-small text-golden-yellow"></i></a><span class="item-qty">08</span></li>
                                <li><a href="#" class="letter-spacing-2px"><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="fas fa-star icon-very-small text-golden-yellow"></i><i class="far fa-star icon-very-small text-golden-yellow"></i><i class="far fa-star icon-very-small text-golden-yellow"></i></a><span class="item-qty">06</span></li>
                            </ul>
                        </div>
                        <div class="wow animate__fadeIn">
                            <span class="shop-title alt-font font-weight-500 text-extra-dark-gray d-block margin-20px-bottom">Product tags</span>
                            <div class="tag-cloud d-inline-block margin-10px-top">
                                <a href="shop-wide.html">Coats</a>
                                <a href="shop-wide.html">Cotton</a>
                                <a href="shop-wide.html">Dresses</a>
                                <a href="shop-wide.html">Jackets</a>
                                <a href="shop-wide.html">Polyester</a>
                            </div>
                        </div>
                    </aside>
                    <!-- end sidebar -->
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start footer -->
         <!-- start footer -->
        <jsp:include page='/WEB-INF/views/layout/footer.jsp' />
        <!-- end footer -->
        <!-- end footer -->
        <!-- start scroll to top -->
        <a class="scroll-top-arrow" href="javascript:void(0);"><i class="feather icon-feather-arrow-up"></i></a>
        <!-- end scroll to top -->
        <!-- javascript -->
        <script type="text/javascript" src="${js}/jquery.min.js"></script>
        <script type="text/javascript" src="${js}/theme-vendors.min.js"></script>
        <script type="text/javascript" src="${js}/main.js"></script>
    </body>
</html>