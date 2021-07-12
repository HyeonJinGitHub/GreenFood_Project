<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="images" value='/resources/images' />
<c:url var="css" value='/resources/css' />
<c:url var="email-templates" value='/resources/email-templates' />

<c:set var="app" value="${pageContext.request.contextPath}" />
<c:set var="RecipeSearchDTO" value="${RecipeSearchDTO }" />
<c:set var="pagingVO" value="${pagingVO }" />
<c:set var="keyword" value="${keyword }" />

<c:url var="js" value='/resources/js' />
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>오구의 레시피 - 오구오구</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="ThemeZaa">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1" />
<meta name="description"
	content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
<!-- favicon icon -->
<link rel="shortcut icon" href="${images}/favicon.png">
<link rel="apple-touch-icon" href="${images}/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${images}/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${images}/apple-touch-icon-114x114.png">

</head>
<style>
.stepimage_size{height:100%; font-size:0;}  
.stepimage_size:after{display:inline-block; height:100%; content:""; vertical-align:middle;}
.stepimage_size img{vertical-align:middle;}
</style>
<body data-mobile-nav-style="classic">
	<!-- start header -->
		<jsp:include page='/WEB-INF/views/layout/header.jsp' />
	<!-- end header -->
	<!-- start page title -->
        <section class="parallax" data-parallax-background-ratio="0.5" style="background-image:url('https://placehold.it/1920x1100');">
            <div class="opacity-medium bg-gradient-fast-blue-purple"></div>
            <div class="container">
                <div class="row align-items-stretch justify-content-center extra-small-screen">
                    <div class="col-12 page-title-large text-center d-flex align-items-center justify-content-center flex-column">
                        <span class="d-block text-white opacity-6 alt-font margin-5px-bottom xs-line-height-20px">무엇을 도와드릴까요?</span>
                        <h1 class="alt-font text-white font-weight-500 no-margin-bottom">Service Center</h1>
                    </div>
                </div>
            </div>
        </section>
        <!-- end page title -->
        <!-- start section -->
        <section class="bg-light-gray">
            <div class="container" id ="consulting">
                <div class="row row-cols-1 row-cols-lg-3 row-cols-md-2 justify-content-center">
                    <!-- start fancy text box item -->
                    <div class="col col-sm-8 md-margin-30px-bottom xs-margin-15px-bottom">
                        <div class="feature-box feature-box-hide-show-hover bg-white border-radius-6px overflow-hidden box-shadow-large box-shadow-extra-large-hover">
                            <div class="feature-box-move-bottom-top padding-5-rem-lr padding-15px-tb lg-padding-2-half-rem-lr md-padding-4-half-rem-lr">
                                <div class="feature-box-icon">
                                    <i class="line-icon-Mail-Read d-block icon-medium text-fast-blue margin-25px-bottom"></i>
                                </div>
                                <div class="feature-box-content last-paragraph-no-margin">
                                    <span class="text-extra-dark-gray text-extra-medium d-block alt-font font-weight-500">E-mail</span>
                                    <a href="llhbum@naver.com" class="alt-font text-decoration-underline">이메일 보내기</a>
                                </div>
                                <div class="move-bottom-top margin-10px-top last-paragraph-no-margin">
                                    <p>이메일를 입력하세요</p>
                                </div>
                            </div>
                            <div class="feature-box-overlay"></div>
                        </div>
                    </div>
                    <!-- end fancy text box item -->
                    <!-- start fancy text box item -->
                    <div class="col col-sm-8 md-margin-30px-bottom xs-margin-15px-bottom">
                        <div class="feature-box feature-box-hide-show-hover bg-white border-radius-6px overflow-hidden box-shadow-large box-shadow-extra-large-hover">
                            <div class="feature-box-move-bottom-top padding-5-rem-lr padding-15px-tb lg-padding-2-half-rem-lr md-padding-4-half-rem-lr">
                                <div class="feature-box-icon">
                                    <i class="line-icon-Phone-2 d-block icon-medium text-fast-blue margin-25px-bottom"></i>
                                </div>
                                <div class="feature-box-content last-paragraph-no-margin">
                                    <span class="text-extra-dark-gray text-extra-medium d-block alt-font font-weight-500">Phone</span>
                                    <a href="#" class="alt-font text-decoration-underline">전화</a>
                                </div>
                                <div class="move-bottom-top margin-10px-top last-paragraph-no-margin">
                                    <p>전화번호를 입력하세요</p>
                                </div>
                            </div>
                            <div class="feature-box-overlay"></div>
                        </div>
                    </div>
                    <!-- end fancy text box item -->
                    <!-- start fancy text box item -->
                    <div class="col col-sm-8">
                        <div class="feature-box feature-box-hide-show-hover bg-white border-radius-6px overflow-hidden box-shadow-large box-shadow-extra-large-hover">
                            <div class="feature-box-move-bottom-top padding-5-rem-lr padding-15px-tb lg-padding-2-half-rem-lr md-padding-4-half-rem-lr">
                                <div class="feature-box-icon">
                                    <i class="line-icon-Approved-Window d-block icon-medium text-fast-blue margin-25px-bottom"></i>
                                </div>
                                <div class="feature-box-content last-paragraph-no-margin">
                                    <span class="text-extra-dark-gray text-extra-medium d-block alt-font font-weight-500">Customer Board</span>
                                    <a href="#project" class="alt-font text-decoration-underline section-link">고객 게시판 이동</a>
                                </div>
                                <div class="move-bottom-top margin-10px-top last-paragraph-no-margin">
                                    <p>고객센터</p>
                                </div>
                            </div>
                            <div class="feature-box-overlay"></div>
                        </div>
                    </div>
                    <!-- end fancy text box item -->
                </div>
            </div>
        </section>
        <!-- end section -->
        <!-- start section -->
        <section class="wow animate__fadeIn">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10">
                        <div class="row justify-content-center">
                            <div class="col-12 col-xl-6 col-lg-7 text-center margin-4-half-rem-bottom md-margin-3-rem-bottom">
                                <span class="alt-font letter-spacing-minus-1-half text-extra-medium d-block margin-5px-bottom">어떤 도움이 필요하세요?</span>
                                <h4 class="alt-font font-weight-600 text-extra-dark-gray">메세지 보내기</h4>
                            </div>
                            <div class="col-12">
                                <!-- start contact form -->
                                <form action="email-templates/contact-form.php" method="post">
                                    <div class="row row-cols-1 row-cols-md-2">
                                        <div class="col margin-4-rem-bottom sm-margin-25px-bottom">
                                            <input class="medium-input bg-white margin-25px-bottom required" type="text" name="name" placeholder="이름">
                                            <input class="medium-input bg-white margin-25px-bottom required" type="email" name="email" placeholder="이메일">
                                            <input class="medium-input bg-white mb-0" type="tel" name="phone" placeholder="전화번호">
                                        </div>
                                        <div class="col margin-4-rem-bottom sm-margin-10px-bottom">
                                            <textarea class="medium-textarea h-200px bg-white" name="comment" placeholder="메세지를 입력해주세요."></textarea>
                                        </div>
                                        <div class="col text-left sm-margin-30px-bottom">
                                            <input type="checkbox" name="terms_condition" id="terms_condition" value="1" class="terms-condition d-inline-block align-top w-auto mb-0 margin-5px-top margin-10px-right">
                                            <label for="terms_condition" class="text-small d-inline-block align-top w-85">개인정보 동의하기 <a href="privacy.html" target="_blank" class="text-decoration-underline text-extra-dark-gray">약관 동의서 살펴보기</a></label>
                                        </div>
                                        <div class="col text-center text-md-right">
                                            <input type="hidden" name="redirect" value="">
                                            <button class="btn btn-medium btn-gradient-light-purple-light-orange mb-0 submit" type="submit">메세지 보내기</button>
                                        </div>
                                    </div>
                                    <div class="form-results d-none"></div>
                                </form>
                                <!-- end contact form -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
    
        <!-- start section -->
        <section class="p-0 wow animate__fadeIn">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10">
                        <div class="row justify-content-center">
                            <div class="col-12 col-xl-6 col-lg-7 text-center margin-4-half-rem-bottom md-margin-3-rem-bottom">
                                <span class="alt-font letter-spacing-minus-1-half text-extra-medium d-block margin-5px-bottom">우리 회사로 오는길 이에요.</span>
                                <h4 class="alt-font font-weight-600 text-extra-dark-gray">찾아오시는 길</h4>
                            </div>
                        </div>
                    </div>
                </div>
                
               <div class="row">
                    <div class="col h-600px p-0 md-h-450px xs-h-300px">
                    	<iframe class="w-100 h-100 filter-grayscale-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.545102617774!2d127.12021755120585!3d37.49505977971225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca3f19a33eba3%3A0x2c0d3792005a02cf!2sKorea%20Software%20Industry%20Association!5e0!3m2!1sen!2skr!4v1626022740523!5m2!1sen!2skr"></iframe>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->

	<!-- start footer -->
		<jsp:include page='/WEB-INF/views/layout/footer.jsp' />
	<!-- end footer -->
	<!-- start scroll to top -->
	<a class="scroll-top-arrow" href="javascript:void(0);"><i
		class="feather icon-feather-arrow-up"></i></a>
	<!-- end scroll to top -->
	<!-- javascript -->
	<script type="text/javascript" src="${js}/jquery.min.js"></script>
	<script type="text/javascript" src="${js}/theme-vendors.min.js"></script>
	<script type="text/javascript" src="${js}/main.js"></script>
	<script src="https://kit.fontawesome.com/1cd4016a85.js"
		crossorigin="anonymous"></script>
	<link
		href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
		rel="stylesheet" type="text/css" />
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<!-- style sheets and font icons  -->
	<link rel="stylesheet" type="text/css" href="${css }/font-icons.min.css">
	<link rel="stylesheet" type="text/css" href="${css }/theme-vendors.min.css">
	<link rel="stylesheet" type="text/css" href="${css }/style.css" />
	<link rel="stylesheet" type="text/css" href="${css }/responsive.css" />
	
	<script>
	
		
	
	</script>
</body>