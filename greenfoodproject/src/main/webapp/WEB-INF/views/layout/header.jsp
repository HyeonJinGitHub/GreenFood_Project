<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="app" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" sizes="" href="">
<meta charset="UTF-8">
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap');
body{
	font-family: 'Noto Sans KR', sans-serif
}
</style>
<body>
        <!-- start header -->
        <header>
            <!-- start navigation -->
            <nav class="navbar top-space navbar-expand-lg navbar-boxed navbar-light bg-transparent header-light fixed-top header-reverse-scroll">
                <div class="container-fluid nav-header-container">
                    <div class="col-auto col-sm-6 col-lg-2 mr-auto pl-lg-0">
                        <a class="navbar-brand" href="${app }/">
                            <img src="${app }/resources/images/vecipe.png" data-at2x="resources/images/vecipe.png" alt="" class="default-logo">
                            <img src="${app }/resources/images/vecipe.png" data-at2x="resources/images/vecipe.png" alt="" class="alt-logo">
                            <img src="${app }/resources/images/vecipe.png" data-at2x="resources/images/vecipe.png" class="mobile-logo" alt="">
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
                                    <a href="#" class="nav-link" style="pointer-events: none; font-size:17px; font-family: 'Noto Sans KR', sans-serif;"><i class="feather icon-feather-menu margin-10px-right text-salmon-rose"></i>
                                    ?????? ????????????</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                    <div class="menu-back-div dropdown-menu megamenu-content" role="menu">
                                        <div class="d-lg-flex justify-content-center">
                                            <ul class="d-lg-inline-block">
                                                <li class="dropdown-header" style="font-size:17px; font-family: 'Noto Sans KR', sans-serif;">????????? ????????????</li>
                                                <li class="font-weight-500" value="0"><a href="${app}/recipe/foodCategory/all">ALL</a></li>
                                                <li value="1"><a href="${app}/recipe/foodCategory/1">??????</a></li>
                                                <li value="2"><a href="${app}/recipe/foodCategory/2">??? ??? ?????????</a></li>
                                                <li value="3"><a href="${app}/recipe/foodCategory/3">??? ??? ?????????</a></li>
                                                <li value="4"><a href="${app}/recipe/foodCategory/4">??? ??? ??????</a></li>
                                                <li value="5"><a href="${app}/recipe/foodCategory/5">?????? ??? ?????????</a></li>
                                                <li value="6"><a href="${app}/recipe/foodCategory/6">??????</a></li>
                                                <li value="7"><a href="${app}/recipe/foodCategory/7">?????????</a></li>
                                                <li value="8"><a href="${app}/recipe/foodCategory/8">??? ??? ?????????</a></li>
                                                <li value="9"><a href="${app}/recipe/foodCategory/9">?????????</a></li>
                                                <li value="10"><a href="${app}/recipe/foodCategory/10">?????????</a></li>
                                                <li value="11"><a href="${app}/recipe/foodCategory/11">?????????</a></li>
                                                <li value="12"><a href="${app}/recipe/foodCategory/12">?????? ??? ?????????</a></li>
                                                <li value="13"><a href="${app}/recipe/foodCategory/13">?????? ??? ?????????</a></li>
                                                <li value="14"><a href="${app}/recipe/foodCategory/14">??? ??? ?????????</a></li>
                                            </ul>
                                            <ul class="d-lg-inline-block">
                                                <li class="dropdown-header"  style="font-size:17px; font-family: 'Noto Sans KR', sans-serif;">????????? ??????</li>
                                                <li><a href="${pageContext.request.contextPath}/product">?????? ?????? ??????</a></li>
                                       
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown simple-dropdown">
                                <% if(session.getAttribute("id") == null){ %>
                                    <a href="${pageContext.request.contextPath}/login" class="nav-link" style=" font-size:17px; font-family: 'Noto Sans KR', sans-serif;">????????? ??????</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                <% }else if(session.getAttribute("id") != null){ %>
                                	<a href="${pageContext.request.contextPath}/recipePost" class="nav-link" style=" font-size:17px; font-family: 'Noto Sans KR', sans-serif;">????????? ??????</a>
                                    <i class="fa fa-angle-down dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
                                <%} %>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-auto text-right pr-0 font-size-0 ">
                        <div class="header-search-icon search-form-wrapper margin-10px-right">
                            <a href="javascript:void(0)" class="search-form-icon header-search-form"><i class="feather icon-feather-search font-weight-600 "></i></a>
                            <!-- start search input --> 
                            <div class="form-wrapper">
                                <button title="Close" type="button" class="search-close alt-font">??</button>
                                <form id="search-form" role="search" method="get" class="search-form text-left" action="${app}/reciep">
                                  
                                    
                                    <div class="search-form-box">
                                      
                                        <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"  style="font-family: 'Noto Sans KR', sans-serif;"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>?????? ???????????? ???????????????????</span>
	                					<h5 class="alt-font text-extra-dark-gray letter-spacing-minus-1px" style="font-family: 'Noto Sans KR', sans-serif;">????????? <span class="font-weight-600">?????????</span>??? ??????????????????!</h5>
	                					<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="option">
										  <option selected value="title">????????? ??????</option>
										  <option value="hashtag">????????????</option>
										</select>
                                        <input class="search-input alt-font" id="search-form-input5e219ef164995" placeholder="???????????? ????????? ?????????." name="keyword" value="" type="text" autocomplete="on"  style="font-family: 'Noto Sans KR', sans-serif;">
                                        <button type="submit" class="search-button">
                                            <i class="feather icon-feather-search " aria-hidden="true" ></i>
                                        </button>
                                    </div>
                                    
                                </form>
                            </div>
                            <!-- end search input --> 
                        </div>
                        
                          <!-- search with ingredients button start-->
                        <div class="header-search-icon search-form-wrapper margin-10px-right">
                        	<div>
                         	   <a href="${app}/searchIngredient"><i class="fas fa-concierge-bell icon-medium-ksy align-middle text-fast-black-ksy  font-weight-600"></i></a>
                        	</div>
                        </div>
                        <!-- search with ingredients button ends-->                      
                        
                        
                        <div class="header-language dropdown d-lg-inline-block margin-10px-right">
                            <a href="javascript:void(0);"><i class="feather icon-feather-user  font-weight-600 "></i></a>
                            <ul class="dropdown-menu alt-font">
                            <% if(session.getAttribute("id") == null){ %>
                                <li><a href="${app}/login"  title="?????????"><span class="icon-country"></span>?????????</a></li>
                                <li><a href="${app}/register" title="????????????"><span class="icon-country"></span>????????????</a></li>
                            <% }else if(session.getAttribute("id").equals("admin")){%>
                            	<li><a href="${pageContext.request.contextPath}/adminPage" title="??????????????????"><span class="icon-country"></span>??????????????????</a></li>
                                <li><a href="${app}/logout"  title="????????????"><span class="icon-country"></span>????????????</a></li>
                            <%}else if(session.getAttribute("id") != null){ %>
                             	<li><a href="${app}/myRecipe" title="?????? ?????????"><span class="icon-country "></span>?????? ?????????</a></li>
                            	<li><a href="${app}/myinfo"  title="???????????????"><span class="icon-country"></span>???????????????</a></li>
                            	<li><a href="${app}/orderlist"  title="????????????"><span class="icon-country"></span>????????????</a></li>
                                <li><a href="${app}/logout"  title="????????????"><span class="icon-country"></span>????????????</a></li>
                            <%} %>
                            </ul>
                        </div>

                        <div class="header-cart-icon dropdown margin-10px-right">
                            <a href="javascript:void(0);"><i class="feather icon-feather-shopping-bag font-weight-600"></i></a>
                            <ul id="myul" class="dropdown-menu cart-item-list">
                                <li class="cart-item cart-total">
                                    <div class="alt-font margin-15px-bottom"><span class="w-50 d-inline-block text-medium text-uppercase">??????:</span><span class="w-50 d-inline-block text-right text-medium font-weight-500">0???</span></div>
                                    <% if(session.getAttribute("id") == null){ %>
                                    <a href="${app}/login"  class="btn btn-small btn-dark-gray">?????????</a>
                                    <%}else if(session.getAttribute("id") != null){ %>
                                    <a href="${app}/shoppingcart"  class="btn btn-small btn-dark-gray">????????????</a>
                                    <%} %>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <!-- end header -->
    <script>
		$(document).ready(function() {
			var id = '${id}';
			var new_page = '';
			var total = 0;
			if(id != null && id) {
				$.ajax({
					async: false,
					type: 'POST',
					url : '/greenfood/selectshoppingcart',
					success : function(data) {
						var new_data = JSON.parse(data);
						for(var i=0;i<new_data.length;i++) {
							total += parseInt(new_data[i].price);
							new_page += '<li class="cart-item align-items-center">'
								+ '<div class="product-image">'
								+ '<a href="${contextPath}/productDetail?no='+new_data[i].no+'"><img src="'+new_data[i].image+'" class="cart-thumb" alt="" /></a>'
								+ '</div>'
								+ '<div class="product-detail alt-font">'
								+ '<a href="${contextPath}/productDetail?no='+new_data[i].no+'">'+new_data[i].name+'</a>'
								+ '<span class="item-ammount">'+new_data[i].price.toLocaleString()+'???</span>'		
								+ '</div>'
								+ '</li>';
						}
						new_page += '<li class="cart-item cart-total">'
							+ '<div class="alt-font margin-15px-bottom"><span class="w-50 d-inline-block text-medium text-uppercase">??????:</span><span class="w-50 d-inline-block text-right text-medium font-weight-500">'+total.toLocaleString()+'???</span></div>'
							+ '<a href="${app}/shoppingcart"  class="btn btn-small btn-dark-gray">????????????</a>'
							+ '</li>';
						$("#myul").html(new_page);
					},
					error : function(error) {
						alert('error : ' + JSON.stringify(error));
					}
				});
			}
		});
	</script>
</body>
</html>