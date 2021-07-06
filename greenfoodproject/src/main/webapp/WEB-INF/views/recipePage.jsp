<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="images" value='/resources/images' />
<c:url var="css" value='/resources/css' />
<c:url var="email-templates" value='/resources/email-templates' />
<c:url var="js" value='/resources/js' />
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>recipe page</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="author" content="ThemeZaa">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <meta name="description" content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
        <!-- favicon icon -->
        <link rel="shortcut icon" href="${images}/favicon.png">
        <link rel="apple-touch-icon" href="${images}apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${images}/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="${images}/apple-touch-icon-114x114.png">
        <!-- style sheets and font icons  -->
        <link rel="stylesheet" type="text/css" href="${css }/font-icons.min.css">
        <link rel="stylesheet" type="text/css" href="${css }/theme-vendors.min.css">
        <link rel="stylesheet" type="text/css" href="${css }/style.css" />
        <link rel="stylesheet" type="text/css" href="${css }/responsive.css" />
    </head>
    <style>
    	#videoSection {
    		margin-top : 50px;
    	}
    </style>
    <body data-mobile-nav-style="classic">
         <!-- start header -->
        
        <!-- end header -->
        <!-- start page title -->
        <section id="thumbnail" class="cover-background" data-parallax-background-ratio="0.5" style="background: url('https://placehold.it/1920x900');">
            <div class="opacity-extra-medium-2 bg-extra-dark-gray"></div>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6 col-md-10 one-half-screen d-flex justify-content-end flex-column sm-h-400px">
                        <h2 class="alt-font text-white font-weight-500 margin-5-half-rem-bottom w-85 lg-w-100">콩국수 먹고싶다</h2>
                        <ul class=" list-unstyled">
                            <li class="d-block d-sm-inline-block margin-50px-right xs-margin-10px-bottom xs-no-margin-right">
                                <span class="text-white opacity-5 d-block">작성자</span>
                                <a href="blog-grid.html" class="text-white alt-font">name</a>
                            </li>
                            <li class="d-block d-sm-inline-block margin-50px-right xs-margin-10px-bottom xs-no-margin-right">
                                <span class="text-white opacity-5 d-block">조리시간</span>
                                <a href="blog-grid.html" class="text-white alt-font">time</a>
                            </li>
                            <li class="d-block d-sm-inline-block margin-50px-right xs-no-margin-right">
                                <span class="text-white opacity-5 d-block">칼로리</span>
                                <a href="blog-grid.html" class="text-white alt-font">1000kcal</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-12 col-lg-6 col-md-10 one-half-screen d-flex justify-content-end flex-column sm-h-400px">
                        <h6 class="alt-font text-white font-weight-500 margin-5-half-rem-bottom w-85 lg-w-100">재료정보</h6>
                        <ul class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray">
                            <li class="padding-15px-bottom border-bottom border-color-medium-gray"><i class="feather icon-feather-check text-large text-gradient-sky-blue-pink margin-10px-right"></i>Great environment</li>
                            <li class="padding-15px-tb border-bottom border-color-medium-gray"><i class="feather icon-feather-check text-large text-gradient-sky-blue-pink margin-10px-right"></i>Free breakfast</li>
                            <li class="padding-15px-tb border-bottom border-color-medium-gray"><i class="feather icon-feather-check text-large text-gradient-sky-blue-pink margin-10px-right"></i>Clean room everyday</li>
                            <li class="padding-15px-tb"><i class="feather icon-feather-check text-large text-gradient-sky-blue-pink margin-10px-right"></i>No booking fee</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- end page title -->
        <!-- start section -->
        <section class="pt-0" id="videoSection">
            <div class="container">
                <div class="row justify-content-center z-index-0 position-relative">
                    <div class="col-12 tilt-box wow animate__fadeIn" data-tilt-options='{ "maxTilt": 20, "perspective": 1000, "easing": "cubic-bezier(.03,.98,.52,.99)", "scale": 1, "speed": 500, "transition": true, "reset": true, "glare": false, "maxGlare": 1 }'>
                        <div class="cover-background one-third-screen d-flex justify-content-center flex-column no-padding-tb" style="background: url('https://placehold.it/1350x900');">
                            <div class="opacity-light bg-extra-dark-gray"></div>
                            <a href="https://www.youtube.com/watch?v=g0f_BRYJLJE" class="popup-youtube video-icon-box video-icon-large text-center">
                                <span>
                                    <span class="video-icon bg-white">
                                        <i class="icon-simple-line-control-play text-extra-dark-gray"></i>
                                        <span class="video-icon-sonar">
                                            <span class="video-icon-sonar-bfr bg-extra-dark-gray opacity-7"></span>
                                        </span>
                                    </span>
                                </span>
                            </a>
                        </div>        
                    </div>
                </div>  
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="pt-0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-left margin-seven-bottom">
                        <h6 class="alt-font text-extra-dark-gray font-weight-500">영양정보 (하루 1인 적정섭취량 기준)</h6>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-md-5 row-cols-sm-2 justify-content-center">
                    <!-- start pie charts item -->
                    <div class="col sm-margin-40px-bottom">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="75" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">칼로리</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col sm-margin-40px-bottom">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="80" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">탄수화물</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="85" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">단백질</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="85" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">지질</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="85" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">나트륨</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="pt-0">
            <div class="container">
                <div class="row row-cols-1 row-cols-md-5 row-cols-sm-2 justify-content-center">
                    <!-- start pie charts item -->
                    <div class="col sm-margin-40px-bottom">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="75" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">콜레스트롤</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col sm-margin-40px-bottom">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="80" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">식이섬유</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="85" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">칼슘</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="85" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">비타민C</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                    <!-- start pie charts item -->
                    <div class="col">
                        <div class="chart-percent">
                            <span class="pie-chart-style-01" data-line-width="6" data-percent="85" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
                            </span>
                        </div>
                        <div class="chart-text text-center">
                            <span class="d-inline-block w-1px h-40px bg-extra-dark-gray opacity-5 position-relative top-minus-20px"></span>
                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">당류</span>
                        </div>
                    </div>
                    <!-- end pie charts item -->
                </div>
            </div>
        </section>
        <!-- end section -->
         <!-- start section -->
        <section class="big-section cover-background" style="background: url('https://placehold.it/1920x855');">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-xl-4 col-lg-5 col-md-6 order-2 order-md-1 pr-lg-0">
                        <h5 class="alt-font text-extra-dark-gray text-uppercase">Welcome to litho <span class="font-weight-700">cafe & restaurant</span></h5>
                        <blockquote class="border-width-4px btn-gradient-sky-blue-pink text-extra-medium padding-25px-left pr-0 margin-40px-top xs-margin-30px-top margin-30px-bottom w-85 md-w-100">
                            One should not attend even the end of the world without a good breakfast
                        </blockquote>
                        <p class="w-90 md-w-100">Lorem ipsum is simply dummy text printing and typesetting industry. Lorem ipsum been industry standard dummy text ever since printer.</p>
                        <a href="#" class="btn btn-medium btn-fancy btn-round-edge-small btn-gradient-sky-blue-pink margin-10px-top">Explore more</a>
                    </div>
                    <div class="col-12 col-lg-7 offset-xl-1 col-md-6 order-1 order-md-2 md-margin-5-rem-bottom wow animate__fadeIn" data-wow-delay="0.4s">
                        <img src="https://placehold.it/690x600" alt="" />
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
      <!-- start section --> 
        <section class="pt-0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-left margin-seven-bottom">
                        <h6 class="alt-font text-extra-dark-gray font-weight-500">조리방법</h6>
                    </div>
                </div>
                    <div class="col-12 col-sm-9 col-md-12 col-xl-12 blog-content">
                        <div class="blog-list blog-side-image">
                            <!-- start blog item --> 
                            <div class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn">
                                <div class="d-flex flex-column flex-md-row align-items-center">
                                    <div class="blog-post-image sm-margin-25px-bottom">
                                        <a href="blog-post-layout-01.html" title=""><img src="https://placehold.it/1200x840" alt="" /></a>
                                    </div>
                                    <div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding">
                                        <a href="blog-masonry.html" class="alt-font text-small text-gradient-light-purple-light-red font-weight-500 text-uppercase d-inline-block margin-15px-bottom sm-margin-10px-bottom">18 March 2020</a>
                                        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-large text-extra-dark-gray d-block margin-20px-bottom sm-margin-10px-bottom">Recognizing the need the primary condition design</a>
                                        <p class="margin-seventeen-bottom sm-margin-25px-bottom">Lorem ipsum is simply dummy text of the printing and typesetting industry lorem ipsum has been dummy text...</p>
                                        <div class="alt-font text-extra-small text-uppercase d-flex align-items-center sm-margin-10px-bottom">
                                            <img class="avtar-image" src="https://placehold.it/149x149" alt="">
                                            <span>
                                                <span class="d-inline-block">By <a href="blog-masonry.html" class="text-extra-dark-gray">Joe sparano</a></span>
                                                <span class="separator bg-medium-gray"></span>
                                                <span class="d-inline-block">In <a href="blog-masonry.html" class="text-extra-dark-gray">Creative</a></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end blog item -->
                           <!-- start blog item --> 
                            <div class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn">
                                <div class="d-flex flex-column flex-md-row align-items-center">
                                    <div class="blog-post-image sm-margin-25px-bottom">
                                        <a href="blog-post-layout-01.html" title=""><img src="https://placehold.it/1200x840" alt="" /></a>
                                    </div>
                                    <div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding">
                                        <a href="blog-masonry.html" class="alt-font text-small text-gradient-light-purple-light-red font-weight-500 text-uppercase d-inline-block margin-15px-bottom sm-margin-10px-bottom">18 March 2020</a>
                                        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-large text-extra-dark-gray d-block margin-20px-bottom sm-margin-10px-bottom">Recognizing the need the primary condition design</a>
                                        <p class="margin-seventeen-bottom sm-margin-25px-bottom">Lorem ipsum is simply dummy text of the printing and typesetting industry lorem ipsum has been dummy text...</p>
                                        <div class="alt-font text-extra-small text-uppercase d-flex align-items-center sm-margin-10px-bottom">
                                            <img class="avtar-image" src="https://placehold.it/149x149" alt="">
                                            <span>
                                                <span class="d-inline-block">By <a href="blog-masonry.html" class="text-extra-dark-gray">Joe sparano</a></span>
                                                <span class="separator bg-medium-gray"></span>
                                                <span class="d-inline-block">In <a href="blog-masonry.html" class="text-extra-dark-gray">Creative</a></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end blog item -->
                            <!-- start blog item --> 
                            <div class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn">
                                <div class="d-flex flex-column flex-md-row align-items-center">
                                    <div class="blog-post-image sm-margin-25px-bottom">
                                        <a href="blog-post-layout-01.html" title=""><img src="https://placehold.it/1200x840" alt="" /></a>
                                    </div>
                                    <div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding">
                                        <a href="blog-masonry.html" class="alt-font text-small text-gradient-light-purple-light-red font-weight-500 text-uppercase d-inline-block margin-15px-bottom sm-margin-10px-bottom">18 March 2020</a>
                                        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-large text-extra-dark-gray d-block margin-20px-bottom sm-margin-10px-bottom">Recognizing the need the primary condition design</a>
                                        <p class="margin-seventeen-bottom sm-margin-25px-bottom">Lorem ipsum is simply dummy text of the printing and typesetting industry lorem ipsum has been dummy text...</p>
                                        <div class="alt-font text-extra-small text-uppercase d-flex align-items-center sm-margin-10px-bottom">
                                            <img class="avtar-image" src="https://placehold.it/149x149" alt="">
                                            <span>
                                                <span class="d-inline-block">By <a href="blog-masonry.html" class="text-extra-dark-gray">Joe sparano</a></span>
                                                <span class="separator bg-medium-gray"></span>
                                                <span class="d-inline-block">In <a href="blog-masonry.html" class="text-extra-dark-gray">Creative</a></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end blog item -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->  
        <!-- start section -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-10 d-flex flex-wrap align-items-center mx-auto margin-35px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
                        <div class="col-12 col-md-9 text-center text-md-left sm-margin-10px-bottom px-0">
                            <div class="tag-cloud">
                                <a href="blog-grid.html">Development</a>
                                <a href="blog-grid.html">Events</a>
                                <a href="blog-grid.html">Media</a>
                                <a href="blog-grid.html">Mountains</a>
                            </div>
                        </div>
                        <div class="col-12 col-md-3 text-center text-md-right px-0">
                            <a class="likes-count text-uppercase text-extra-dark-gray font-weight-500" href="#"><i class="far fa-heart"></i><span>05 Likes</span></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-10 mx-auto margin-60px-bottom md-margin-30px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
                        <div class="d-block d-md-flex w-100 box-shadow-small align-items-center border-radius-5px padding-4-rem-all">
                            <div class="w-130px text-center margin-60px-right sm-margin-auto-lr">
                                <img src="https://placehold.it/125x125" class="rounded-circle w-110px" alt=""/>
                                <a href="blog-grid.html" class="text-extra-dark-gray alt-font font-weight-500 margin-20px-top d-inline-block text-medium">Colene Landin</a>
                                <span class="text-medium d-block line-height-18px sm-margin-15px-bottom">Co-founder</span>
                            </div>
                            <div class="w-75 sm-w-100 last-paragraph-no-margin text-center text-md-left">
                                <p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                <a href="blog-grid.html" class="btn btn-link btn-large text-extra-dark-gray margin-20px-top">All author posts</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-10 text-center elements-social social-icon-style-09 mx-auto">
                        <ul class="medium-icon">
                            <li class="wow animate__fadeIn" data-wow-delay="0.2s"><a class="facebook" href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i><span></span></a></li>
                            <li class="wow animate__fadeIn" data-wow-delay="0.3s"><a class="twitter" href="http://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i><span></span></a></li>
                            <li class="wow animate__fadeIn" data-wow-delay="0.4s"><a class="instagram" href="http://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i><span></span></a></li>
                            <li class="wow animate__fadeIn" data-wow-delay="0.5s"><a class="linkedin" href="http://www.linkedin.com" target="_blank"><i class="fab fa-linkedin-in"></i><span></span></a></li>
                            <li class="wow animate__fadeIn" data-wow-delay="0.6s"><a class="behance" href="http://www.behance.com/" target="_blank"><i class="fab fa-behance"></i><span></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="bg-light-gray">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-5 col-md-6 text-center margin-5-rem-bottom wow animate__fadeIn" data-wow-delay="0.2s">
                        <span class="alt-font font-weight-500 text-uppercase d-inline-block">You may also like</span>
                        <h5 class="alt-font font-weight-500 text-extra-dark-gray letter-spacing-minus-1px">Related posts</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 blog-content">
                        <ul class="blog-clean blog-wrapper grid grid-loading grid-3col xl-grid-3col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large">
                            <li class="grid-sizer"></li>
                            <!-- start blog item -->
                            <li class="grid-item wow animate__fadeIn">
                                <div class="blog-post text-center border-radius-6px bg-white box-shadow box-shadow-large-hover">
                                    <div class="blog-post-image btn-gradient-sky-blue-pink">
                                        <a href="blog-post-layout-01.html"><img src="https://placehold.it/850x885" alt="">
                                            <div class="blog-rounded-icon bg-white border-color-white absolute-middle-center">
                                                <i class="feather icon-feather-arrow-right text-extra-dark-gray icon-extra-small"></i>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="post-details padding-30px-all xl-padding-25px-lr">
                                        <a href="blog-grid.html" class="post-author text-medium text-uppercase">23 February 2020</a>
                                        <a href="blog-post-layout-01.html" class="text-extra-dark-gray font-weight-500 alt-font d-block">Build perfect websites</a>
                                    </div>
                                </div>
                            </li>
                            <!-- end blog item -->
                            <!-- start blog item -->
                            <li class="grid-item wow animate__fadeIn" data-wow-delay="0.2s">
                                <div class="blog-post text-center border-radius-6px bg-white box-shadow box-shadow-large-hover">
                                    <div class="blog-post-image bg-gradient-fast-blue-purple">
                                        <a href="blog-post-layout-02.html"><img src="https://placehold.it/850x885" alt="">
                                            <div class="blog-rounded-icon bg-white border-color-white absolute-middle-center">
                                                <i class="feather icon-feather-arrow-right text-extra-dark-gray icon-extra-small"></i>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="post-details padding-30px-all xl-padding-25px-lr">
                                        <a href="blog-grid.html" class="post-author text-medium text-uppercase">18 February 2020</a>
                                        <a href="blog-post-layout-02.html" class="text-extra-dark-gray font-weight-500 alt-font d-block">Beautiful layouts design</a>
                                    </div>
                                </div>
                            </li>
                            <!-- end blog item -->
                            <!-- start blog item -->
                            <li class="grid-item wow animate__fadeIn" data-wow-delay="0.4s">
                                <div class="blog-post text-center border-radius-6px bg-white box-shadow box-shadow-large-hover">
                                    <div class="blog-post-image bg-gradient-fast-blue-purple">
                                        <a href="blog-post-layout-03.html"><img src="https://placehold.it/850x885" alt="">
                                            <div class="blog-rounded-icon bg-white border-color-white absolute-middle-center">
                                                <i class="feather icon-feather-arrow-right text-extra-dark-gray icon-extra-small"></i>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="post-details padding-30px-all xl-padding-25px-lr">
                                        <a href="blog-grid.html" class="post-author text-medium text-uppercase">23 January 2019</a>
                                        <a href="blog-post-layout-03.html" class="text-extra-dark-gray font-weight-500 alt-font d-block">Fashion is not something</a>
                                    </div>
                                </div>
                            </li>
                            <!-- end blog item -->
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center margin-5-rem-bottom wow animate__fadeIn">
                        <h6 class="alt-font text-extra-dark-gray font-weight-500">4 Comments</h6>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-9 mx-auto wow animate__fadeIn">
                        <ul class="blog-comment">
                            <li>
                                <div class="d-block d-md-flex w-100 align-items-center align-items-md-start ">
                                    <div class="w-75px sm-w-50px sm-margin-10px-bottom">
                                        <img src="https://placehold.it/125x125" class="rounded-circle w-95 sm-w-100" alt=""/>
                                    </div>
                                    <div class="w-100 padding-25px-left last-paragraph-no-margin sm-no-padding-left">
                                        <a href="#" class="text-extra-dark-gray text-fast-blue-hover alt-font font-weight-500 text-medium">Herman Miller</a>
                                        <a href="#comments" class="btn-reply text-medium-gray text-uppercase section-link">Reply</a>
                                        <div class="text-medium text-medium-gray margin-15px-bottom">17 July 2020, 6:05 PM</div>
                                        <p class="w-85">Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry's standard dummy text ever since the make a type specimen book.</p>
                                    </div>
                                </div>
                                <ul class="child-comment">
                                    <li>
                                        <div class="d-block d-md-flex w-100 align-items-center align-items-md-start ">
                                            <div class="w-75px sm-w-50px sm-margin-10px-bottom">
                                                <img src="https://placehold.it/125x125" class="rounded-circle w-95 sm-w-100" alt=""/>
                                            </div>
                                            <div class="w-100 padding-25px-left last-paragraph-no-margin sm-no-padding-left">
                                                <a href="#" class="text-extra-dark-gray text-fast-blue-hover alt-font font-weight-500 text-medium">Wilbur Haddock</a>
                                                <a href="#comments" class="btn-reply text-medium-gray text-uppercase section-link">Reply</a>
                                                <div class="text-medium text-medium-gray margin-15px-bottom">18 July 2020, 10:19 PM</div>
                                                <p class="w-85">Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry's standard dummy text ever since.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-block d-md-flex w-100 align-items-center align-items-md-start border-radius-5px padding-40px-all md-padding-30px-all sm-padding-20px-all bg-light-gray">
                                            <div class="w-75px sm-w-50px sm-margin-10px-bottom">
                                                <img src="https://placehold.it/125x125" class="rounded-circle w-95 sm-w-100" alt=""/>
                                            </div>
                                            <div class="w-100 padding-25px-left last-paragraph-no-margin sm-no-padding-left">
                                                <a href="#" class="text-extra-dark-gray text-fast-blue-hover alt-font font-weight-500 text-medium">Colene Landin</a>
                                                <a href="#comments" class="btn-reply text-medium-gray text-uppercase section-link">Reply</a>
                                                <div class="text-medium text-medium-gray margin-15px-bottom">18 July 2020, 12:39 PM</div>
                                                <p class="w-85">Lorem ipsum is simply dummy text of the printing and typesetting industry. Ipsum has been the industry's standard dummy text ever since.</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <div class="d-block d-md-flex w-100 align-items-center align-items-md-start ">
                                    <div class="w-75px sm-w-50px sm-margin-10px-bottom">
                                        <img src="https://placehold.it/125x125" class="rounded-circle w-95 sm-w-100" alt=""/>
                                    </div>
                                    <div class="w-100 padding-25px-left last-paragraph-no-margin sm-no-padding-left">
                                        <a href="#" class="text-extra-dark-gray text-fast-blue-hover alt-font font-weight-500 text-medium">Jennifer Freeman</a>
                                        <a href="#comments" class="btn-reply text-medium-gray text-uppercase section-link">Reply</a>
                                        <div class="text-medium text-medium-gray margin-15px-bottom">19 July 2020, 8:25 PM</div>
                                        <p class="w-85">Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry's standard dummy text ever since the make a type specimen book.</p>
                                    </div>
                                </div>
                            </li>
                        </ul> 
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section id="comments" class="pt-0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-9 margin-4-rem-bottom sm-margin-2-rem-bottom wow animate__fadeIn">
                        <h6 class="alt-font text-extra-dark-gray font-weight-500 margin-5px-bottom">Write a comments</h6>
                        <div class="margin-5px-bottom">Your email address will not be published. Required fields are marked <span class="text-radical-red">*</span></div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-9 wow animate__fadeIn">
                        <form action="#" method="post">
                            <div class="row align-items-center">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="margin-15px-bottom" for="basic-name">Your name <span class="text-radical-red">*</span></label>
                                    <input id="basic-name" class="medium-input border-radius-4px bg-white margin-30px-bottom required" type="text" name="name" placeholder="Enter your name">
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="margin-15px-bottom" for="basic-email">Your email address <span class="text-radical-red">*</span></label>                                    
                                    <input id="basic-email" class="medium-input border-radius-4px bg-white margin-30px-bottom required" type="email" name="email" placeholder="Enter your email">
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="margin-15px-bottom">Your comment</div>
                                    <textarea class="medium-textarea border-radius-4px bg-white h-120px margin-2-half-rem-bottom" rows="6" name="comment" placeholder="Enter your comment"></textarea>
                                </div>
                                <div class="col-12 sm-margin-20px-bottom">
                                    <input type="hidden" name="redirect" value="">
                                    <input class="btn btn-medium btn-dark-gray mb-0 btn-round-edge-small submit" type="submit" name="submit" value="Post Comment">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start footer -->
        <footer class="footer-dark bg-slate-blue">
            <div class="footer-top padding-five-tb lg-padding-eight-tb md-padding-50px-tb">
                <div class="container">
                    <div class="row">
                        <!-- start footer column -->
                        <div class="col-12 col-lg-3 col-sm-6 md-margin-40px-bottom xs-margin-25px-bottom">
                            <span class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Company</span>
                            <ul>
                                <li><a href="about-us.html">About company</a></li>
                                <li><a href="our-services.html">Company services</a></li>
                                <li><a href="our-team.html">Job opportunities</a></li>
                                <li><a href="contact-us-classic.html">Contact us</a></li>
                            </ul>
                        </div>
                        <!-- end footer column -->
                        <!-- start footer column -->
                        <div class="col-12 col-lg-3 col-sm-6 md-margin-40px-bottom xs-margin-25px-bottom">
                            <span class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Customer</span>
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
                            <span class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Get in touch</span>
                            <p class="w-85 margin-15px-bottom">27 Eden walk eden centre, Orchard view, Paris, France</p>
                            <div><i class="feather icon-feather-phone-call icon-very-small margin-10px-right text-white"></i>+1 234 567 8910</div>
                            <div><i class="feather icon-feather-mail icon-very-small margin-10px-right text-white"></i><a href="#">info@yourdomain.com</a></div>
                        </div>
                        <!-- end footer column -->
                        <!-- start footer column -->
                        <div class="col-12 col-lg-3 col-sm-6">
                            <span class="alt-font font-weight-500 d-block text-white margin-20px-bottom">Follow us on Instagram</span>
                            <div class="w-100 d-inline-block margin-10px-top">
                                <ul class="instafeed-grid instafeed-wrapper grid grid-3col xl-grid-3col lg-grid-3col md-grid-3col sm-grid-3col xs-grid-3col gutter-small" data-total="3">
                                    <li class="grid-item"><figure><a href="#" data-href="{{link}}" target="_blank"><img src="#" data-src="{{image}}" class="insta-image" alt="" /><span class="insta-counts"><i class="fab fa-instagram"></i>{{likes}}</span></a></figure></li>
                                </ul>
                                <a class="alt-font text-extra-small text-uppercase font-weight-500 margin-20px-top d-inline-block" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram icon-extra-small align-middle margin-10px-right text-gradient-light-purple-light-orange"></i><span class="d-inline-block align-middle">Follow instagram</span></a>
                            </div>
                        </div>
                        <!-- end footer column -->
                    </div>
                </div>
            </div>
            <div class="footer-bottom padding-40px-tb border-top border-color-white-transparent">
                <div class="container"> 
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3 text-center text-md-left sm-margin-20px-bottom">
                            <a href="index.html" class="footer-logo"><img src="${images}/logo-white.png" data-at2x="${images}/logo-white@2x.png" alt=""></a>
                        </div>
                        <div class="col-12 col-md-6 text-center last-paragraph-no-margin sm-margin-20px-bottom">
                            <p>&copy; 2021 Litho is Proudly Powered by <a href="https://www.themezaa.com/" target="_blank">ThemeZaa</a></p>
                        </div>
                        <div class="col-12 col-md-3 text-center text-md-right">
                            <div class="social-icon-style-12">
                                <ul class="extra-small-icon light">
                                    <li><a class="facebook" href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a class="dribbble" href="http://www.dribbble.com" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                                    <li><a class="twitter" href="http://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                    <li><a class="instagram" href="http://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
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