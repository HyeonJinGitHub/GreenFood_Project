<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="app" value="${pageContext.request.contextPath}" />
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" sizes="" href="">
<meta charset="UTF-8">
</head>
<body>
        <!-- start header -->
        <header>
            <!-- start navigation -->
            <nav class="navbar top-space navbar-expand-lg navbar-boxed navbar-light bg-transparent header-light fixed-top header-reverse-scroll">
                <div class="container-fluid nav-header-container">
                    <div class="col-auto col-sm-6 col-lg-2 mr-auto pl-lg-0">
                        <a class="navbar-brand" href="index.html">
                            <img src="resources/images/logo-black.png" data-at2x="resources/images/logo-black@2x.png" alt="" class="default-logo">
                            <img src="resources/images/logo-neon-orange.png" data-at2x="resources/images/logo-neon-orange@2x.png" alt="" class="alt-logo">
                            <img src="resources/images/logo-neon-orange.png" data-at2x="resources/images/logo-neon-orange@2x.png" class="mobile-logo" alt="">
                        </a>
                    </div>
                    <div class="col-auto menu-order px-lg-0">
                        <button class="navbar-toggler float-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-label="Toggle navigation">
                            <span class="navbar-toggler-line"></span>
                            <span class="navbar-toggler-line"></span>
                            <span class="navbar-toggler-line"></span>
                            <span class="navbar-toggler-line"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                            <ul class="navbar-nav alt-font">
                               <li class="nav-item dropdown megamenu">
                                    <a href="#" class="nav-link">카테고리</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                    <div class="menu-back-div dropdown-menu megamenu-content" role="menu">
                                        <div class="d-lg-flex justify-content-center">
                                            <ul class="d-lg-inline-block">
                                                <li class="dropdown-header">레시피 카테고리</li>
                                                <li><a href="home-startup.html">상황에 맞는 요리</a></li>
                                                <li><a href="home-business.html">나라별요리</a></li>
                                                <li><a href="home-corporate.html">재료별 요리</a></li>
                                                <li><a href="home-corporate.html">조리별 요리</a></li>
                                            </ul>
                                            <ul class="d-lg-inline-block">
                                                <li class="dropdown-header">레시피</li>
                                                <li><a href="home-restaurant.html">나의 레시피 보기</a></li>
                                            </ul>
                                            <ul class="d-lg-inline-block">
                                                <li class="dropdown-header">상품 카테고리</li>
                                                <li><a href="home-design-agency.html">건강 반찬</a></li>
                                                <li><a href="home-web-agency.html">밥/국</a></li>
                                                <li><a href="home-web-agency.html">샐러드/샌드위치</a></li>
                                                <li><a href="home-web-agency.html">죽/스프</a></li>
                                                <li><a href="home-web-agency.html">키즈</a></li>
                                                <li><a href="home-web-agency.html">베이커리</a></li>
                                                <li><a href="home-web-agency.html">건강음료</a></li>
                                                <li><a href="home-web-agency.html">간편식/간식</a></li>
                                                <li><a href="home-web-agency.html">연화식</a></li>
                                                <li><a href="home-web-agency.html">비건/라이프</a></li>
                                            </ul>
                                            <ul class="d-lg-inline-block">
                                                <li class="dropdown-header">고객센터</li>
                                                <li><a href="home-furniture-shop.html">상담</a></li>
                                                <li><a href="home-fashion-shop.html">찾아오시는 길</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown simple-dropdown">
                                    <a href="#" class="nav-link">레시피 카테고리</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                </li>
                                <li class="nav-item dropdown simple-dropdown">
                                    <a href="recipePost" class="nav-link">레시피 등록</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                </li>
                                <li class="nav-item dropdown megamenu">
                                    <a href="javascript:void(0);" class="nav-link">상품 카테고리</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                </li>
                                <li class="nav-item dropdown simple-dropdown">
                                    <a href="#" class="nav-link">고객센터</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-auto text-right pr-0 font-size-0">
                        <div class="header-search-icon search-form-wrapper">
                            <a href="javascript:void(0)" class="search-form-icon header-search-form"><i class="feather icon-feather-search"></i></a>
                            <!-- start search input --> 
                            <div class="form-wrapper">
                                <button title="Close" type="button" class="search-close alt-font">×</button>
                                <form id="search-form" role="search" method="get" class="search-form text-left" action="${app}/searchresult">
                                    <div class="search-form-box">
                                        <span class="search-label alt-font text-small text-uppercase text-medium-gray">어떤 레시피가 궁금하신가요?</span>
                                        <input class="search-input alt-font" id="search-form-input5e219ef164995" placeholder="검색어를 입력해 주세요." name="keyword" value="" type="text" autocomplete="off">
                                        <input type ="hidden" name="pg">
                                        <button type="submit" class="search-button">
                                            <i class="feather icon-feather-search" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                    
                                </form>
                            </div>
                            <!-- end search input --> 
                        </div>
                        <div class="header-language dropdown d-lg-inline-block">
                            <a href="javascript:void(0);"><i class="feather icon-feather-globe"></i></a>
                            <ul class="dropdown-menu alt-font">
                             	<% if (id == null || id == "") { %>
                                	<li><a href="${app}/login" title="로그인"><span class="icon-country"><img src="resources/images/user.png" alt=""></span>로그인</a></li>
                                	<li><a href="${app}/register" title="회원가입"><span class="icon-country"><img src="resources/images/user.png" alt=""></span>회원가입</a></li>
                             	<% } else { %>
                             		<li><a href="${app}/myinfo" title="마이페이지"><span class="icon-country"><img src="resources/images/user.png" alt=""></span>마이페이지</a></li>
                               		<li><a href="${app}/logout" title="로그아웃"><span class="icon-country"><img src="resources/images/user.png" alt=""></span>로그아웃</a></li>
                               	<% } %>
                            </ul>
                        </div>
                        <div class="header-cart-icon dropdown">
                            <a href="javascript:void(0);"><i class="feather icon-feather-shopping-bag"></i><span class="cart-count alt-font bg-dark-orange text-white">2</span></a>
                            <ul class="dropdown-menu cart-item-list">
                                <li class="cart-item align-items-center">
                                    <a href="javascript:void(0);" class="alt-font close">×</a>
                                    <div class="product-image">
                                        <a href="single-product.html"><img src="resources/images/c.jpg"" class="cart-thumb" alt="" /></a>
                                    </div>
                                    <div class="product-detail alt-font">
                                        <a href="single-product.html">치킨 샐러드</a>
                                        <span class="item-ammount">10,000원</span> 
                                    </div>
                                </li>
                                <li class="cart-item align-items-center">
                                    <a href="javascript:void(0);" class="alt-font close">×</a>
                                    <div class="product-image">
                                        <a href="single-product.html"><img src="resources/images/c.jpg"" class="cart-thumb" alt="" /></a>
                                    </div>
                                    <div class="product-detail alt-font">
                                        <a href="single-product.html">치킨 샐러드</a>
                                        <span class="item-ammount">9,999원</span> 
                                    </div>
                                </li>
                                <li class="cart-item cart-total">
                                    <div class="alt-font margin-15px-bottom"><span class="w-50 d-inline-block text-medium text-uppercase">합계:</span><span class="w-50 d-inline-block text-right text-medium font-weight-500">19,999원</span></div>
                                    <a href="${app}/shoppingcart" class="btn btn-small btn-dark-gray">장바구니</a>
                                    <a href="checkout.html" class="btn btn-small btn-neon-orange">결제하기</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <!-- end header -->
</body>
</html>