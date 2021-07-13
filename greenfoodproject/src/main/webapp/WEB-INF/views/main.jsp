<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="app" value="${pageContext.request.contextPath}" />

<c:set var="memberDTO" value="${memberDTO }"></c:set>
<c:set var="recipeDTO" value="${recipeDTO }"></c:set>
<c:set var="categoryDTO" value="${categoryDTO }"></c:set>


<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>오구의 레시피 – 오구오구</title>
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
    <body data-mobile-nav-style="classic">
        <!-- start header -->
        	<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
        
        <!-- start subscription popup
        <div id="subscribe-popup" class="mfp-hide subscribe-popup">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8 col-md-10 bg-white modal-popup-main">
                        <div class="row">
                            <div class="col-12 col-sm-7 order-2 order-sm-1 newsletter-popup padding-6-rem-all lg-padding-4-rem-all xs-padding-3-rem-all">
                                <span class="text-extra-large font-weight-500 text-extra-dark-gray d-block margin-10px-bottom">Subscribe to newsletter</span>
                                <p class="margin-30px-bottom xs-margin-20px-bottom">Subscribe to our newsletters and don't miss new arrivals the latest updates and our latest promotions.</p>
                                <form action="email-templates/subscribe-newsletter.php" method="post">
                                    <div class="newsletter-style-03 position-relative margin-25px-bottom xs-margin-15px-bottom">
                                        <input class="medium-input bg-white m-0 required" name="email" placeholder="Enter your email address" type="email">
                                        <input type="hidden" name="redirect" value="">
                                        <button class="btn no-border text-medium submit" type="submit"><i class="feather icon-feather-mail m-0"></i></button>
                                        <div class="form-results position-absolute d-none"></div>
                                    </div>
                                </form>
                                <input id="newsletter-off" class="d-none" type="checkbox" name="newsletter-off" />
                                <label for="newsletter-off" class="text-small"><span></span>Don't show this popup again</label>
                            </div>
                            <div class="col-12 col-sm-5 cover-background order-1 order-sm-2 xs-h-150px" style="background-image:url('https://placehold.it/600x802');">
                                <button title="Close (Esc)" type="button" class="mfp-close">×</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         end subscription popup -->
         
        <!-- SLIDER EXAMPLE -->
        <section class="p-0 home-furniture-shop">
            <article class="content">
                <div id="rev_slider_34_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="mask-showcase" data-source="gallery" style="background:#ffffff;padding:0px;">
                    <!-- START REVOLUTION SLIDER 5.4.1 fullscreen mode -->
                    <div id="rev_slider_34_1" class="rev_slider fullscreenbanner tiny_bullet_slider" style="display:none;" data-version="5.4.1">
                        <ul>	<!-- SLIDE  -->
                            <li data-index="rs-73" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="http://works.themepunch.com/revolution_5_3/wp-content/"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="resources/images/shop-slide-01.jpg" alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" data-no-retina>
                                <!-- LAYERS -->
                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme rs-parallaxlevel-10"
                                     data-x="['center','center','center','center']" data-hoffset="['980','800','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['200','220','900','850']"  
                                     data-width="1500"
                                     data-height="1500"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on" 
                                     data-frames='[{"delay":300,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 5;background:linear-gradient(180deg, rgba(255,219,214,1) 0%, rgba(255,229,225,1) 100%);border-radius:100%;">
                                    <div class="rs-looped rs-wave"  data-speed="10" data-angle="0" data-radius="10px" data-origin="50% 50%"> </div></div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption tp-resizeme alt-font text-extra-dark-gray font-weight-500"
                                     data-x="['left','left','center','center']" data-hoffset="['0','102','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-185','-120','-410','-300']" 
                                     data-width="none"
                                     data-height="none"
                                     data-whitespace="nowrap"
                                     data-type="text" 
                                     data-responsive_offset="on" 
                                     data-frames='[{"delay":600,"speed":1000,"frame":"0","from":"x:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:[-100%];y:0px;s:inherit;e:inherit;","to":"o:0.7;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['left','left','left','left']"
                                     data-paddingtop="[10,10,10,10]"
                                     data-paddingright="[20,20,20,20]"
                                     data-paddingbottom="[10,10,10,10]"
                                     data-paddingleft="[20,20,20,20]"
                                     style="z-index: 7; text-transform: uppercase; letter-spacing: 2px;">치킨</div>

                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption alt-font text-extra-dark-gray"
                                     data-x="['left','left','center','center']" data-hoffset="['0','100','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-40','-10','-290','-220']" 
                                     data-fontsize="['100','70','70','50']"
                                     data-lineheight="['90','70','70','50']"
                                     data-width="auto"
                                     data-height="none"
                                     data-whitespace="nowrap"
                                     data-type="text" 
                                     data-responsive="on"
                                     data-responsive_offset="on" 
                                     data-frames='[{"delay":900,"speed":1000,"frame":"0","from":"x:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:[-100%];y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['left','left','center','center']"
                                     data-paddingtop="[20,20,20,20]"
                                     data-paddingright="[20,20,20,20]"
                                     data-paddingbottom="[30,30,30,30]"
                                     data-paddingleft="[20,20,20,20]"
                                     style="z-index: 8;letter-spacing: -3px;"><strong>치킨</strong> <br/> 로스팅구이</div>    

                                <!-- LAYER NR. 1 -->
                                <a class="tp-caption tp-resizeme btn btn-medium btn-white btn-box-shadow lg-margin-15px-bottom md-no-margin-bottom md-margin-auto-lr"
                                   href="shop-wide.html"
                                   data-x="['left','left','center','center']" data-hoffset="['24','122','0','0']" 
                                   data-y="['middle','middle','middle','middle']" data-voffset="['115','120','-160','-110']" 
                                   data-width="none"
                                   data-height="none"
                                   data-fontsize="['14','14','14','13']"
                                   data-whitespace="nowrap"
                                   data-type="button" 
                                   data-responsive_offset="on"
                                   data-responsive="on"
                                   data-frames='[{"delay":1200,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                   data-textAlign="['inherit','inherit','inherit','inherit']"
                                   data-paddingtop="[11,10,10,10]"
                                   data-paddingright="[27,25,25,22]"
                                   data-paddingbottom="[11,10,10,10]"
                                   data-paddingleft="[27,25,25,22]"
                                   style="z-index: 6;box-shadow: 0 0 15px rgba(0,0,0,.1);">자세히 보기</a>

                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme rs-parallaxlevel-10"
                                     data-x="['center','center','center','center']" data-hoffset="['300','190','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['0','20','150','150']"  
                                     data-width="['670','600','540','430']"
                                     data-height="['670','600','540','430']"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 5;background: rgba(173,157,148,0.1);border-radius:100%;">
                                    <div class="rs-looped rs-wave"  data-speed="10" data-angle="0" data-radius="10px" data-origin="50% 50%"> </div></div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption tp-resizeme rs-parallaxlevel-2"
                                     data-x="['center','center','center','center']" data-hoffset="['300','200','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['40','20','180','150']" 
                                     data-width="none"
                                     data-height="none"
                                     data-whitespace="nowrap"
                                     data-type="image" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":1800,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 6;"><img src="resources/images/c.jpg" alt="" data-ww="['529px','420px','420px','290px']" data-hh="['auto','auto','auto','auto']" width="529" height="594" data-no-retina></div>

                                <!-- LAYER NR. 32 -->
                                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-1"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-230','-190','-70','0']" 
                                     data-width="['120','100','110','90']"
                                     data-height="['120','100','110','90']"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2100,"speed":1000,"frame":"0","from":"x:0px;y:50px;rX:0deg;rY:0deg;rZ:0deg;sX:0.5;sY:0.5;opacity:0;","to":"o:1;","ease":"Back.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 19;background:rgba(240,111,66,1);border-radius:100%;"></div>

                                <!-- LAYER NR. 37 -->
                                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-1 alt-font text-extra-medium"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-250','-205','-85','-10']" 
                                     data-fontsize="['16','16','16','15']"
                                     data-width="['201','150','150','120']"
                                     data-height="none"
                                     data-whitespace="['normal','nowrap','nowrap','nowrap']"
                                     data-type="text" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2400,"speed":1000,"frame":"0","from":"y:30px;sX:0.5;sY:0.5;opacity:0;","to":"o:1;","ease":"Back.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['center','center','center','center']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 24; text-transform: uppercase;">only</div>

                                <!-- LAYER NR. 33 -->
                                <div class="tp-caption tp-resizeme rs-parallaxlevel-1 text-white alt-font"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-220','-178','-55','10']" 
                                     data-fontsize="['37','30','30','25']"
                                     data-lineheight="['40','30','30','25']"
                                     data-width="['201','150','150','120']"
                                     data-height="none"
                                     data-whitespace="['normal','nowrap','nowrap','nowrap']"
                                     data-type="text" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2700,"speed":1000,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.8;sY:0.8;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['center','center','center','center']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 20; letter-spacing: -2px;">8,900원</div>
                            </li>

                            <li data-index="rs-74" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="http://works.themepunch.com/revolution_5_3/wp-content/"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="resources/images/shop-slide-02.jpg" alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" data-no-retina>
                                <!-- LAYERS -->
                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme rs-parallaxlevel-10" 
                                     data-x="['center','center','center','center']" data-hoffset="['980','800','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['200','220','900','850']"   
                                     data-width="1500"
                                     data-height="1500"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":300,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 5;background:linear-gradient(180deg, rgba(255,238,221,1) 0%, rgba(255,244,231,1) 100%);border-radius:100%;">
                                    <div class="rs-looped rs-wave"  data-speed="10" data-angle="0" data-radius="10px" data-origin="50% 50%"> </div></div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption tp-resizeme alt-font text-extra-dark-gray text-medium font-weight-500"
                                     data-x="['left','left','center','center']" data-hoffset="['0','102','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-185','-120','-410','-300']" 
                                     data-width="none"
                                     data-height="none"
                                     data-whitespace="nowrap"
                                     data-type="text" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":600,"speed":1000,"frame":"0","from":"x:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:[-100%];y:0px;s:inherit;e:inherit;","to":"o:0.7;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['left','left','left','left']"
                                     data-paddingtop="[10,10,10,10]"
                                     data-paddingright="[20,20,20,20]"
                                     data-paddingbottom="[10,10,10,10]"
                                     data-paddingleft="[20,20,20,20]"

                                     style="z-index: 7; text-transform: uppercase; letter-spacing: 2px; opacity: 0.7;">치킨</div>

                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption alt-font text-extra-dark-gray margin-auto-lr"
                                     data-x="['left','left','center','center']" data-hoffset="['0','100','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-40','-10','-290','-220']" 
                                     data-fontsize="['100','70','70','50']"
                                     data-lineheight="['90','70','70','50']"
                                     data-width="['650','450','620','280']"
                                     data-height="none"
                                     data-whitespace="normal"
                                     data-type="text" 
                                     data-responsive_offset="on" 
                                     data-frames='[{"delay":900,"speed":1000,"frame":"0","from":"x:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:[-100%];y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['left','left','center','center']"
                                     data-paddingtop="[20,20,20,20]"
                                     data-paddingright="[20,20,20,20]"
                                     data-paddingbottom="[30,30,30,30]"
                                     data-paddingleft="[20,20,20,20]"
                                     style="z-index: 8;letter-spacing: -3px;"><span class="font-weight-600 d-block">치킨</span> 샐러드</div>

                                <!-- LAYER NR. 1 -->
                                <a class="tp-caption tp-resizeme btn btn-medium btn-white btn-box-shadow lg-margin-15px-bottom md-no-margin-bottom md-margin-auto-lr" 
                                   href="shop-wide.html"
                                   data-x="['left','left','center','center']" data-hoffset="['24','122','0','0']" 
                                   data-y="['middle','middle','middle','middle']" data-voffset="['115','120','-160','-110']" 
                                   data-width="none"
                                   data-height="none"
                                   data-fontsize="['14','14','14','13']"
                                   data-whitespace="nowrap"
                                   data-type="button" 
                                   data-responsive_offset="on"
                                   data-frames='[{"delay":1200,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                   data-textAlign="['inherit','inherit','inherit','inherit']"
                                   data-paddingtop="[11,10,10,10]"
                                   data-paddingright="[27,25,25,22]"
                                   data-paddingbottom="[11,10,10,10]"
                                   data-paddingleft="[27,25,25,22]"
                                   style="z-index: 6;box-shadow: 0 0 15px rgba(0,0,0,.1);">자세히 보기</a>

                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme rs-parallaxlevel-10"
                                     data-x="['center','center','center','center']" data-hoffset="['300','190','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['0','20','150','150']"  
                                     data-width="['670','600','540','430']"
                                     data-height="['670','600','540','430']"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 5;background: rgba(173,157,148,0.1);border-radius:100%;">
                                    <div class="rs-looped rs-wave"  data-speed="10" data-angle="0" data-radius="10px" data-origin="50% 50%"> </div></div>
                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption tp-resizeme rs-parallaxlevel-2"
                                     data-x="['center','center','center','center']" data-hoffset="['300','200','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['40','20','180','150']"  
                                     data-width="none"
                                     data-height="none"
                                     data-whitespace="nowrap"
                                     data-type="image" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":1800,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"

                                     style="z-index: 6;"><img src="resources/images/c.jpg" alt="" data-ww="['500px','420px','420px','279px']" data-hh="['auto','auto','auto','auto']" width="500" height="555"> </div>

                                <!-- LAYER NR. 32 -->
                                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-1"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-230','-190','-70','0']" 
                                     data-width="['120','100','110','90']"
                                     data-height="['120','100','110','90']"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2100,"speed":1000,"frame":"0","from":"x:0px;y:50px;rX:0deg;rY:0deg;rZ:0deg;sX:0.5;sY:0.5;opacity:0;","to":"o:1;","ease":"Back.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 19;background:rgba(240,111,66,1);border-radius:100%;"> </div>

                                <!-- LAYER NR. 37 -->
                                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-1 alt-font text-extra-medium"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-250','-205','-85','-10']" 
                                     data-fontsize="['16','16','16','15']"
                                     data-width="['201','150','150','120']"
                                     data-height="none"
                                     data-whitespace="['normal','nowrap','nowrap','nowrap']"
                                     data-type="text" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2400,"speed":1000,"frame":"0","from":"y:30px;sX:0.5;sY:0.5;opacity:0;","to":"o:1;","ease":"Back.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['center','center','center','center']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 24; text-transform: uppercase;">only</div>

                                <!-- LAYER NR. 33 -->
                                <div class="tp-caption tp-resizeme rs-parallaxlevel-1 text-white alt-font"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-220','-178','-55','10']" 
                                     data-fontsize="['37','30','30','25']"
                                     data-lineheight="['40','30','30','25']"
                                     data-width="['201','150','150','120']"
                                     data-height="none"
                                     data-whitespace="['normal','nowrap','nowrap','nowrap']"
                                     data-type="text" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2700,"speed":1000,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.8;sY:0.8;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['center','center','center','center']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 20; letter-spacing: -2px;">8,900원</div>
                            </li>
                            <li data-index="rs-75" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="http://works.themepunch.com/revolution_5_3/wp-content/"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="resources/images/shop-slide-03.jpg" alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" data-no-retina>
                                <!-- LAYERS -->
                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme rs-parallaxlevel-10"
                                     data-x="['center','center','center','center']" data-hoffset="['980','800','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['200','220','900','850']"    
                                     data-width="1500"
                                     data-height="1500"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":300,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 5;background:linear-gradient(180deg, rgba(255,231,217,1) 0%, rgba(254,236,225,1) 100%);border-radius:100%;">
                                    <div class="rs-looped rs-wave"  data-speed="10" data-angle="0" data-radius="10px" data-origin="50% 50%"> </div></div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption tp-resizeme alt-font text-extra-dark-gray text-medium font-weight-500"
                                     data-x="['left','left','center','center']" data-hoffset="['0','102','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-185','-130','-410','-300']" 
                                     data-width="none"
                                     data-height="none"
                                     data-whitespace="nowrap"
                                     data-type="text"
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":600,"speed":1000,"frame":"0","from":"x:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:[-100%];y:0px;s:inherit;e:inherit;","to":"o:0.7;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['left','left','left','left']"
                                     data-paddingtop="[10,10,10,10]"
                                     data-paddingright="[20,20,20,20]"
                                     data-paddingbottom="[10,10,10,10]"
                                     data-paddingleft="[20,20,20,20]"

                                     style="z-index: 7; text-transform: uppercase; letter-spacing: 2px; opacity: 0.7;">치킨</div>

                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption alt-font text-extra-dark-gray margin-auto-lr"
                                     data-x="['left','left','center','center']" data-hoffset="['0','100','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-40','-10','-290','-220']" 
                                     data-fontsize="['100','70','70','50']"
                                     data-lineheight="['90','70','70','50']"
                                     data-width="['650','450','580','340']"
                                     data-height="none"
                                     data-whitespace="normal"
                                     data-type="text" 
                                     data-responsive_offset="on" 
                                     data-frames='[{"delay":900,"speed":1000,"frame":"0","from":"x:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:[-100%];y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['left','left','center','center']"
                                     data-paddingtop="[20,20,20,20]"
                                     data-paddingright="[20,20,20,20]"
                                     data-paddingbottom="[30,30,30,30]"
                                     data-paddingleft="[20,20,20,20]"
                                     style="z-index: 8;letter-spacing: -3px;"><span class="font-weight-600 d-block">치킨</span> 샐러드</div>

                                <!-- LAYER NR. 1 -->
                                <a class="tp-caption tp-resizeme btn btn-medium btn-white btn-box-shadow lg-margin-15px-bottom md-no-margin-bottom md-margin-auto-lr"
                                   href="shop-wide.html"
                                   data-x="['left','left','center','center']" data-hoffset="['24','122','0','0']" 
                                   data-y="['middle','middle','middle','middle']" data-voffset="['115','130','-160','-110']" 
                                   data-width="none"
                                   data-height="none"
                                   data-fontsize="['14','14','14','13']"
                                   data-whitespace="nowrap"
                                   data-type="button" 
                                   data-responsive_offset="on"
                                   data-frames='[{"delay":1200,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                   data-textAlign="['inherit','inherit','inherit','inherit']"
                                   data-paddingtop="[11,10,10,10]"
                                   data-paddingright="[27,25,25,22]"
                                   data-paddingbottom="[11,10,10,10]"
                                   data-paddingleft="[27,25,25,22]"
                                   style="z-index: 6;box-shadow: 0 0 15px rgba(0,0,0,.1);">자세히 보기</a>

                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme rs-parallaxlevel-10"
                                     data-x="['center','center','center','center']" data-hoffset="['300','190','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['0','20','150','150']"  
                                     data-width="['670','600','540','430']"
                                     data-height="['670','600','540','430']"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 5;background: rgba(173,157,148,0.1);border-radius:100%;">
                                    <div class="rs-looped rs-wave"  data-speed="10" data-angle="0" data-radius="10px" data-origin="50% 50%"> </div></div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption tp-resizeme rs-parallaxlevel-2" 
                                     id="slide-73-layer-1" 
                                     data-x="['center','center','center','center']" data-hoffset="['300','200','0','0']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['40','0','170','130']"
                                     data-width="none"
                                     data-height="none"
                                     data-whitespace="nowrap"
                                     data-type="image" 
                                     data-responsive_offset="on"
                                     data-responsive="on"
                                     data-frames='[{"delay":1800,"speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"

                                     style="z-index: 6;"><img src="https://placehold.it/500x555" alt="" data-ww="['500px','404px','380px','280px']" data-hh="['auto','auto','auto','auto']" width="500" height="555" data-no-retina> </div>

                                <!-- LAYER NR. 32 -->
                                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-1"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-230','-190','-70','0']" 
                                     data-width="['120','100','110','90']"
                                     data-height="['120','100','110','90']"
                                     data-whitespace="nowrap"
                                     data-type="shape" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2100,"speed":1000,"frame":"0","from":"x:0px;y:50px;rX:0deg;rY:0deg;rZ:0deg;sX:0.5;sY:0.5;opacity:0;","to":"o:1;","ease":"Back.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['inherit','inherit','inherit','inherit']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 19;background:rgba(240,111,66,1);border-radius:100%;"> </div>

                                <!-- LAYER NR. 37 -->
                                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-1 alt-font text-extra-medium"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-250','-205','-85','-10']" 
                                     data-fontsize="['16','16','16','15']"
                                     data-width="['201','150','150','120']"
                                     data-height="none"
                                     data-whitespace="['normal','nowrap','nowrap','nowrap']"
                                     data-type="text" 
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2400,"speed":1000,"frame":"0","from":"y:30px;sX:0.5;sY:0.5;opacity:0;","to":"o:1;","ease":"Back.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['center','center','center','center']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 24; text-transform: uppercase;">only</div>

                                <!-- LAYER NR. 33 -->
                                <div class="tp-caption tp-resizeme rs-parallaxlevel-1 text-white alt-font"
                                     data-x="['center','center','center','center']" data-hoffset="['540','420','200','150']" 
                                     data-y="['middle','middle','middle','middle']" data-voffset="['-220','-178','-55','10']" 
                                     data-fontsize="['37','30','30','25']"
                                     data-lineheight="['40','30','30','25']"
                                     data-width="['201','150','150','120']"
                                     data-height="none"
                                     data-whitespace="['normal','nowrap','nowrap','nowrap']"
                                     data-type="text"
                                     data-responsive_offset="on"
                                     data-frames='[{"delay":2700,"speed":1000,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.8;sY:0.8;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                     data-textAlign="['center','center','center','center']"
                                     data-paddingtop="[0,0,0,0]"
                                     data-paddingright="[0,0,0,0]"
                                     data-paddingbottom="[0,0,0,0]"
                                     data-paddingleft="[0,0,0,0]"
                                     style="z-index: 20; letter-spacing: -2px;">8,900원</div>
                            </li>
                        </ul>
                    </div>
                </div>
            </article>
        </section>
        <!-- end revolution slider -->
        <!-- start section -->
        <section class="padding-8-half-rem-lr xl-padding-3-rem-lr lg-no-padding-lr">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 text-center margin-5-half-rem-bottom md-margin-3-rem-bottom wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-dark-orange text-uppercase letter-spacing-1px d-block margin-5px-bottom">음식 카테고리</span>
                        <h4 class="alt-font font-weight-600 text-extra-dark-gray mb-0 letter-spacing-minus-1px">오늘은 이 음식 어떠세요?</h4>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-xl-3 row-cols-lg-2 justify-content-center margin-3-rem-tb md-no-margin-tb">
                    <!-- start category item -->
                    <c:forEach var="item" items="${categoryDTO }" >
                    <div class="col col-md-6 col-sm-10 shop-category-style-02">
                        <div class="shop-product align-items-center d-flex padding-30px-lr xs-no-padding-lr">
                            <div class="shop-product-image text-center d-flex justify-content-center align-items-center wow animate__zoomIn" data-wow-delay="0.7s">
                                <img src="resources/images/c.jpg" alt=""/>
                                <a href="shop-wide.html" class="d-inline-block line-height-65px rounded-circle bg-extra-dark-gray box-shadow-extra-large h-60px w-60px position-absolute product-view-link"><i class="feather icon-feather-arrow-right text-white icon-extra-small"></i></a>
                            </div>
                            <div class="shop-product-overlay position-relative wow animate__fadeIn" data-wow-delay="0.8s">
                            	<a href="single-product.html" class="text-extra-dark-gray text-black-hover font-weight-500 d-inline-block"><c:out value="${item.title}" /></a>
                                <span class="alt-font font-weight-500 margin-10px-bottom d-inline-block text-uppercase letter-spacing-1px text-dark-orange text-dark-orange-hover xs-margin-5px-bottom">음식카테고리</span>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- end category item -->
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="padding-8-half-rem-lr border-top border-width-1px border-color-medium-gray xl-padding-3-rem-lr md-no-padding-lr">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 text-center margin-5-half-rem-bottom md-margin-3-rem-bottom wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-dark-orange text-uppercase letter-spacing-1px d-block margin-5px-bottom">레시피</span>
                        <h4 class="alt-font font-weight-600 text-extra-dark-gray mb-0 letter-spacing-minus-1px">HOT 레시피</h4>
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
                            <li class="grid-item wow animate__fadeIn">
                                <div class="product-box margin-45px-bottom lg-margin-25px-bottom xs-no-margin-bottom">
                                    <div class="product-image">
                                        <a href="single-product.html">
                                            <img src="${item.thumbnail }" alt=""  style="width:1000px; height:300px"   / >
                                            <img class="hover-img" src="resources/images/b.jpg" alt=""/>
                                        </a>
                                        <div class="product-hover-details">
                                            <a href="#" class="alt-font text-white text-small font-weight-500 text-uppercase"><i class="feather icon-feather-shopping-bag margin-10px-right"></i>레시피 살펴보기</a>
                                        </div>
                                        <div class="product-hover-right padding-20px-tb padding-15px-right w-65px">
                                            <a href="#" class="product-link-icon move-top-bottom" data-toggle="tooltip" data-placement="left" title="" data-original-title="찜하기"><i class="feather icon-feather-heart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-footer text-center padding-25px-top xs-padding-10px-top">
                                        <a href="single-product.html" class="text-extra-dark-gray text-black-hover font-weight-500 d-inline-block"><c:out value="${item.title}" /></a>
                                        <div class="product-price text-medium"><c:out value="${item.foodname}" /></div>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                            <!-- end product item -->
                        </ul>
                    </div>
                    <div class="col-12 text-center margin-3-rem-top wow animate__fadeIn" data-wow-delay="0.2s">
                        <a href="shop-left-sidebar.html" class="btn btn-medium btn-fancy btn-transparent-black">More recipe</a>
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
                    <div class="col bg-very-light-orange padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn" data-wow-delay="0.2s">
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-7 xs-margin-30px-bottom">
                                <a href="single-product.html"><img src="resources/images/c.jpg" alt=""></a>
                            </div>
                            <div class="col-12 col-sm-5 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left">
                                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span> 최대 50% 할인</span>
                                <h4 class="alt-font text-extra-dark-gray letter-spacing-minus-1px">치킨 <span class="font-weight-600">샐러드</span></h4>
                                <a href="single-product.html" class="btn btn-small btn-fancy btn-box-shadow btn-white margin-5px-top">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <!-- end info banner item -->
                    <!-- start info banner item -->
                    <div class="col bg-very-light-pink padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn" data-wow-delay="0.4s">
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-7 xs-margin-30px-bottom">
                                <a href="single-product.html"><img src="resources/images/c.jpg" alt=""></a>
                            </div>
                            <div class="col-12 col-sm-5 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left">
                                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span> 최대 50% 할인</span>
                                <h4 class="alt-font text-extra-dark-gray letter-spacing-minus-1px">치킨 <span class="font-weight-600"> 샐러드</span></h4>
                                <a href="single-product.html" class="btn btn-small btn-fancy btn-box-shadow btn-white margin-5px-top">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <!-- end info banner item -->
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 text-center margin-5-half-rem-bottom md-margin-3-rem-bottom wow animate__fadeIn">
                        <span class="alt-font font-weight-500 text-dark-orange text-uppercase letter-spacing-1px d-block margin-5px-bottom">레시퍼</span>
                        <h4 class="alt-font font-weight-600 text-extra-dark-gray mb-0 letter-spacing-minus-1px">이 레시퍼의 레시피는 어떠세요?</h4>
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
                                    <div class="blog-post-image margin-40px-bottom md-margin-35px-bottom xs-margin-25px-bottom">
                                        <a href="blog-post-layout-01.html"><img src="${item.profile_img}" alt="resources/images/user.png"/></a>
                                    </div>
                                    <div class="post-details">
                                    <c:set var="name" value="${item.nickname }"></c:set>
                                    <c:choose>
                                    	<c:when test="${name != null}">
                                        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray text-dark-orange-hover d-block margin-20px-bottom xs-margin-10px-bottom"><c:out value="${item.nickname}" /></a>
                                        <p class="w-95">#해시태그1 #해시태그2 #해시태그3 #해시태그4</p>
                                        </c:when>
                                        
                                        <c:when test="${name == null}">
                                        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray text-dark-orange-hover d-block margin-20px-bottom xs-margin-10px-bottom"><c:out value="${item.id}" /></a>
                                        <p class="w-95">#해시태그1 #해시태그2 #해시태그3 #해시태그4</p>
                                        </c:when>
                                     </c:choose>
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