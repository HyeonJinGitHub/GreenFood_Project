<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>찍먹부먹–회원가입</title>
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

</head>
<body data-mobile-nav-style="classic">
	<!-- start page title -->
	<section
		class="wow animate__fadeIn bg-light-gray padding-25px-tb page-title-small">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-12 col-xl-8 col-lg-6">
					<h1
						class="alt-font text-extra-dark-gray font-weight-500 no-margin-bottom text-center text-lg-left">My
						account</h1>
				</div>
				<div
					class="col-12 col-xl-4 col-lg-6 breadcrumb justify-content-center justify-content-lg-end text-small alt-font md-margin-10px-top">
					<ul class="xs-text-center">
						<li><a href="index.html">Home</a></li>
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
				<div
					class="col-12 col-xl-5 offset-xl-1 col-md-6 lg-padding-30px-lr md-padding-15px-lr">
					<h6 class="alt-font font-weight-500 text-extra-dark-gray">Register</h6>
					<form name="registerForm" action="${contextPath}/registerAction"
						onsubmit="return registerCheck();" method="POST"
						class="border-all border-color-medium-gray padding-4-rem-all lg-margin-35px-top md-padding-2-half-rem-all">
						<label class="margin-15px-bottom">아이디 <span
							class="required-error text-radical-red">*</span></label> <input
							class="small-input bg-white margin-15px-bottom required"
							type="text" name="uid" id="uid" placeholder="Enter your Account"
							autocomplete="off">
						<div id="id-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">필수 정보입니다.</div>
						<label class="margin-15px-bottom">비밀번호 <span
							class="required-error text-radical-red">*</span></label> <input
							class="small-input bg-white margin-15px-bottom required"
							type="password" name="pwd" id="pwd"
							placeholder="Enter your password" autocomplete="off">
						<div id="pwd1-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">필수 정보입니다.</div>

						<label class="margin-15px-bottom">비밀번호 재확인<span
							class="required-error text-radical-red">*</span></label> <input
							class="small-input bg-white margin-15px-bottom required"
							type="password" name="pwdChk" id="pwdChk"
							placeholder="Enter your password" autocomplete="off">
						<div id="pwd2-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">필수 정보입니다.</div>

						<label class="margin-15px-bottom">이름 <span
							class="required-error text-radical-red">*</span></label> <input
							class="small-input bg-white margin-15px-bottom required"
							type="text" name="name" id="name"
							placeholder="Enter your username" autocomplete="off">
						<div id="name-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">필수 정보입니다.</div>

						<label class="margin-15px-bottom">이메일 <span
							class="required-error text-radical-red">*</span></label> <input
							class="small-input bg-white margin-15px-bottom required"
							type="text" name="uemail" id="uemail"
							placeholder="Enter your email" autocomplete="off">
						<div id="email-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">필수 정보입니다.</div>

						<label class="margin-15px-bottom">휴대전화 <span
							class="required-error text-radical-red">*</span></label> <input
							class="small-input bg-white margin-15px-bottom required"
							type="text" id="phone" name="phone"
							placeholder="Enter your phone-number" autocomplete="off">
						<div id="mobile-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">필수 정보입니다.</div>

						<input type="button" onclick="sendSMS()"
							class="btn btn-medium btn-fancy btn-dark-gray w-100 submit"
							value="인증번호 받기" />
						<div id="verification">
							<label class="margin-15px-bottom">인증번호 입력 <span
								class="required-error text-radical-red">*</span></label> <input
								class="small-input bg-white margin-15px-bottom required"
								type="text" id="phoneck" name="phoneck"
								placeholder="Enter your phone-number" autocomplete="off">
							<div id="phone-ck" style="color:red; font-size:90%;" class="margin-15px-bottom">필수 정보입니다.</div>
						</div>
						<p class="text-small">
							Your personal data will be used to support your experience
							throughout this website, to manage access to your account, and
							for other purposes described in our <a href="#"
								class="text-decoration-underline">privacy policy</a>.
						</p>
						<button class="btn btn-medium btn-fancy btn-dark-gray w-100"
							id="registerButton" type="submit">Register</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- end section  -->

	<!-- start footer -->
	<footer class="footer-dark bg-slate-blue">
		<div
			class="footer-top padding-five-tb lg-padding-eight-tb md-padding-50px-tb">
			<div class="container">
				<div class="row">
					<!-- start footer column -->
					<div
						class="col-12 col-lg-3 col-sm-6 md-margin-40px-bottom xs-margin-25px-bottom">
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Company</span>
						<ul>
							<li><a href="about-us.html">About company</a></li>
							<li><a href="our-services.html">Company services</a></li>
							<li><a href="our-team.html">Job opportunities</a></li>
							<li><a href="contact-us-classic.html">Contact us</a></li>
						</ul>
					</div>
					<!-- end footer column -->
					<!-- start footer column -->
					<div
						class="col-12 col-lg-3 col-sm-6 md-margin-40px-bottom xs-margin-25px-bottom">
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Customer</span>
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
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom xs-margin-10px-bottom">Get
							in touch</span>
						<p class="w-85 margin-15px-bottom">27 Eden walk eden centre,
							Orchard view, Paris, France</p>
						<div>
							<i
								class="feather icon-feather-phone-call icon-very-small margin-10px-right text-white"></i>+1
							234 567 8910
						</div>
						<div>
							<i
								class="feather icon-feather-mail icon-very-small margin-10px-right text-white"></i><a
								href="#">info@yourdomain.com</a>
						</div>
					</div>
					<!-- end footer column -->
					<!-- start footer column -->
					<div class="col-12 col-lg-3 col-sm-6">
						<span
							class="alt-font font-weight-500 d-block text-white margin-20px-bottom">Follow
							us on Instagram</span>
						<div class="w-100 d-inline-block margin-10px-top">
							<ul
								class="instafeed-grid instafeed-wrapper grid grid-3col xl-grid-3col lg-grid-3col md-grid-3col sm-grid-3col xs-grid-3col gutter-small"
								data-total="3">
								<li class="grid-item"><figure>
										<a href="#" data-href="{{link}}" target="_blank"><img
											src="#" data-src="{{image}}" class="insta-image" alt="" /><span
											class="insta-counts"><i class="fab fa-instagram"></i>{{likes}}</span></a>
									</figure></li>
							</ul>
							<a
								class="alt-font text-extra-small text-uppercase font-weight-500 margin-20px-top d-inline-block"
								href="https://www.instagram.com/" target="_blank"><i
								class="fab fa-instagram icon-extra-small align-middle margin-10px-right text-gradient-light-purple-light-orange"></i><span
								class="d-inline-block align-middle">Follow instagram</span></a>
						</div>
					</div>
					<!-- end footer column -->
				</div>
			</div>
		</div>
		<div
			class="footer-bottom padding-40px-tb border-top border-color-white-transparent">
			<div class="container">
				<div class="row align-items-center">
					<div
						class="col-12 col-md-3 text-center text-md-left sm-margin-20px-bottom">
						<a href="index.html" class="footer-logo"><img
							src="resources/images/logo-white.png"
							data-at2x="resources/images/logo-white@2x.png" alt=""></a>
					</div>
					<div
						class="col-12 col-md-6 text-center last-paragraph-no-margin sm-margin-20px-bottom">
						<p>
							&copy; 2021 Litho is Proudly Powered by <a
								href="https://www.themezaa.com/" target="_blank">ThemeZaa</a>
						</p>
					</div>
					<div class="col-12 col-md-3 text-center text-md-right">
						<div class="social-icon-style-12">
							<ul class="extra-small-icon light">
								<li><a class="facebook" href="https://www.facebook.com/"
									target="_blank"><i class="fab fa-facebook-f"></i></a></li>
								<li><a class="dribbble" href="http://www.dribbble.com"
									target="_blank"><i class="fab fa-dribbble"></i></a></li>
								<li><a class="twitter" href="http://www.twitter.com"
									target="_blank"><i class="fab fa-twitter"></i></a></li>
								<li><a class="instagram" href="http://www.instagram.com"
									target="_blank"><i class="fab fa-instagram"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<!-- start scroll to top -->
	<a class="scroll-top-arrow" href="javascript:void(0);"><i
		class="feather icon-feather-arrow-up"></i></a>
	<!-- end scroll to top -->

	<!-- javascript -->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/theme-vendors.min.js"></script>
	<script type="text/javascript" src="resources/js/main.js"></script>

	<script>
       	$("#id-ck").css("display", "none");
       	$("#pwd1-ck").css("display", "none");
       	$("#pwd2-ck").css("display", "none");
       	$("#name-ck").css("display", "none");
       	$("#email-ck").css("display", "none");
       	$("#verification").css("display", "none");
       	$("#phone-ck").css("display", "none");
       	$("#mobile-ck").css("display", "none");
       	
       	var verification_num = "";
       	var id_check = false;
       	var pwd1_check = false;
       	var pwd2_check = false;
       	var name_check = false;
       	var email_check = false;
       	var phone_check = false;
       	var verification_check = false;
       	
		function sendSMS() {
			var phone = $("#phone").val();
			if(phone == "")
				return;
			if(phone_check == false) {
				$("#mobile-ck").text("입력한 번호를 확인해주세요.").css("color", "red");
				return;
			}
			console.log("문자를 전송합니다." + phone + " 입니다!!");
			verification_check = false;
			$.ajax({
				async: false,
				type: 'POST',
				data : {"phone": phone},
				url : '/greenfood/check/sendSMS.do',
				success : function(data) {
					if(data != "") {
						verification_num = data;
						$("#verification").css("display", "block");
						$("#phone-ck").css("display", "block");
						$("#phone-ck").text("인증번호를 입력해주세요.").css("color", "red");
					} else {
						$("#phone-ck").css("display", "block");
						$("#phone-ck").text("인증번호 받기 실패, 인증번호 받기를 다시 눌러주세요.").css("color", "red");
					}
				},
				error : function(error) {
					alert('error : ' + JSON.stringify(error));
				}
			});
		}
		$("#phoneck").keyup(function() {
	  		var check_num = $(this).val();
	  		verification_check = false;
	  		if(check_num == "") {
	  			$("#phone-ck").text("필수 정보입니다.").css("color", "red");
	  		} else {
	  			if(check_num == verification_num) {
	  				$("#phone-ck").text("인증이 성공했습니다.").css("color", "green");
	  				verification_check = true;
	  			} else {
	  				$("#phone-ck").text("인증번호를 다시 확인해주세요.").css("color", "red");
	  			}
	  		}
	  	});
		
		
		$("#uid").keyup(function() {
			var id = $("#uid").val();
			id_check = false;
			$.ajax({
				async: false,
				type: 'POST',
				data : {"id": id},
				url : '/greenfood/check/idcheck',
				success : function(data) {
					$("#id-ck").css("display", "block");
					if(data == 2) {
						$("#id-ck").text("필수 정보입니다.").css("color", "red");
						
	  				} else if(data == 1) {
	  					$("#id-ck").text("이미 사용중인 아이디입니다.").css("color", "red");
						
	  				} else if(data == 0) {
	  					$("#id-ck").text("멋진 아이디네요!").css("color", "green");
	  					id_check = true;
	  				}
				},
				error : function(error) {
					alert('error : ' + JSON.stringify(error));
				}
			});
		});
		
		$("#pwd").keyup(function(){
			$("#pwd1-ck").css("display", "block");
			pwd1_check = false;
			 var pw = $(this).val()
			 var num = pw.search(/[0-9]/g);
			 var eng = pw.search(/[a-z]/ig);
			 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			 if(pw == "") {
				 $("#pwd1-ck").text("필수 정보입니다.").css("color", "red");
			 }
			 else if(pw.length < 8 || pw.length > 16){
				 $("#pwd1-ck").text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.").css("color", "red");
			 } else if(pw.search(/\s/) != -1){
				 $("#pwd1-ck").text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.").css("color", "red");
			 }else if(num < 0 || eng < 0 || spe < 0 ){
				 $("#pwd1-ck").text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.").css("color", "red");
			 } else {
				 $("#pwd1-ck").text("안전한 비밀번호입니다.").css("color", "green");
				 pwd1_check = true;
			 }
	  	});
		
	  	$("#pwdChk").keyup(function(){
	  		$("#pwd2-ck").css("display", "block");
	  		pwd2_check = false;
	  		var pw = $(this).val()
	  		if(pw == "") {
	  			 $("#pwd2-ck").text("필수 정보입니다.").css("color", "red");
	  		}
	  		else if($(this).val()===$("#pwd").val()){
	  			$("#pwd2-ck").text("비밀번호가 일치합니다.").css("color", "green");
	  			pwd2_check = true;
	  		} else{
	  			$("#pwd2-ck").text("비밀번호가 일치하지 않습니다.").css("color", "red");
	  		}
	  	});
	  	
	  	$("#name").keyup(function() {
	  		name_check = false;
	  		$("#name-ck").css("display", "block");
	  		var name = $(this).val()
	  		if(name == "") {
	  			$("#name-ck").text("필수 정보입니다.").css("color", "red");
	  		} else {
	  			$("#name-ck").text("멋진 이름이네요!").css("color", "green");
	  			name_check = true;
	  		}
	  	});
	  	
	  	$("#uemail").keyup(function() {
	  		$("#email-ck").css("display", "block");
	  		email_check = false;
	  		var email = $(this).val()
	  		if(email == "") {
	  			$("#email-ck").text("필수 정보입니다.").css("color", "red");
	  		} else {
	  			if(CheckEmail(email)) {
	  				$.ajax({
	  					async: false,
	  					type: 'POST',
	  					data : {"email": email},
	  					url : '/greenfood/check/emailcheck',
	  					success : function(data) {
	  						if(data == 2) {
	  							$("#email-ck").text("필수 정보입니다.").css("color", "red");
	  		  				} else if(data == 1) {
	  		  					$("#email-ck").text("이미 사용중인 이메일입니다.").css("color", "red");
	  		  				} else if(data == 0) {
		  		  				$("#email-ck").text("사용 가능한 이메일입니다.").css("color", "green");
		  		  				email_check = true;
	  		  				}
	  					},
	  					error : function(error) {
	  						alert('error : ' + JSON.stringify(error));
	  					}
	  				});
	  			} else {
	  				$("#email-ck").text("이메일 주소를 다시 확인해주세요.").css("color", "red");
	  			} 
	  		}
	  	});
	  	
	  	function CheckEmail(str)
	  	{                                                 
	  	     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	  	     if(!reg_email.test(str)) {                            
	  	          return false;         
	  	     }                            
	  	     else {                       
	  	          return true;         
	  	     }                            
	  	}       
	  	
	  	$(function(){
	  	    $("#phone").on('keydown', function(e) {
		  	    var trans_num = $(this).val().replace(/-/gi,'');
		  		var k = e.keyCode;
		  		$("#mobile-ck").css("display", "block");
		  		$("#mobile-ck").text("필수 정보입니다.").css("color", "red");
		  		phone_check = false;
		  		if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
		  		{
		  	  	    e.preventDefault();
		  		}
		  	    }).on('blur', function(){ 
		  	        if($(this).val() == '') {
		  	        	return;
		  	        }
		  	        var trans_num = $(this).val().replace(/-/gi,'');
		  	        if(trans_num != null && trans_num != '')
		  	        {
		  	            if(trans_num.length==11 || trans_num.length==10) 
		  	            {   
		  	                var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
		  	                if(regExp_ctn.test(trans_num))
		  	                {
		  	                	trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
		  	                	$(this).val(trans_num);
		  	                	var phone = $(this).val();
		  	                	$.ajax({
		  		  					async: false,
		  		  					type: 'POST',
		  		  					data : {"phone": phone},
		  		  					url : '/greenfood/check/phonecheck',
		  		  					success : function(data) {
		  		  						if(data == 2) {
		  		  							$("#mobile-ck").text("필수 정보입니다.").css("color", "red");
		  		  		  				} else if(data == 1) {
		  		  		  					$("#mobile-ck").text("이미 사용중인 번호입니다.").css("color", "red");
		  		  		  				} else if(data == 0) {
		  			  		  				$("#mobile-ck").text("사용 가능한 번호입니다.").css("color", "green");
		  			  		  				phone_check = true;
		  		  		  				}
		  		  					},
		  		  					error : function(error) {
		  		  						alert('error : ' + JSON.stringify(error));
		  		  					}
		  		  				});
		  	                }
		  	                else
		  	                {
		  	                    $(this).val("");
		  	                    $(this).focus();
		  	                }
		  	            }
		  	            else 
		  	            {
		  	                $(this).val("");
		  	                $(this).focus();
		  	            }
		  	      }
		  	  });  
	  	}); 
	  	
	  	function registerCheck() {
	  		$("#id-ck").css("display", "block");
        	$("#pwd1-ck").css("display", "block");
        	$("#pwd2-ck").css("display", "block");
        	$("#name-ck").css("display", "block");
        	$("#email-ck").css("display", "block");
        	$("#verification").css("display", "block");
        	$("#phone-ck").css("display", "block");
        	$("#mobile-ck").css("display", "block");
        	
	 		if(id_check == false) {
	 			$("#id-ck").text("필수 정보입니다.").css("color", "red");
	 			$("#uid").val("");
	 			return false;
	 		}
	 		if(pwd1_check == false) {
	 			$("#pwd1-ck").text("필수 정보입니다.").css("color", "red");
	 			$("#pwd").val("");
	 			return false;
	 		}
	 		if(pwd2_check == false) {
	 			$("#pwd2-ck").text("필수 정보입니다.").css("color", "red");
	 			$("#pwdChk").val("");
	 			return false;
	 		}
	 		if(name_check == false) {
	 			$("#name-ck").text("필수 정보입니다.").css("color", "red");
	 			$("#name").val("");
	 			return false;
	 		}
	 		if(email_check == false) {
	 			$("#email-ck").text("필수 정보입니다.").css("color", "red");
	 			$("#uemail").val("");
	 			return false;
	 		}
	 		if(phone_check == false) {
	 			$("#mobile-ck").text("필수 정보입니다.").css("color", "red");
	 			$("#phone").val("");
	 			return false;
	 		}
	 		if(verification_check == false) {
	 			$("#phone-ck").text("필수 정보입니다.").css("color", "red");
	 			$("#phoneck").val("");
	 			return false;
	 		}
	 		return true; 
	 	}
	  </script>

</body>
</html>