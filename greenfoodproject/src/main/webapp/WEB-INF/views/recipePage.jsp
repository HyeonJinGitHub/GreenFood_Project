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
        <title>건강식 레시피</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="author" content="ThemeZaa">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
        <link href="https://vjs.zencdn.net/7.10.2/video-js.css" rel="stylesheet" />
        
        <style>
			body {
				margin: 0;
				padding: 0;
			}
			
			#video {
				width: 100%;
				height: 100vh;
			}
			
/* 			#load {
			    width: 100%;
			    height: 100%;
			    top: 0;
			    left: 0;
			    position: fixed;
			    display: block;
			    opacity: 0.8;
			    background: white;
			    z-index: 99;
			    text-align: center;
			}
			
			#load > img {
			    position: absolute;
			    top: 50%;
			    left: 50%;
			    z-index: 100;
			} */
			
		</style>
		<script src="https://vjs.zencdn.net/7.8.2/video.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/videojs-contrib-hls/5.15.0/videojs-contrib-hls.min.js"></script>
    </head>
    <body data-mobile-nav-style="classic" style="overflow-x:hidden">
<!-- start header -->
        	<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
        <section class="p-0 parallax home-events-conference h-70" data-parallax-background-ratio="0.5" style="" id="bgback">
            <div class="opacity-extra-medium-2 bg-black h-70 "></div>
            <div class="container position-relative"  h-70>
                <div class="row justify-content-center">
                    <div class="col-12 col-xl-9 col-lg-10 col-md-11 d-flex flex-column justify-content-center margin-100px-top margin-100px-bottom text-center md-landscape-h-400px xs-padding-15px-lr">
                        <div class="bg-transparent-white-2 border-radius-6px sm-padding-2-rem-lr">
                            <p class="alt-font font-weight-500 text-uppercase letter-spacing-3px text-neon-orange margin-40px-bottom sm-w-100 sm-margin-25px-bottom">어떤 건강레시피를 보러오셨나요?</p>
                            <div id="title"> </div>
                            <div class="d-flex flex-column flex-sm-row justify-content-center border-tb border-color-white-transparent text-center padding-15px-tb margin-4-rem-bottom margin-30px-top">
                                <div class="margin-25px-right xs-no-margin-right sm-margin-15px-right text-large" id="likeBtn" value="">
                                    <a class=" alt-font text-uppercase d-inline-block" id="liketext" style="margin-right:5px"><i class="feather icon-feather-thumbs-up margin-10px-right"></i>좋아요</a>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block" id="likes"></span>
                                </div>
                                <div class="margin-25px-right xs-no-margin-right sm-margin-15px-right text-large">
                                    <i class="feather icon-feather-monitor text-white margin-10px-right text-large"></i>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block" style="margin-right:5px">조회수</span>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block" id="views"></span>
                                </div>
                                <div class="margin-25px-right xs-no-margin-right sm-margin-15px-right text-large">
                                    <i class="feather icon-feather-user text-white margin-10px-right text-large"></i>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block margin-5px-right">작성자</span>
                                    <span class=" text-white alt-font font-weight-500 text-uppercase d-inline-block" id="writer"></span>
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
                                    <a href="#foodInfo" class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">기본설명</a> 
                                </div>
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom">
                                    <a href="#ingredientsInfo" class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">영양성분</a> 
                                </div>
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom">
                                    <a href="#recipeInfo" class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">조리방법</a>
                                </div>
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle lg-padding-15px-lr">
                                    <a href="#relatedPost" class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">관련글</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="foodInfo" class="row align-items-center justify-content-center" style="margin-top:50px; width:100%">
                    <div class="col-12 col-lg-5 md-margin-5-rem-bottom xs-margin-5-rem-top wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom" style="margin-left:-50px">기본설명</span>
                        <h5 class="alt-font font-weight-600 text-dark-purple line-height-46px margin-4-rem-bottom w-85 letter-spacing-minus-1px lg-w-100 md-margin-10px-bottom xs-line-height-30px" id="foodname" style="margin-left:-50px"></h5>
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
                                    <div class="panel-body" id="explanation"></div>
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
                                    <div class="panel-body" id="howmuch"></div>
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
                                    <div class="panel-body" id="cookingtime"></div>
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
                                    	<ul class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray" id="ingredients_howmuch">
				                            
				                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end accordion item -->
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 wow animate__fadeIn" data-wow-delay="0.4s">
                        <div class=" position-relative">
                            <img id="thumb" src="" class="overflow-hidden border-radius-4px" style="width:100%" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <section id="classes" class="overlap-height bg-very-light-desert-storm" style="margin-top:-200px; margin-bottom:-20px">
            <div class="container">
                <div class="row margin-6-rem-bottom md-margin-5-rem-bottom ">
                    <div class="col-12 col-lg-6 text-center text-lg-left wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom">관련태그</span>
                        </div>
                   </div>
                <div class="row row-cols-1 row-cols-lg-4 row-cols-sm-2 justify-content-center">
                   <div class="col-lg-12">
                   </div>
               </div>
            </div>
        </section>
          <!-- start section -->
        <section id="classes" class="overlap-height" style="margin-top:-50px; margin-bottom:-20px">
            <div class="container" id="ingredientsInfo">
                <div class="row margin-6-rem-bottom md-margin-5-rem-bottom ">
                    <div class="col-12 col-lg-6 text-center text-lg-left wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-salmon-rose text-uppercase d-block margin-20px-bottom md-margin-10px-bottom">영양성분</span>
                        <h5 class="alt-font font-weight-600 text-dark-purple line-height-46px letter-spacing-minus-1px m-lg-0 d-inline-block md-line-height-36px md-w-60 xs-w-100">영양성분을 알아볼까요?</h5>
                    </div>
                     <p class="alt-font font-weight-500 text-middle-gray d-block text-uppercase text-right margin-100px-top" style="margin-bottom: -50px; width :100%">성인남녀 평균 1일 영양소 권장량 기준 (1990Kcal)</p>
						
                </div>
                <div class="row row-cols-1 row-cols-lg-4 row-cols-sm-2 justify-content-center">
                   <div class="col-lg-12">
                  				
                   		<section class="pt-0">
				            <div class="container">
				            <div class="col" style="visibility:hidden; width: 1%">
				                        <div class="chart-percent">
				                            <span class="pie-chart-style-02" >
				                            </span>
				                        </div>
				                        <div class="chart-text text-center" >
				                        </div>
				                    </div>
				                    		             
				                <div class="row row-cols-1 row-cols-md-4 row-cols-sm-2 justify-content-center" style="margin-top:-120px"id="ingreInfo">
				                    <!-- start pie charts item -->
				                    
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
                            <h3  class="alt-font text-salmon-rose title-extra-large letter-spacing-minus-3px font-weight-700 mb-0">Healthy Food</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
        <section class="pt-0 bg-very-light-desert-storm ">
            <div class="container" id="recipeInfo">
                <div class="row justify-content-center text-center">
                    <div class="col-12 text-center">
                    		<video id=video width="1000" height="300" class="video-js" controls>
                    			<!-- 여기 밑에 src에다가 recipe db에서 경로 가져와서 붙여넣기만 해주시면 댑니다. -->
								
							</video>
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
                		<div class="blog-list blog-side-image" id="stepRecipe">
                            <!-- start blog item --> 
                            
                            <!-- end blog item -->
                        </div>
                	</div>
                </div>
            </div>
        </section>
        
        
        <!-- start section -->
        <section class="big-section bg-very-light-desert-storm overlap-height" style="margin-top:-120px;">
            <div class="container" id="relatedPost">
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
        <section class="pt-lg-0 pb-0 overflow-visible bg-very-light-desert-storm">
            <div class="container" style="padding-bottom: 150px">
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
                    <div class="col col-sm-8 md-margin-30px-bottom xs-margin-15px-bottom wow animate__flipInY " data-wow-delay="0.4s">
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
        
         <!-- start footer -->
        <jsp:include page='/WEB-INF/views/layout/footer.jsp' />
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
        
	<link
		href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
		rel="stylesheet" type="text/css" />
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	
        <script type="text/javascript">
        $(window).load(function() {
    	    $('#load').hide();
    	    
    	    
    	});
        
        $(document).ready(function() {
        	console.log(${no});
        	$.ajax({
    			url: "${pageContext.request.contextPath}/recipeDetail",
    			type: "post",
    			dataType: "text",
    			data : {
					"no" : ${no}
				}, 
    			success: function(data) {
    				var results = JSON.parse(data);
    				console.log(results);
    				var str = '<h1 class="alt-font font-weight-600 letter-spacing-minus-3px text-white margin-3-half-rem-bottom sm-margin-20px-bottom xs-letter-spacing-minus-1-half">'+results.title+'</h1>';
    				$("#title").append(str);
    				
    				$("#writer").append(results.id);
    				$("#likes").append(results.likes);
    				$("#foodname").append(results.foodname);
    				$("#explanation").append(results.explanation);
    				$("#howmuch").append(results.howmuch+'인분');
    				$("#cookingtime").append(results.cookingtime+'분');
    				document.getElementById("thumb").setAttribute("src", results.thumbnail.replace(/(\s*)/g, ''));
    				document.getElementById("bgback").style.backgroundImage = "url('"+results.thumbnail.replace(/(\s*)/g, '')+"')";
    				var str ='<source id="videof" src="'+results.viedofile.replace( /(\s*)/g, "")+'" type="video/mp4">'
    				$("#video").append(str);
    			}
    				
    		});
        	
        	$.ajax({
    			url: "${pageContext.request.contextPath}/recipeDetailStep",
    			type: "post",
    			dataType: "text",
    			data : {
					"no" : ${no}
				}, 
    			success: function(data) {
    				var results = JSON.parse(data);
    				console.log(results);
    				for(var i = 0; i<results.length; i++)
    				{
    					var str = '';
    					str += '<div class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn">'
    						+ '<div class="d-flex flex-column flex-md-row align-items-center">'
    						+ '<div class="blog-post-image sm-margin-25px-bottom">'
    						+ '<a href="blog-post-layout-01.html" title=""><img src="'+results[i].step_img.replace(/(\s*)/g, '')+'" alt="" /></a>'
    						+ '</div>'
    						+ '<div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding">'
    						+ '<a href="blog-masonry.html" class="alt-font text-small text-salmon-rose font-weight-500 text-uppercase d-inline-block margin-15px-bottom sm-margin-10px-bottom">'+(i+1)+'번째 단계</a>'
    						+ '<a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-large text-extra-dark-gray d-block margin-20px-bottom sm-margin-10px-bottom">'+results[i].step_title+'</a>'
    						+ '<p class="margin-seventeen-bottom sm-margin-25px-bottom">'+results[i].step_explanation+'</p>'
    						+ '<div class="alt-font text-extra-small text-uppercase d-flex align-items-center sm-margin-10px-bottom">'
    						+ '<img class="avtar-image" src="https://placehold.it/149x149" alt=""></div></div></div></div>'
    					$("#stepRecipe").append(str);
    					
                              
    				}
    			}
    				
    		});
        	
        	$.ajax({
    			url: "${pageContext.request.contextPath}/recipeIngredients",
    			type: "post",
    			dataType: "text",
    			data : {
					"no" : ${no}
				}, 
    			success: function(data) {
    				var results = JSON.parse(data);
    				console.log(results);
    				for(var i = 0; i<results.length; i++)
    				{
    					var str = '';
    					str += '<li class="padding-15px-tb border-bottom border-color-medium-gray"><i class="feather icon-feather-check text-large text-salmon-rose margin-10px-right"></i>'+results[i].name+' ('+results[i].howmuch.toString()+'g)</li>'
    					$("#ingredients_howmuch").append(str);   
    				}
    			}
    				
    		});
        	
        	$.ajax({
    			url: "${pageContext.request.contextPath}/recipeIngredientsInfo",
    			type: "post",
    			dataType: "text",
    			data : {
					"no" : ${no}
				}, 
    			success: function(data) {
    				var results = JSON.parse(data);
    				var str1 ='';
    				var str2 ='';
    				var str3 ='';
    				var str4 ='';
    				var str5 ='';
    				var str6 ='';
    				var str7 ='';
    				var str8 ='';
    				
    				str1 += '<div class="col sm-margin-40px-bottom">'
    					+ '<div class="chart-percent">'
    					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.calorie +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                        + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                    	+ '</span>'
                		+ '</div>'
                		+ '<div class="chart-text text-center">'
                		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
                		+ '칼로리 (' + parseInt(results.calorie * 19.877) +'kcal)'
                		+ '</span></div></div>'
           		str2 += '<div class="col sm-margin-40px-bottom">'
   					+ '<div class="chart-percent">'
   					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.carbohydrate +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                    + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                   	+ '</span>'
               		+ '</div>'
               		+ '<div class="chart-text text-center">'
               		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
               		+ '탄수화물 ('+parseInt(results.carbohydrate * 2.879)+'g)'
               		+ '</span></div></div>'
           		str3 += '<div class="col sm-margin-40px-bottom">'
   					+ '<div class="chart-percent">'
   					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.protein +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                    + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                   	+ '</span>'
               		+ '</div>'
               		+ '<div class="chart-text text-center">'
               		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
               		+ '단백질 ('+parseInt(results.protein * 0.724) +'g)'
               		+ '</span></div></div>'
           		str4 += '<div class="col sm-margin-40px-bottom">'
   					+ '<div class="chart-percent">'
   					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.fat +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                    + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                   	+ '</span>'
               		+ '</div>'
               		+ '<div class="chart-text text-center">'
               		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
               		+ '지방 (' +parseInt(results.fat *0.495)+'g)'
               		+ '</span></div></div>'
               		
           		str5 += '<div class="col sm-margin-40px-bottom">'
   					+ '<div class="chart-percent">'
   					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.saccharide +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                    + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                   	+ '</span>'
               		+ '</div>'
               		+ '<div class="chart-text text-center">'
               		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
               		+ '당류 ('+parseInt(results.saccharide *0.602) +'g)'
               		+ '</span></div></div>'
           		str6 += '<div class="col sm-margin-40px-bottom">'
   					+ '<div class="chart-percent">'
   					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.sodium +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                    + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                   	+ '</span>'
               		+ '</div>'
               		+ '<div class="chart-text text-center">'
               		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
               		+ '나트륨 ('+parseInt(results.sodium * 32.550) + 'mg)'
               		+ '</span></div></div>'
           		str7 += '<div class="col sm-margin-40px-bottom">'
   					+ '<div class="chart-percent">'
   					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.cholesterol +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                    + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                   	+ '</span>'
               		+ '</div>'
               		+ '<div class="chart-text text-center">'
               		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
               		+ '콜레스테롤 ('+parseInt(results.cholesterol*2.604)+ 'mg)'
               		+ '</span></div></div>'
           		str8 += '<div class="col sm-margin-40px-bottom">'
   					+ '<div class="chart-percent">'
   					+ '<span class="pie-chart-style-02" data-line-width="12" data-percent="'+ results.fattyacid +'" data-track-color="#f5f5f5" data-start-color="#f8a380" data-end-color="#fe8182">'
                    + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
                   	+ '</span>'
               		+ '</div>'
               		+ '<div class="chart-text text-center">'
               		+ '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block margin-20px-top margin-40px-bottom"  style="font-size:16px">'
               		+ '포화지방산 (' + parseInt(results.fattyacid*0.166) +'g)'
               		+ '</span></div></div>'
                   
    				$("#ingreInfo").append(str1);
    				$("#ingreInfo").append(str2);
    				$("#ingreInfo").append(str3);
    				$("#ingreInfo").append(str4);
    				$("#ingreInfo").append(str5);
    				$("#ingreInfo").append(str6);
    				$("#ingreInfo").append(str7);
    				$("#ingreInfo").append(str8);
    				
    			}
    				
    		});
        	
        	$(document).on(
					"click",
					"#likeBtn",
					function(e) {
						console.log($(this).attr('value'));
						if($(this).attr('value') == "possible")
						{
	    					$.ajax({
	    		    			url: "${pageContext.request.contextPath}/Insertlike",
	    		    			type: "post",
	    		    			dataType: "text",
	    		    			data : {
	    							"no" : ${no}
	    						}, 
	    		    			success: function(data) {
	    		    				console.log("insert like");
	    		    				$("#likes").empty();
	    		    				$("#likes").append(data);
	    		    			}
	    		    				
	    		    		});
	    					document.getElementById("likeBtn").setAttribute("value", "impossible");
	    					$("#likeBtn").removeClass("text-salmon-rose");
	    					$("#liketext").removeClass("text-salmon-rose");
	    					$("#likeBtn").addClass("text-white");
	    					$("#liketext").addClass("text-white");
	    					window.location.reload();
						}
						else{
	    					$.ajax({
	    		    			url: "${pageContext.request.contextPath}/Deletelike",
	    		    			type: "post",
	    		    			dataType: "text",
	    		    			data : {
	    							"no" : ${no}
	    						}, 
	    		    			success: function(data) {
	    		    				console.log("delete like");
	    		    				$("#likes").empty();
	    		    				$("#likes").append(data);
	    		    			}
	    		    				
	    		    		});
						}
						document.getElementById("likeBtn").setAttribute("value", "possible");
						$("#likeBtn").removeClass("text-white");
    					$("#liketext").removeClass("text-white");
    					$("#likeBtn").addClass("text-salmon-rose");
    					$("#liketext").addClass("text-salmon-rose");
    					window.location.reload();
					});
        	
        	$.ajax({
    			url: "${pageContext.request.contextPath}/likeschk",
    			type: "post",
    			dataType: "text",
    			data : {
					"no" : ${no}
				}, 
    			success: function(data) {
    				console.log(data);
    				if(data == 'NO')
    				{
    					document.getElementById("likeBtn").setAttribute("value", "possible");
    					$("#likeBtn").removeClass("text-white");
    					$("#liketext").removeClass("text-white");
    					$("#likeBtn").addClass("text-salmon-rose");
    					$("#liketext").addClass("text-salmon-rose");
    
    				}
    				else{
    					
    					document.getElementById("likeBtn").setAttribute("value", "impossible");
    					$("#likeBtn").removeClass("text-salmon-rose");
    					$("#liketext").removeClass("text-salmon-rose");
    					$("#likeBtn").addClass("text-white");
    					$("#liketext").addClass("text-white");
    					
    				}
    			}
    				
    		});
        	
        	
        	$.ajax({
    			url: "${pageContext.request.contextPath}/UpdateViews",
    			type: "post",
    			dataType: "text",
    			data : {
					"no" : ${no}
				}, 
    			success: function(data) {
    				console.log("update view");
    				$("#views").append(data);
    			}
    				
    		});
        	
        });
        
      
        
         
        </script>
    </body>
</html>