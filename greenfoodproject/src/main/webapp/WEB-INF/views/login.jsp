<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Vecipe | 로그인</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="ThemeZaa">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1" />
<meta name="description"
	content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
<!-- favicon icon -->
<link rel="shortcut icon" href="resources/images/favicon.png">
<link rel="apple-touch-icon" href="resources/images/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="resources/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="resources/images/apple-touch-icon-114x114.png">
<!-- style sheets and font icons  -->
<link rel="stylesheet" type="text/css" href="resources/css/font-icons.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/theme-vendors.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<link rel="stylesheet" type="text/css" href="resources/css/responsive.css" />
</head>
 <body data-mobile-nav-style="classic">
    <!-- start header -->
  		<jsp:include page='/WEB-INF/views/layout/header.jsp' />
    <!-- end header -->
        <!-- start page title -->
        <section class="wow animate__fadeIn bg-light-gray padding-25px-tb page-title-small">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-12 col-xl-8 col-lg-6">
                        <h1 class="alt-font text-extra-dark-gray font-weight-500 no-margin-bottom text-center text-lg-left">My account</h1>
                    </div>
                    <div class="col-12 col-xl-4 col-lg-6 breadcrumb justify-content-center justify-content-lg-end text-small alt-font md-margin-10px-top">
                        <ul class="xs-text-center">
                            <li><a href="${contextPath}/">Home</a></li>
                            <li>My account</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- end page title -->
        <!-- start section -->
        <section class="wow animate__fadeIn">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-xl-5 col-md-6 lg-padding-30px-lr md-padding-15px-lr sm-margin-40px-bottom">
                        <h6 class="alt-font font-weight-500 text-extra-dark-gray">로그인</h6>
                        <form action="${contextPath}/" method="POST" class="bg-light-gray padding-4-rem-all lg-margin-35px-top md-padding-2-half-rem-all" onsubmit="return loginCheck();">
                            <label class="margin-15px-bottom">아이디 <span class="required-error text-radical-red">*</span></label>
                            <input class="small-input bg-white margin-20px-bottom required" type="text" name="uid" id="uid" placeholder="Enter your ID">
                            <div id="id-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">아이디를 입력해주세요.</div>
                            <label class="margin-15px-bottom">비밀번호 <span class="required-error text-radical-red">*</span></label>
                            <input class="small-input bg-white margin-20px-bottom required" type="password" name="pwd" id="pwd" placeholder="Enter your password">
                            <div id="pwd-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">비밀번호를 입력해주세요.</div>
                            <label class="margin-25px-bottom">
                                <input class="d-inline-block align-middle w-auto mb-0 margin-5px-right" type="checkbox" name="account">
                                <span class="d-inline-block align-middle">Remember me</span> 
                            </label>
                            <div id="login-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.</div>
                            <button class="btn btn-medium btn-fancy btn-dark-gray w-100" type="submit">Login</button>
                            <p class="text-right margin-20px-top mb-0"><a href="#" class="btn btn-link  btn-medium text-extra-dark-gray">Lost your password?</a></p>
                            <a href="/greenfood/auth/google"><img src="resources/images/btn_google_signin_dark_normal_web.png"></a>
                            <br><br>
                            <a href="/greenfood/auth/naver"><img src="resources/images/btnG_all.png"></a>
                        </form>
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
        	$("#login-ck").css("display", "none");
        	$("#id-ck").css("display", "none");
        	$("#pwd-ck").css("display", "none");
        	function loginCheck() {
        		var id = $("#uid").val();
        		var pwd = $("#pwd").val();
        		var check = false;
        		if(id == "") {
        			$("#login-ck").css("display", "none");
        			$("#pwd-ck").css("display", "none");
        			$("#id-ck").css("display", "block");
        			return false;
        		}
        		if(pwd == "") {
        			$("#id-ck").css("display", "none");
        			$("#login-ck").css("display", "none");
        			$("#pwd-ck").css("display", "block");
        			return false;
        		}
        		$.ajax({
    				async: false,
    				type: 'POST',
    				data : {"id": id, "pwd" : pwd},
    				url : '/greenfood/check/logincheck',
    				success : function(data) {
    					if(data == true) {
    						check = true;
    	  				} else {
    	  		        	$("#id-ck").css("display", "none");
    	  		        	$("#pwd-ck").css("display", "none");
    	  					$("#login-ck").css("display", "block");
    	  					$("#pwd").val("");
    	  				} 
    				},
    				error : function(error) {
    					alert('error : ' + JSON.stringify(error));
    				}
    			});
        		if(check == true)
        			return true;
        		return false;
        	}
        	
        	$("#uid").keyup(function() {
    	  		$("#id-ck").css("display", "none");
    	  	});
        	$("#pwd").keyup(function() {
    	  		$("#pwd-ck").css("display", "none");
    	  	});
        </script>
    </body>
</html>