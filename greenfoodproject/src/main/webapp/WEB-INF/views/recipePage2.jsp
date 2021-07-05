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
        <title>Litho – The Multipurpose HTML5 Template</title>
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
        <!-- revolution slider -->
        <link rel="stylesheet" type="text/css" href="${revolution}/revolution-addons/typewriter/css/typewriter.css" />	
        <link rel="stylesheet" type="text/css" href="${revolution}/css/settings.css">
        <link rel="stylesheet" type="text/css" href="${revolution}/css/layers.css">
        <link rel="stylesheet" type="text/css" href="${revolution}/css/navigation.css">
    </head>
    <body data-mobile-nav-style="classic" style="overflow-x:hidden">
        <!-- start header -->
        
        <!-- end header -->
      
<%--          <!-- start hero section -->
        <section class="parallax p-0 one-fourth-screen lg-h-600px" data-parallax-background-ratio="0.5" style="background-image: url('${images}/img.jpg');">
            <div class="opacity-extra-medium-2 bg-dark-gray"></div>
            <div class="container-fluid position-relative h-100">
                                <div class="h-100 justify-content-center shadow box-shadow-large justify-content-md-start d-flex">
                                    <div style="border-style:solid; border-color:rgb(242,233,225)"class="shadow align-self-center  bg-white border-radius-6px w-30 lg-w-40 sm-w-70 xs-w-85 padding-7-rem-lr padding-5-half-rem-tb xl-padding-4-rem-lr lg-padding-2-half-rem-lr lg-padding-3-half-rem-tb xs-padding-3-half-rem-all margin-8-rem-left md-margin-6-rem-left sm-no-margin-left box-shadow-extra-large text-center text-sm-left">
                                        <a href="blog-masonry.html" class="alt-font font-weight-500 text-extra-dark-gray text-black-hover text-medium letter-spacing-2px text-uppercase d-inline-block position-relative z-index-1 margin-25px-bottom xs-margin-20px-bottom"><span class="position-absolute left-0px bottom-2px w-100 h-5px bg-light-peach d-block z-index-minus-1"></span>Winter fashion</a>
                                        <h4 class="alt-font font-weight-500 text-extra-dark-gray margin-35px-bottom letter-spacing-minus-2px"><a href="blog-post-layout-01.html" class="text-extra-dark-gray text-black-hover">Love can bring back the smile and fashion</a></h4>
                                        <a href="blog-post-layout-01.html" class="btn btn-medium btn-transparent-dark-gray btn-box-shadow-flat">continue reading</a>
                                    </div>
                                </div>
                            </div>
        </section>
        <!-- end hero section --> --%>
        <!-- start hero section -->
        <section class="p-0 parallax home-events-conference h-70" data-parallax-background-ratio="0.5" style="background-image:url('${images}/img.jpg');">
            <div class="opacity-extra-medium-2 bg-black h-70 "></div>
            <div class="container position-relative"  h-70>
                <div class="row justify-content-center">
                    <div class="col-12 col-xl-9 col-lg-10 col-md-11 d-flex flex-column justify-content-center margin-100px-top margin-100px-bottom text-center md-landscape-h-400px xs-padding-15px-lr">
                        <div class="bg-transparent-white-2 border-radius-6px sm-padding-2-rem-lr">
                            <p class="alt-font font-weight-500 text-uppercase letter-spacing-3px text-neon-orange margin-40px-bottom sm-w-100 sm-margin-25px-bottom">어떤 건강레시피를 보러오셨나요?</p>
                            <h1 class="alt-font font-weight-600 letter-spacing-minus-3px text-white margin-3-half-rem-bottom sm-margin-20px-bottom xs-letter-spacing-minus-1-half">맛있는 콩국수 만드는 법</h1>
                            <div class="d-flex flex-column flex-sm-row justify-content-center border-tb border-color-white-transparent text-center padding-15px-tb margin-4-rem-bottom margin-30px-top">
                                <div class="margin-25px-right xs-no-margin-right sm-margin-15px-right text-large">
                                    <i class="feather icon-feather-thumbs-up text-white margin-10px-right"></i>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block">좋아요</span>
                                </div>
                                <div class="margin-25px-right xs-no-margin-right sm-margin-15px-right text-large">
                                    <i class="feather icon-feather-thumbs-down text-white margin-10px-right text-large"></i>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block">싫어요</span>
                                </div>
                                <div class="margin-25px-right xs-no-margin-right sm-margin-15px-right text-large">
                                    <i class="feather icon-feather-user text-white margin-10px-right text-large"></i>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block">작성자</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end hero section -->
        <!-- start section -->
        <section class="big-section bg-very-light-desert-storm overlap-height overflow-visible md-no-overlap-section">
            <div class="container">
                <div class="overlap-section">
                    <div class="box-shadow-large bg-white border-radius-6px padding-3-rem-tb padding-4-rem-lr lg-padding-3-rem-lr sm-padding-1-rem-lr">
                        <div class="row d-flex align-items-center justify-content-center">
                            <div class="col-12 col-lg-auto text-center text-lg-left md-margin-10px-bottom wow animate__fadeIn">
                                <span class="alt-font text-extra-large font-weight-600 text-gradient-tan-geraldine text-uppercase">건강식 레시피</span>
                            </div>
                            <div class="col-12 col-lg-auto text-center text-lg-right padding-20px-lr lg-padding-10px-lr md-padding-15px-lr md-margin-20px-bottom wow animate__fadeIn">
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom">
                                    <span class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">기본설명</span> 
                                </div>
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom">
                                    <span class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">영양성분</span> 
                                </div>
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom">
                                    <span class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">조리방법</span>
                                </div>
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle lg-padding-15px-lr">
                                    <span class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">댓글</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center justify-content-center" style="margin-top:50px">
                    <div class="col-12 col-lg-5 md-margin-5-rem-bottom xs-margin-5-rem-top wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom">기본설명</span>
                        <h5 class="alt-font font-weight-600 text-dark-purple line-height-46px margin-4-rem-bottom w-85 letter-spacing-minus-1px lg-w-100 md-margin-10px-bottom xs-line-height-30px">콩국수</h5>
                        <div class="panel-group accordion-event accordion-style-02 w-85 lg-w-100" id="accordion1" data-active-icon="icon-feather-minus" data-inactive-icon="icon-feather-plus">
                            <!-- start accordion item -->
                            <div class="panel bg-transparent">
                                <div class="panel-heading active-accordion border-color-black-transparent">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne">
                                        <div class="panel-title">
                                            <span class="alt-font text-dark-purple d-inline-block font-weight-500">한줄설명</span>
                                            <i class="text-dark-purple feather icon-feather-minus"></i>
                                        </div>
                                    </a>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse show text-center" data-parent="#accordion1">
                                    <div class="panel-body">시원한 여름을 나는데에는 콩국수만한 것이 없죠!</div>
                                </div>
                            </div>
                            <!-- end accordion item -->
                            <!-- start accordion item -->
                            <div class="panel bg-transparent">
                                <div class="panel-heading border-color-black-transparent">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo">
                                        <div class="panel-title">
                                            <span class="alt-font text-dark-purple d-inline-block font-weight-500">조리량</span>
                                            <i class="indicator text-dark-purple feather icon-feather-plus"></i>
                                        </div>
                                    </a>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse text-center" data-parent="#accordion1">
                                    <div class="panel-body">2인분 (1400Kcal)</div>
                                </div>
                            </div>
                            <!-- end accordion item -->
                            <!-- start accordion item -->
                            <div class="panel bg-transparent">
                                <div class="panel-heading border-color-black-transparent">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour">
                                        <div class="panel-title">
                                            <span class="alt-font text-dark-purple d-inline-block font-weight-500">조리시간</span>
                                            <i class="indicator text-dark-purple feather icon-feather-plus"></i>
                                        </div>
                                    </a>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse text-center" data-parent="#accordion1">
                                    <div class="panel-body">20분</div>
                                </div>
                            </div>
                            <!-- end accordion item -->
                            <!-- start accordion item -->
                            <div class="panel bg-transparent">
                                <div class="panel-heading border-color-black-transparent">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree">
                                        <div class="panel-title">
                                            <span class="alt-font text-dark-purple d-inline-block font-weight-500">재료소개</span>
                                            <i class="indicator text-dark-purple feather icon-feather-plus"></i>
                                        </div>
                                    </a>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" data-parent="#accordion1">
                                    <div class="panel-body">
                                    	<ul class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray">
				                            <li class="padding-15px-bottom border-bottom border-color-medium-gray"><i class="feather icon-feather-check text-large text-salmon-rose margin-10px-right"></i>Great environment</li>
				                            <li class="padding-15px-tb border-bottom border-color-medium-gray"><i class="feather icon-feather-check text-large text-salmon-rose margin-10px-right"></i>Free breakfast</li>
				                            <li class="padding-15px-tb border-bottom border-color-medium-gray"><i class="feather icon-feather-check text-large text-salmon-rose margin-10px-right"></i>Clean room everyday</li>
				                            <li class="padding-15px-tb"><i class="feather icon-feather-check text-large text-salmon-rose margin-10px-right"></i>No booking fee</li>
				                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end accordion item -->
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 offset-lg-1 home-yoga-meditation wow animate__fadeIn" data-wow-delay="0.4s">
                        <div class="outside-box-right position-relative">
                            <img src="${images}/img.jpg" class="overflow-hidden border-radius-4px" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        
          <!-- start section -->
        <section id="classes" class="overlap-height" style="margin-top:-50px; margin-bottom:-20px">
            <div class="container">
                <div class="row margin-6-rem-bottom md-margin-5-rem-bottom ">
                    <div class="col-12 col-lg-6 text-center text-lg-left wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom">영양성분</span>
                        <h5 class="alt-font font-weight-600 text-dark-purple line-height-46px letter-spacing-minus-1px m-lg-0 d-inline-block md-line-height-36px md-w-60 xs-w-100">영양성분을 알아볼까요?</h5>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-lg-4 row-cols-sm-2 justify-content-center">
                   <div class="col-lg-12">
                   		<section class="pt-0">
				            <div class="container">
				                <div class="row row-cols-1 row-cols-md-5 row-cols-sm-2 justify-content-center">
				                    <!-- start pie charts item -->
				                    <div class="col sm-margin-40px-bottom">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="75" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">칼로리</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col sm-margin-40px-bottom">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="80" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom" style="font-size:16px">탄수화물</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="85" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom" style="font-size:16px">단백질</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="85" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom" style="font-size:16px">지질</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="85" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom" style="font-size:16px">나트륨</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                     <!-- start pie charts item -->
				                    <div class="col sm-margin-40px-bottom">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="75" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-20px-bottom" style="font-size:16px">칼로리</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col sm-margin-40px-bottom">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="80" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-20px-bottom" style="font-size:16px">탄수화물</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="85" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-20px-bottom" style="font-size:16px">단백질</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="85" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-20px-bottom" style="font-size:16px">지질</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                    <!-- start pie charts item -->
				                    <div class="col">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" data-line-width="12" data-percent="85" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">
				                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
				                            </span>
				                        </div>
				                        <div class="chart-text text-center">
				                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-20px-bottom" style="font-size:16px">나트륨</span>
				                        </div>
				                    </div>
				                    <!-- end pie charts item -->
				                </div>
				            </div>
				        </section>
                   </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="pt-lg-0 bg-very-light-desert-storm  overflow-visible wow animate__fadeIn">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center overlap-section">
                        <div class="overlap-section-inner">
                            <h3 class="alt-font text-salmon-rose title-extra-large letter-spacing-minus-3px font-weight-700 mb-0">Healthy Food</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <section class="pt-0 bg-very-light-desert-storm ">
            <div class="container">
                <div class="row justify-content-center text-center">
                    <div class="col-12 text-center">
                    	<iframe width="1000" height="500" src="https://youtu.be/fk0-PSrOMo4" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="row margin-6-rem-bottom md-margin-5-rem-bottom margin-100px-top">
                    <div class="col-12 col-lg-6 text-center text-lg-left wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom">조리방법</span>
                        <h5 class="alt-font font-weight-600 text-dark-purple line-height-46px letter-spacing-minus-1px m-lg-0 d-inline-block md-line-height-36px md-w-60 xs-w-100">건강식 만드는 방법!</h5>
                    </div>
                </div>
                <div class="row justify-content-center text-center">
                	<div class="col-12 text-center">
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
        
        
        <!-- start section -->
        <section class="big-section bg-very-light-desert-storm overlap-height" style="margin-top:-120px;">
            <div class="container">
                <div class="row margin-6-rem-bottom md-margin-5-rem-bottom ">
                    <div class="col-12 col-lg-6 text-center text-lg-left wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom">관련글</span>
                        <h5 class="alt-font font-weight-600 text-dark-purple line-height-46px letter-spacing-minus-1px m-lg-0 d-inline-block md-line-height-36px md-w-60 xs-w-100">이런 건강식은 어때요?</h5>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="pt-lg-0 pb-0 overflow-visible margin-100px-bottom">
            <div class="container">
                <div class="row row-cols-1 row-cols-lg-3 row-cols-md-2 justify-content-center overlap-section">
                    <!-- start rotate box item -->
                    <div class="col col-sm-8 md-margin-30px-bottom xs-margin-15px-bottom wow animate__flipInY" data-wow-delay="0.2s">
                        <div class="rm-rotate-box text-center">
                            <div class="flipper to-left">
                                <div class="thumb-wrap">
                                    <div class="front border-radius-4px overflow-hidden" style="background-image:url('https://placehold.it/720x828')">
                                        <div class="opacity-extra-medium-2 bg-transparent-gradiant-white-black"></div>
                                        <div class="content-wrap padding-15px-lr">
                                            <span class="text-white text-large letter-spacing-1px margin-5px-bottom text-uppercase alt-font d-inline-block font-weight-500">Meditation</span>
                                            <span class="text-white opacity-6 text-medium text-uppercase letter-spacing-1-half alt-font d-block">Feeling good</span>                                          
                                        </div>
                                    </div>
                                    <div class="back border-radius-4px overflow-hidden">
                                        <div class="overlay-bg bg-gradient-tan-geraldine"></div>
                                        <div class="content-wrap padding-60px-all lg-padding-30px-lr md-padding-40px-lr xs-padding-30px-all">
                                            <i class="line-icon-Flick icon-large text-white margin-35px-bottom xs-margin-25px-bottom"></i>
                                            <span class="text-white text-extra-medium letter-spacing-1px font-weight-500 text-uppercase alt-font d-block margin-10px-bottom">Meditation</span>
                                            <p class="text-white opacity-7">Lorem ipsum dolor sit amet consectetur do eiusmod tempor incididunt labore ut enim</p>
                                            <a href="#" class="btn btn-link thin btn-extra-large text-extra-dark-gray">Discover possible</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end rotate box item -->
                    <!-- start rotate box item -->
                    <div class="col col-sm-8 md-margin-30px-bottom xs-margin-15px-bottom wow animate__flipInY" data-wow-delay="0.4s">
                        <div class="rm-rotate-box text-center">
                            <div class="flipper to-left">
                                <div class="thumb-wrap">
                                    <div class="front border-radius-4px overflow-hidden" style="background-image:url('https://placehold.it/720x828')">
                                        <div class="opacity-extra-medium-2 bg-transparent-gradiant-white-black"></div>
                                        <div class="content-wrap padding-15px-lr">
                                            <span class="text-white text-large letter-spacing-1px margin-5px-bottom text-uppercase alt-font d-inline-block font-weight-500">Sound therapy</span>
                                            <span class="text-white opacity-6 text-medium text-uppercase letter-spacing-1-half alt-font d-block">Present moment</span>
                                        </div>
                                    </div>
                                    <div class="back border-radius-4px overflow-hidden">
                                        <div class="overlay-bg bg-gradient-tan-geraldine"></div>
                                        <div class="content-wrap padding-60px-all lg-padding-30px-lr md-padding-40px-lr xs-padding-30px-all">
                                            <i class="line-icon-Bell-2 icon-large text-white margin-35px-bottom xs-margin-25px-bottom"></i>
                                            <span class="text-white text-extra-medium letter-spacing-1px font-weight-500 text-uppercase alt-font d-block margin-10px-bottom">Sound therapy</span>
                                            <p class="text-white opacity-7">Lorem ipsum dolor sit amet consectetur do eiusmod tempor incididunt labore ut enim</p>
                                            <a href="#" class="btn btn-link thin btn-extra-large text-extra-dark-gray">Discover possible</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end rotate box item -->
                    <!-- start rotate box item -->
                    <div class="col col-sm-8 wow animate__flipInY" data-wow-delay="0.6s">
                        <div class="rm-rotate-box text-center">
                            <div class="flipper to-left">
                                <div class="thumb-wrap">
                                    <div class="front border-radius-4px overflow-hidden" style="background-image:url('https://placehold.it/720x828')">
                                        <div class="opacity-extra-medium-2 bg-transparent-gradiant-white-black"></div>
                                        <div class="content-wrap padding-15px-lr">
                                            <span class="text-white text-large letter-spacing-1px margin-5px-bottom text-uppercase alt-font d-inline-block font-weight-500">Mindfullness</span>
                                            <span class="text-white opacity-6 text-medium text-uppercase letter-spacing-1-half alt-font d-block">Relaxing mind</span>
                                        </div>
                                    </div>
                                    <div class="back border-radius-4px overflow-hidden">
                                        <div class="overlay-bg bg-gradient-tan-geraldine"></div>
                                        <div class="content-wrap padding-60px-all lg-padding-30px-lr md-padding-40px-lr xs-padding-30px-all">
                                            <i class="line-icon-Sun icon-large text-white margin-35px-bottom xs-margin-25px-bottom"></i>
                                            <span class="text-white text-extra-medium letter-spacing-1px font-weight-500 text-uppercase alt-font d-block margin-10px-bottom">Mindfullness</span>
                                            <p class="text-white opacity-7">Lorem ipsum dolor sit amet consectetur do eiusmod tempor incididunt labore ut enim</p>
                                            <a href="#" class="btn btn-link thin btn-extra-large text-extra-dark-gray">Discover possible</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end rotate box item -->
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12 mx-auto wow animate__fadeIn">
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
                <div class="row">
                    <div class="col-12 col-lg-6 text-center text-lg-left wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom">댓글</span>
                        <h5 class="alt-font font-weight-600 text-dark-purple line-height-46px letter-spacing-minus-1px m-lg-0 d-inline-block md-line-height-36px md-w-60 xs-w-100">여러분의 의견을 남겨주세요!</h5>
                    </div>
                </div>
                <div class="row justify-content-center" style="margin-top:20px">
                    <div class="col-12 wow animate__fadeIn">
                        <form action="#" method="post">
                            <div class="row align-items-center">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <textarea class="medium-textarea border-radius-4px bg-white h-120px margin-2-half-rem-bottom" rows="6" name="comment" placeholder="Enter your comment"></textarea>
                                </div>
                                <div class="col-12 sm-margin-20px-bottom text-right">
                                    <input type="hidden" name="redirect" value="">
                                    <input class="btn btn-medium btn-dark-gray mb-0 btn-round-edge-small submit" type="submit" name="submit" value="댓글 작성">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start footer -->
        
        <!-- end footer -->
        <!-- start scroll to top -->
        <a class="scroll-top-arrow" href="javascript:void(0);"><i class="feather icon-feather-arrow-up"></i></a>
        <!-- end scroll to top -->
        <!-- javascript -->
        <script type="text/javascript" src="${js}/jquery.min.js"></script>
        <script type="text/javascript" src="${js}/theme-vendors.min.js"></script>
        <script type="text/javascript" src="${js}/main.js"></script>

        <!-- revolution js files -->
        <script type="text/javascript" src="${revolution}/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="${revolution}/js/jquery.themepunch.revolution.min.js"></script>

        <!-- typewriter and coming soon add on -->
        <script type="text/javascript" src="${revolution}/revolution-addons/typewriter/js/revolution.addon.typewriter.min.js"></script>

        <!-- slider revolution 5.0 extensions (load extensions only on local file systems ! the following part can be removed on server for on demand loading) --> 
        <!-- <script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script> -->
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
                    if (tpj("#rev_slider_26_1").revolution == undefined) {
                        revslider_showDoubleJqueryError("#rev_slider_26_1");
                    } else {
                        revapi263 = tpj("#rev_slider_26_1").show().revolution({
                            sliderType: "standard",
                            jsFileLocation: "revolution/js/",
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
                                    touchOnDesktop: "on",
                                    swipe_threshold: 75,
                                    swipe_min_touches: 1,
                                    swipe_direction: "horizontal",
                                    drag_block_vertical: false
                                },
                            },
                            parallax: {
                                type: "mouse",
                                origo: "slidercenter",
                                speed: 2000,
                                levels: [2, 3, 4, 5, 6, 7, 12, 16, 10, 50, 46, 47, 48, 49, 50, 55],
                                type: "mouse",
                                disable_onmobile: "on"
                            },
                            responsiveLevels: [1240, 1025, 778, 480],
                            visibilityLevels: [1920, 1500, 1025, 768],
                            gridwidth: [1200, 991, 778, 480],
                            gridheight: [1025, 1366, 1025, 868],
                            lazyType: "none",
                            shadow: 0,
                            spinner: "spinner4",
                            stopLoop: "on",
                            stopAfterLoops: 0,
                            stopAtSlide: 1,
                            shuffle: "off",
                            autoHeight: "on",
                            fullScreenAutoWidth: "on",
                            fullScreenAlignForce: "off",
                            fullScreenOffsetContainer: "",
                            fullScreenOffset: "128px",
                            disableProgressBar: "on",
                            hideThumbsOnMobile: "off",
                            hideSliderAtLimit: 0,
                            hideCaptionAtLimit: 0,
                            hideAllCaptionAtLimit: 0,
                            debugMode: false,
                            fallbacks: {
                                simplifyAll: "off",
                                nextSlideOnWindowFocus: "off",
                                disableFocusListener: false,
                            }
                        });
                    }
                    ; /* END OF revapi call */

                    RsTypewriterAddOn(jQuery, revapi263);

                }
                ; /* END OF ON LOAD FUNCTION */
            }()); /* END OF WRAPPING FUNCTION */
        </script>
    </body>
</html>