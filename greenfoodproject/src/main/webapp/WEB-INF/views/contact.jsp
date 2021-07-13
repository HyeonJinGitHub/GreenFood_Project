<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>찍먹부먹–연락처수정</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="ThemeZaa">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1" />
<meta name="description"
	content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
<!-- favicon icon -->
<link rel="shortcut icon" href="resources/images/favicon.png">
<link rel="apple-touch-icon"
	href="resources/images/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="resources/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="resources/images/apple-touch-icon-114x114.png">
<!-- style sheets and font icons  -->
<link rel="stylesheet" type="text/css"
	href="resources/css/font-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/theme-vendors.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/responsive.css" />

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
.box {
	width: 120px;
	height: 120px;
	border-radius: 70%;
	overflow: hidden;
	margin-left: 20px;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>
</head>
<body data-mobile-nav-style="classic">
    <!-- start header -->
   		<jsp:include page='/WEB-INF/views/layout/header.jsp' />
    <!-- end header -->
	<!-- start section -->
	 <section class="big-section bg-light-gray">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center margin-four-bottom">
                        <h6 class="alt-font text-extra-dark-gray font-weight-500">내 정보</h6>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-6 md-margin-15px-bottom">
                        <div class="bg-white padding-40px-all sm-padding-30px-all last-paragraph-no-margin box-shadow-small">
                            <h6 class="text-extra-dark-gray">연락처</h6>
									<div class="swiper-slide box-shadow-small box-shadow-extra-large-hover">
                                    <div class="position-relative bg-white padding-3-rem-all md-padding-4-rem-lr">
                                    <br>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">이메일</span>
                                        <input class="small-input bg-white margin-15px-bottom required w-80 margin-20px-left"  
								type="text" id="nickname" name="nickname" value="${nickname}"
								autocomplete="off">
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">${email }</span>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">휴대전화</span>
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">${phone }</span>
                                    	<button type="button" onclick="move_contact()" class="btn btn-medium btn-fancy btn-dark-gray">수정</button>
                                    </div>
                                </div>
                        </div>
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
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/theme-vendors.min.js"></script>
	<script type="text/javascript" src="resources/js/main.js"></script>

</body>
</html>