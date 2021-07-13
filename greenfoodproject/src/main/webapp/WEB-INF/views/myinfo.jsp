<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <title>찍먹부먹–내정보</title>
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
        
      	<style>
	      	.box {
			    width: 120px;
			    height: 120px; 
			    border-radius: 70%;
			    overflow: hidden;
			    margin-left : 20px;
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
                <div class="row">
                    <div class="col-12 col-lg-6 margin-15px-bottom">
                        <div class="bg-white padding-40px-all sm-padding-30px-all last-paragraph-no-margin box-shadow-small">
                            <h6 class="text-extra-dark-gray">${name } 님의 프로필</h6>
									<div class="swiper-slide box-shadow-small box-shadow-extra-large-hover">
									<br>
									<div class="box" >
									 <a href="${contextPath}/profile"><img class="profile" id="profile_img" src="${profile_img }" alt="" /></a>
									</div>
                                    <div class="position-relative bg-white padding-3-rem-all md-padding-4-rem-lr">
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">닉네임</span>
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block" >${nickname }</span>
                                        <form action="${contextPath}/profile">
                                    	<button type="submit" class="btn btn-medium btn-fancy btn-dark-gray">수정</button>
                                    	</form>
                                    </div>
                                </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 margin-15px-bottom">
                        <div class="bg-white padding-40px-all sm-padding-30px-all last-paragraph-no-margin box-shadow-small">
                            <h6 class="text-extra-dark-gray">연락처</h6>
									<div class="swiper-slide box-shadow-small box-shadow-extra-large-hover">
                                    <div class="position-relative bg-white padding-3-rem-all md-padding-4-rem-lr">
                                    <br>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">이메일</span>
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">${email }</span>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">휴대전화</span>
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">${phone }</span>
                                    	<button type="button" onclick="move_contact()" class="btn btn-medium btn-fancy btn-dark-gray">수정</button>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-12 col-lg-6 margin-15px-bottom">
                       <div class="bg-white padding-40px-all sm-padding-30px-all last-paragraph-no-margin box-shadow-small">
                            <h6 class="text-extra-dark-gray">비밀번호</h6>
							 		<div class="swiper-slide box-shadow-small box-shadow-extra-large-hover">
                                    <div class="position-relative bg-white padding-3-rem-all md-padding-4-rem-lr">
                                    <br>
                                        <span class="text-medium text-uppercase d-block margin-5px-bottom">로그인 시 사용하는 비밀번호를 변경할 수 있습니다. 주기적인 비밀번호 변경을 통해 개인정보를 안전하게 보호하세요.</span>
                                        <span class="alt-font font-weight-500 d-block margin-30px-bottom line-height-24px text-extra-dark-gray text-neon-orange-hover d-block">현재 아이디 : ${id }</span>
                                        <form action="#">
                                    	<button type="submit" class="btn btn-medium btn-fancy btn-dark-gray">수정</button>
                                    	</form>
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
        <a class="scroll-top-arrow" href="javascript:void(0);"><i class="feather icon-feather-arrow-up"></i></a>
        <!-- end scroll to top -->
        <!-- javascript -->
        <script type="text/javascript" src="resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="resources/js/theme-vendors.min.js"></script>
        <script type="text/javascript" src="resources/js/main.js"></script>
        
        <script>
        	function move_contact() {
        		location.href="${contextPath}/contact";
        	}
        	
       	 
        	
        </script>
    </body>
</html>