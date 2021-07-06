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
	<!-- start info banner item -->
    <div class="col bg-very-light-pink padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn">
         <div class="row align-items-center">
             <div class="col-12 col-sm-12 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left  margin-100px-top margin-100px-bottom">
                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>건강레시피를 검색해보세요 </span>
                <h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px">검색결과 : <span class="font-weight-600">삼계탕</span></h2>
             </div>
         </div>
    </div>
    <!-- end info banner item -->
    <!-- start section -->
     <div class="row overlap-gap-section">
     <div class="col-12 col-md-12 wow animate__fadeIn" data-wow-delay="0.1s">
        <section class="big-section overlap-height overflow-visible md-no-overlap-section">
            <div class="container">
                <div class="overlap-section">
                    <div class="box-shadow-large bg-white border-radius-6px padding-2-rem-tb padding-1-rem-lr">
                        <div class="row d-flex align-items-center justify-content-center">
                            <div class="col-12 col-lg-auto text-center text-lg-left md-margin-10px-bottom wow animate__fadeIn">
                                <span class="alt-font text-extra-large font-weight-600 text-gradient-tan-geraldine text-uppercase">레시피 로드맵</span>
                            </div>
                            <div class="col-12 col-lg-auto text-center text-lg-right padding-20px-lr lg-padding-10px-lr md-padding-15px-lr md-margin-20px-bottom wow animate__fadeIn">
                                <ul class="nav nav-tabs justify-content-center text-center">
                                <li class="nav-item"><a id="titleView" data-toggle="tab" href="#planning-tab" class="active alt-font font-weight-500 text-uppercase line-height-18px d-block ">
                                <div id="titleText" class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right font-weight-600 xs-margin-10px-bottom">기본설명</div>
                                </a></li> 
                                <li class="nav-item"><a id="videioView" data-toggle="tab" href="#research-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">
                                <div id="videoText" class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom" style="margin-left:-30px">레시피 정보</div>
                                </a></li>
                                <li class="nav-item"><a id="hashtagView" data-toggle="tab" href="#target-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block "> 
                                <div id="hashtagText" class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom" style="margin-left:-30px">해시태그 설정</div>
                                </a></li>
                                <li class="nav-item"><a id="preView" data-toggle="tab" href="#campaign-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block " style="margin-left:-30px"> 
                                <div id="previewText" class="padding-30px-lr d-block d-sm-inline-block align-middle lg-padding-15px-lr">미리보기</div>
                                </a></li> 
                                </ul>
                            </div>
                            <div class="col-12 col-lg-auto text-center text-lg-right">
                                <a href="#classes" class="section-link btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge "><span class="line-height-25px">레시피 등록</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row margin-8-rem-top overlap-gap-section md-margin-6-rem-top ">
                    <div class="col-12 col-md-12 wow animate__fadeIn" data-wow-delay="0.1s">
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
					                            
					                            <li class="grid-item wow animate__fadeIn">
					                                <div class="blog-post">
					                                    <div class="blog-post-image margin-40px-bottom md-margin-35px-bottom xs-margin-25px-bottom">
					                                        <a href="blog-post-layout-01.html"><img src="resources/images/c.jpg" alt=""/></a>
					                                    </div>
					                                    <div class="post-details">
					                                        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray text-dark-orange-hover d-block margin-20px-bottom xs-margin-10px-bottom"><c:out value="${item.name}" /></a>
					                                        <p class="w-95">#해시태그1 #해시태그2 #해시태그3 #해시태그4</p>
					                                    </div>
					                                </div>
					                            </li>
					                            
					                            <!-- end blog item   --> 
					                            
					                        </ul>
					                    </div>
					                </div>
					            </div>
					        </section>
				        <!-- end section -->
										
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
    <!-- test-->
    
    <!-- end test -->
	<!-- start contact form -->
	<div class="modal fade zoom-anim-dialog text-center  padding-4-half-rem-all border-radius-6px sm-padding-2-half-rem-lr border-radius-0px border-color-white" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document" style="width : 1000px; height:1000px">
	    <div class="modal-content">
	      <div class="modal-header border-radius-0px border-color-white">
            <h6 class="modal-title alt-font text-extra-dark-gray letter-spacing-minus-1px " style="margin-left:45px; margin-bottom: 30px; margin-top:30px" id="myModalLabel">어떤 <span class="font-weight-600">건강식</span>을 만들어주실 건가요?</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="text-align:right" id="closeforce"><span aria-hidden="true">&times;</span></button>
	      </div>
	      <div class="modal-body border-radius-0px border-color-white">
	        <div class="row" style="width:100%; margin:0; padding:0" >
			<div class="col-lg-10">
			<input class="medium-input margin-25px-bottom xs-margin-10px-bottom required" type="text" name="foodnamesearch" placeholder="요리 이름을 검색하세요">
			</div>
			<div class="col-lg-2" style="width:100%; margin-top:5px; padding:0">
			<button class="btn btn-small btn-round-edge btn-gradient-tan-geraldine mb-0" id="searchFoodName" type="검색">검색</button>
			</div>
			</div>
			<div class="row">
			<div class="col-lg-12">
			<div class="border-color-medium-gray border-top border-right border-left border-bottom" style="padding:10px">
				 <ul class="list-style-03" id="searchResults"  style="width: 100%; height:500px; overflow: auto">
                </ul>
			</div>
			</div>
	      </div>
	    </div>
	  </div></div></div>
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
	var count = 1;
	var icount = 1;
		$(document)
				.ready(
						
						
						function() {
							
							$.ajax({
								url: "${pageContext.request.contextPath}/taglist",
								type: "post",
								dataType: "text",
								success: function(data) {
									var results = JSON.parse(data);
									if (results.length != 0) {
										for (var i = 0; i < results.length; i++) {
											var category = results[i].title;
											var str = '';
											str += '<a href="#" id="tagSelect" class="btn btn-large  btn-round-edge btn-transparent-black btn-slide-right-bg d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr" style="margin-bottom: 20px">'
												+ results[i].tagname
												+ '<span class="bg-black"></span></a>'
											if(category =="상황별 요리")
											{
												$('#situationFood').append(str);
											}
											else if(category =="나라별 요리")
											{
												$('#nationalFood').append(str);
											}
											else if(category =="자취 요리")
											{
												$('#aloneFood').append(str);
											}
											else if(category =="초보 요리")
											{
												$('#lowFood').append(str);
											}
											else if(category =="내 아이를 위한 요리")
											{
												$('#kidFood').append(str);
											}
											else if(category =="엄마를 위한 요리")
											{
												$('#motherFood').append(str);
											}
											else if(category =="뷰티 요리")
											{
												$('#beutyFood').append(str);
											}
											else if(category =="건강 요리")
											{
												$('#helthyFood').append(str);
											}
										}
									}
								}
									
							});
							
							$(document).on(
									"click",
									"#hashtagView",
									function(e) {
										
										$( '#hashtagText' ).removeClass( 'font-weight-600' );
										$( '#hashtagText' ).addClass( 'font-weight-600' );
										$( '#videoText' ).removeClass( 'font-weight-600' );
										$( '#titleText' ).removeClass( 'font-weight-600' );
										$( '#previewText' ).removeClass( 'font-weight-600' );
										
										$.ajax({
											url : "${pageContext.request.contextPath}/mytag",
											type : "post",
											dataType : "text",
											data : {
												"total_string" : document.getElementsByName("title")[0].value+ " "+ document.getElementsByName("subscript")[0].value +" "+ document.getElementsByName("foodname")[0].value
											}, // 서블릿으로 넘어가는 파라미터값
											success : function(data) {
												var res = JSON.parse(data);
												console.log(res);
												if (res.length != 0) {
													for (var i = 0; i < res.length; i++) {
														var str = '';
														str += '<a href="#" id="tagSelect" class="btn btn-large  btn-round-edge btn-transparent-black btn-slide-right-bg d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr" style="margin-bottom: 20px">'
															+ res[i]
															+ '<span class="bg-black"></span></a>'
														$('#myFood').append(str);
												}}
											}
										});
									}); 
									
									
							$(document).on(
									"click",
									"#preView",
									function(e) {
										
										$( '#hashtagText' ).removeClass( 'font-weight-600' );
										$( '#videoText' ).removeClass( 'font-weight-600' );
										$( '#titleText' ).removeClass( 'font-weight-600' );
										$( '#previewText' ).removeClass( 'font-weight-600' );
										$( '#previewText' ).addClass( 'font-weight-600' );
										
										var title = document.getElementsByName("title")[0].value
										document.getElementById("inputTitle").innerText = title;
										
										var subscript = document.getElementsByName("subscript")[0].value
										document.getElementById("inputSubscript").innerText = subscript;
										
										var foodname = document.getElementsByName("foodname")[0].value
										document.getElementById("inputFoodname").innerText = foodname;
										
										
										var foodtime = document.getElementsByName("foodtime")[0].value
										if(foodtime =='') document.getElementById("inputFoodtime").innerText = '0분 소요예상';
										else  document.getElementById("inputFoodtime").innerText = foodtime +'분 소요예상';
										
										$('#inputmyTag').html($('#myTag').html());
										$('#inputVideo').empty(); 	
										$('#sortable2').empty();
										$('#inputThumbdiv').empty();
										$('#foodIngredientInputinfo').empty();
										
										var foodcategory = $("select[name=foodcategory]").val();
										document.getElementById("inputCategory").innerText = foodcategory;
										const inputFile = document.getElementById("videofile"); 
										const file = inputFile.files[0];
										if(file != null)
										{
											var str = '<video id="videoTagpre" src="" style="margin-bottom:30px" controls muted loop preload></video>'
											$('#inputVideo').append(str); 	
											const video = document.getElementById("videoTagpre"); 
											const videourl = URL.createObjectURL(file); 
											console.log(videourl);
											video.setAttribute("src", videourl); video.play();
										}
										var sk = document.getElementsByName("FOOD_CD")[0].value.replace(/(\s*)/g, "");
										if(sk != '')
										{
											$.ajax({
												url : 'http://openapi.foodsafetykorea.go.kr/api/f172fe9425e4498c9ea2/I2790/json/1/1'+'/FOOD_CD='+sk,  
												type : 'get',
												dataType : 'json',
												success : function(data){
													var kcal = '';
													kcal = data.I2790.row[0].NUTR_CONT1;
													kcal *= document.getElementsByName("howmuch")[0].value;
													var howmuch = document.getElementsByName("howmuch")[0].value
													document.getElementById("inputHowmuch").innerText = '('+kcal+'kcal / '+howmuch + '인분)';
											
													if(howmuch =='') document.getElementById("inputHowmuch").innerText = '(0kcal / 0인분)';
													
											 	/* 	$('#trans').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT1/1987.7*100));
													$('#tansu').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT2/287.9*100));
													$('#danbaek').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT3/72.4*100));
													$('#jibang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT4/49.5*100));
													$('#dang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT5/60.2*100));
													$('#natryum').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT6/3255.0*100));
													$('#coles').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT7/260.4*100));
													$('#pohwa').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT8/16.6*100));  */
													
										 			var farr = ['열량', '탄수화물', '단백질', '지방', '당류','나트륨', '콜레스테롤', '포화지방산']; 
													var iarr = [parseInt(data.I2790.row[0].NUTR_CONT1/1987.7*100), parseInt(data.I2790.row[0].NUTR_CONT2/287.9*100), parseInt(data.I2790.row[0].NUTR_CONT3/72.4*100), parseInt(data.I2790.row[0].NUTR_CONT4/49.5*100), parseInt(data.I2790.row[0].NUTR_CONT5/60.2*100),parseInt(data.I2790.row[0].NUTR_CONT6/3255.0*100), parseInt(data.I2790.row[0].NUTR_CONT7/260.4*100), parseInt(data.I2790.row[0].NUTR_CONT8/16.6*100)]; 
													for(var k = 0; k< 8; k++)
													{
														var ftemp = '';
														ftemp += '<div class="col-lg-3"><div class="chart-percent">'
										                      + '<span class="pie-chart-style-02" data-line-width="6" data-percent="'
										                      + iarr[k]
										                      + '" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">'
										                      + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
										                      + '</div><div class="last-paragraph-no-margin wow animate__fadeIn" data-wow-duration="0.2" style="margin-top: 10px; margin-bottom: 10px;">'
										                      + '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">'
										                      + farr[k]
										                      + '</span></div></div>'
										                $('#foodIngredientInputinfo').append(ftemp);
													} 
													
												}
											}); 
											
										}
										else
										{
											var fn = document.getElementsByName("foodname")[0].value.replace(/(\s*)/g, "");
											$.ajax({
												url : 'http://openapi.foodsafetykorea.go.kr/api/f172fe9425e4498c9ea2/I2790/json/1/1'+'/DESC_KOR='+fn,  
												type : 'get',
												dataType : 'json',
												success : function(data){
													var kcal = '';
													kcal = data.I2790.row[0].NUTR_CONT1;
													kcal *= document.getElementsByName("howmuch")[0].value;
													var howmuch = document.getElementsByName("howmuch")[0].value
													document.getElementById("inputHowmuch").innerText = '('+kcal+'kcal / '+howmuch + '인분)';
											
													if(howmuch =='') document.getElementById("inputHowmuch").innerText = '(0kcal / 0인분)';
													
											 	/* 	$('#trans').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT1/1987.7*100));
													$('#tansu').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT2/287.9*100));
													$('#danbaek').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT3/72.4*100));
													$('#jibang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT4/49.5*100));
													$('#dang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT5/60.2*100));
													$('#natryum').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT6/3255.0*100));
													$('#coles').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT7/260.4*100));
													$('#pohwa').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT8/16.6*100));  */
													
										 			var farr = ['열량', '탄수화물', '단백질', '지방', '당류','나트륨', '콜레스테롤', '포화지방산']; 
													var iarr = [parseInt(data.I2790.row[0].NUTR_CONT1/1987.7*100), parseInt(data.I2790.row[0].NUTR_CONT2/287.9*100), parseInt(data.I2790.row[0].NUTR_CONT3/72.4*100), parseInt(data.I2790.row[0].NUTR_CONT4/49.5*100), parseInt(data.I2790.row[0].NUTR_CONT5/60.2*100),parseInt(data.I2790.row[0].NUTR_CONT6/3255.0*100), parseInt(data.I2790.row[0].NUTR_CONT7/260.4*100), parseInt(data.I2790.row[0].NUTR_CONT8/16.6*100)]; 
													for(var k = 0; k< 8; k++)
													{
														var ftemp = '';
														ftemp += '<div class="col-lg-3"><div class="chart-percent">'
										                      + '<span class="pie-chart-style-02" data-line-width="6" data-percent="'
										                      + iarr[k]
										                      + '" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">'
										                      + '<span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>'
										                      + '</div><div class="last-paragraph-no-margin wow animate__fadeIn" data-wow-duration="0.2" style="margin-top: 10px; margin-bottom: 10px;">'
										                      + '<span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block">'
										                      + farr[k]
										                      + '</span></div></div>'
										                $('#foodIngredientInputinfo').append(ftemp);
													} 
													
												}
											}); 
										}
										
										
										
										var cnttmp = 1;
										$("#sortable").children().each(function(){ 
											var i = $(this).attr("value"); 
											var steptitle = document.getElementsByName("steptitle"+i)[0].value;
								 	    	if(steptitle != ''){
								 	    	console.log(i);
									    	var contents = '';
											contents += '<li style="width:100%">'
													+ '<div class="blog-pos margin-30px-bottom wow animate__fadeIn border-right border-top border-bottom border-left border-color-medium-gray" style="width:100%">'
													+ '<div class="d-flex flex-column flex-md-row align-items-center" style="width:100%">'
													+ '<div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding" style="width:100%; padding:0">'
													+ '<div class="row row-cols-1 row-cols-md-2" style="width:100%;">'
													+ '<div class="col-lg-5">'
													+ '<div id="inputstepimage_container'+ i +'" class="stepimage_size"><img src="" id="stepimg_tmp'+i+'"/></div>'
													+ '</div>'
													+ '<div class="col-lg-7" style="margin-top: 10px; margin-bottom:20px; height:100%; vertical-align:middle">'
													+ '<div id="inputsteptitle'+i+'" class="text-left alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase" style="font-size:15px"></div>'
													+ '<div id="inputstepsubscript'+i+'" class="text-left"></div>'
													+ '</div>'
													+ '</div></div>'
													+ '</div></div></li>'
											$('#sortable2').append(contents);
											
											var steptitle = document.getElementsByName("steptitle"+i)[0].value;
											document.getElementById("inputsteptitle"+i).innerText = '['+cnttmp+'단계] '+steptitle;
											document.getElementById("inputsteptitle"+i).style.fontWeight = "bold";
											
											var stepsubscript = document.getElementsByName("stepsubscript"+i)[0].value;
											document.getElementById("inputstepsubscript"+i).innerText = stepsubscript;
											
											var elem = document.getElementsByName('stepimage'+i); //파일 선택 필드 요소 얻기
											if(elem[0].files[0]){ // 파일 확장자 체크해서 이미지 파일이면
											  let preview = document.querySelector('#stepimg_tmp'+i); // 미리보기 썸네일 <img> 엘리먼트 얻기
											  preview.src = URL.createObjectURL(elem[0].files[0]); //파일 객체에서 이미지 데이터 가져옴.
											}else{
											  console.log('이미지 파일이 아닙니다.');
											}
											cnttmp += 1;
								 	    	}
										});
										
								 	   var elem1 = document.getElementsByName('product_image'); //파일 선택 필드 요소 얻기
										if(elem1[0].files[0]){ // 파일 확장자 체크해서 이미지 파일이면
										  var tmpstr ='<img src="" id="inputThumb" style="margin-top:20px; margin-bottom:20px; text-align:left"/>';
										  $('#inputThumbdiv').append(tmpstr);
										  let preview = document.querySelector('#inputThumb'); // 미리보기 썸네일 <img> 엘리먼트 얻기
										  preview.src = URL.createObjectURL(elem1[0].files[0]); //파일 객체에서 이미지 데이터 가져옴.
										}else{
										  console.log('이미지 파일이 아닙니다.');
										}
									    
									});
									
							$(document).on("change","#stepimage",function(event){
								var reader = new FileReader();
								var cnt = $(this).attr('name').split('stepimage')[1];
								reader.onload = function(event){
									var img = document.createElement("img");
									img.setAttribute("src", event.target.result);
									img.setAttribute("class", "col-lg-12");
									var container_name= "div#stepimage_container" + cnt;
									
									document.querySelector(container_name).appendChild(img);
								};
								reader.readAsDataURL(event.target.files[0]);
							});
							
							
							$(document).on("change","#videofile",function(event){
								var str = '<video id="videoTag" src="" controls muted loop preload></video>'
								$('#video_container').append(str); 
								const inputFile = document.getElementById("videofile"); 
								const video = document.getElementById("videoTag"); 
								const file = inputFile.files[0]; 
								const videourl = URL.createObjectURL(file); 
								video.setAttribute("src", videourl); video.play();
								document.getElementById('video_container').style.margin='30px';
							});
							$(document).on(
									"click",
									"#searchFoodName",
									function(e) {
										console.log("search");
										 $('#searchResults').empty();
										 var foodname = document.getElementsByName("foodnamesearch")[0].value;
										 $("input[name=foodname]").val(foodname);
										 var sk = document.getElementsByName("foodnamesearch")[0].value.replace(/(\s*)/g, "");
										$.ajax({
											url : 'http://openapi.foodsafetykorea.go.kr/api/f172fe9425e4498c9ea2/I2790/json/1/50'+'/DESC_KOR='+sk,  
											type : 'get',
											dataType : 'json',
											success : function(data){
												for(var k = 0; k<data.I2790.row.length; k++)
												{
													var ftemp = '';
													ftemp += '<li id="searchFoodNameResults" name="'+data.I2790.row[k].DESC_KOR+'" data="'+data.I2790.row[k].FOOD_CD+'">'
							                              + '<div class="row margin-5px-left margin-5px-right">'
							                              + '<div class="col-6 text-left">'
							                              + data.I2790.row[k].DESC_KOR
							                              + '</div>'
							                              + '<div class="col-3 text-center">'
							                              + data.I2790.row[k].SERVING_SIZE+'g'
							                              + '</div>'
							                              + '<div class="col-3 text-right">'
							                              + data.I2790.row[k].NUTR_CONT1+'kcal'
							                              + '</div>'
							                              + '</div></li>'
													$('#searchResults').append(ftemp);
												} 
												
											}
										}); 
									});
							
							$(document).on(
									"click",
									"#foodsearchbuttonf",
									function(e) {
										console.log("search");
										 $('#searchResults').empty();
										 var foodname = document.getElementsByName("foodname")[0].value;
										 $("input[name=foodnamesearch]").val(foodname);
										 var sk = document.getElementsByName("foodname")[0].value.replace(/(\s*)/g, "");
										$.ajax({
											url : 'http://openapi.foodsafetykorea.go.kr/api/f172fe9425e4498c9ea2/I2790/json/1/50'+'/DESC_KOR='+sk,  
											type : 'get',
											dataType : 'json',
											success : function(data){
												for(var k = 0; k<data.I2790.row.length; k++)
												{
													var ftemp = '';
													//ftemp += '<button class="btn btn-medium btn-round-edge btn-transparent-black btn-slide-right-bg d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr" id="searchFoodNameResults" name="'+data.I2790.row[k].DESC_KOR+'" style="margin-left:10px; margin-bottom :10px" data ="'+data.I2790.row[k].FOOD_CD +'">'+data.I2790.row[k].DESC_KOR +'</button>'
									                ftemp += '<li id="searchFoodNameResults" name="'+data.I2790.row[k].DESC_KOR+'" data="'+data.I2790.row[k].FOOD_CD+'">'
							                              + '<div class="row margin-5px-left margin-5px-right">'
							                              + '<div class="col-6 text-left">'
							                              + data.I2790.row[k].DESC_KOR
							                              + '</div>'
							                              + '<div class="col-3 text-center">'
							                              + data.I2790.row[k].SERVING_SIZE+'g'
							                              + '</div>'
							                              + '<div class="col-3 text-right">'
							                              + data.I2790.row[k].NUTR_CONT1+'kcal'
							                              + '</div>'
							                              + '</div></li>'
													$('#searchResults').append(ftemp);
												} 
											}
										}); 
									});
							//수정//////////////////////////////////////////////////////////
							$(document).on(
									"click",
									"#searchiFoodName",
									function(e) {
										 $('#searchiResults').empty();
										 var sk = document.getElementsByName("ifoodnamesearch")[0].value.replace(/(\s*)/g, "");
										$.ajax({
											url : 'http://openapi.foodsafetykorea.go.kr/api/f172fe9425e4498c9ea2/I2790/json/1/50'+'/DESC_KOR='+sk,  
											type : 'get',
											dataType : 'json',
											success : function(data){
												var num = $('#myiModal').attr('data');
												for(var k = 0; k<data.I2790.row.length; k++)
												{
													if(data.I2790.row[k].MAKER_NAME !='') 
													{
														continue;
													}
													var ftemp = '';
													ftemp += '<li id="searchiNameResults" iid="searchiNameResults'+num+'" name="'+data.I2790.row[k].DESC_KOR+'" data="'+data.I2790.row[k].FOOD_CD+'">'
							                              + '<div class="row margin-5px-left margin-5px-right">'
							                              + '<div class="col-6 text-left">'
							                              + data.I2790.row[k].DESC_KOR
							                              + '</div>'
							                              + '<div class="col-3 text-center">'
							                              + data.I2790.row[k].SERVING_SIZE+'g'
							                              + '</div>'
							                              + '<div class="col-3 text-right">'
							                              + data.I2790.row[k].NUTR_CONT1+'kcal'
							                              + '</div>'
							                              + '</div></li>'
							                        //$("input[name=FOOD_CD_i'++']").val(data.I2790.row[k].FOOD_CD);
													$('#searchiResults ').append(ftemp);
												} 
												
											}
										}); 
									});
							$(document).on(
									"click",
									"#viewIngredient",
									function(e) {
										var num = $(this).attr('name').split('viewIngredient')[1];
										document.getElementById("myiModal").setAttribute("data", "");
										document.getElementById("myiModal").setAttribute('data', num);
									});
							$(document).on(
									"click",
									"#searchiNameResults",
									function(e) {
										var num = $(this).attr('iid').split('searchiNameResults')[1];
										console.log(num);
										var foodname =$(this).attr('name');
										$("input[name=ingredients"+num+"]").val(foodname);
										console.log($(this).attr('data'));
										 //document.getElementById("FOOD_CD_i"+num).setAttribute("value", $(this).attr('data'));
										$("#closeiforce").trigger("click");
									});
							
							///////////////////////////////////////////////////////////////////////////
							$(document).on(
									"click",
									"#searchFoodNameResults",
									function(e) {
										var foodname =$(this).attr('name');
										 $("input[name=foodname]").val(foodname);
										 document.getElementById("FOOD_CD").setAttribute("value", $(this).attr('data'));
										console.log($(this).attr('name'));
										$("#closeforce").trigger("click");
									});
							
							$(document).on(
									"click",
									"#titleView",
									function(e) {
										$( '#hashtagText' ).removeClass( 'font-weight-600' );
										$( '#videoText' ).removeClass( 'font-weight-600' );
										$( '#titleText' ).removeClass( 'font-weight-600' );
										$( '#previewText' ).removeClass( 'font-weight-600' );
										$( '#titleText' ).addClass( 'font-weight-600' );
										
										/* if($("input[name=title]").val() == '' ||$("input[name=subscript]").val() == ''|| $("input[name=foodname]").val() == '' || $("input[name=howmuch]").val() == '')
										{
											var tmp ='<i class="feather icon-feather-alert-triangle icon-medium align-middle text-fast-blue"></i>'
											$( '#titleText' ).apeend(tmp);
										}
										
										if($("input[name=title]").val()!= '' && $("input[name=subscript]").val() != ''&& $("input[name=foodname]").val() != '' && $("input[name=howmuch]").val() != '')
										{
											$( '#titleText' ).empty();
											$( '#titleText' ).apeend('기본설명');
										} */
										
									});
							
							$(document).on(
									"click",
									"#videioView",
									function(e) {
										$( '#hashtagText' ).removeClass( 'font-weight-600' );
										$( '#videoText' ).removeClass( 'font-weight-600' );
										$( '#titleText' ).removeClass( 'font-weight-600' );
										$( '#previewText' ).removeClass( 'font-weight-600' );
										$( '#videoText' ).addClass( 'font-weight-600' );
									});
							
							$(document).on(
									"click",
									"#removeIngredient",
									function(e) {
										$(this).parent().parent().parent()
												.remove();
									});
							$(document).on(
									"click",
									"#removeProcess",
									function(e) {
										$(this).parent().parent().parent()
												.remove();
									});
							$(document)
									.on(
											"click",
											"#addIngredient",
											function(e) {
												var cnttmp = icount + 1;
												var str = '';
												str += '<li style="width: 100%">'
														+ '<div class="blog-post bg-white box-shadow-medium margin-10px-bottom wow animate__fadeIn" style="width: 100% ; padding: 0;" >'
														+ '<div class="d-flex flex-column flex-md-row align-items-center" style="width: 100%; padding : 0;  margin: 10px 10px -5px 10px">'
														+ '<div class="blog-post-image sm-margin-25px-bottom">'
														+ '<img src="https://placehold.it/1200x840" alt="" /></a>'
														+ '</div>'
														+ '<div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding" style="width: 100%; padding: 0">'
														+ '<div class="row row-cols-1 row-cols-md-2" style="width: 100%">'
														+ '<div class="col-lg-10" stsyle="margin-right:0px; padding:0px">'
														+ '<input class="medium-input bg-white" type="text" name="ingredients'+cnttmp+'" placeholder="사용된 재료를 입력하세요">'
														+ '<input id="FOOD_CD_i'+cnttmp+'" name="FOOD_CD_i'+cnttmp+'" type="hidden" value="">'
														+ '</div>'
														+ '<div id="viewIngredient" name="viewIngredient'+cnttmp+'" class="col-lg-1" style="margin-left:0px; padding:0px; margin-top:3px">'
														+ '<a href="" data-toggle="modal" data-target="#myiModal"  class="btn btn-very-small btn-round-edge btn-gradient-tan-geraldine"><i class="fas fa-plus"></i></a>'
														+ '</div></div></div>'
														+ '<div class="font-weight-500 text-extra-medium text-medium-gray" id="removeIngredient" style="margin-right: 20px; margin-top:-10px">'
														+ '<i class="fas fa-times"></i></div></div></div></li>'
												$('#sortable1').append(str);
												icount += 1;
											});
							
							
							$(document)
									.on(
											"click",
											"#tagSelect",
											function(e) {
												var str = '';
												str += '<a id="selectedTag" href="#" class="btn btn-large btn-dark-gray btn-round-edge d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr" style="margin-right : 10px; margin-bottom : 10px">'
														+ $(this).text()
														+ '</a>'
												$('#myTag').append(str)
											});
							$(document).on("click", "#selectedTag",
									function(e) {
										$(this).remove();
									});
							
							
							
						});
		$("#addItem")
				.click(
						function(e) {
							var contents = '';
							var cnttemp = count + 1;
							count += 1;
							contents += '<li value="'+cnttemp+'" style="width:100%">'
									+ '<div class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn" style="width:100%">'
									+ '<div class="d-flex flex-column flex-md-row align-items-center" style="width:100%">'
									+ '<div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding" style="width:100%; padding:0">'
									+ '<div class="row row-cols-1 row-cols-md-2" style="width:100%;">'
									+ '<div class="col-lg-5">'
									+ '<div id="stepimage_container'+ cnttemp +'" class="stepimage_size"></div>'
									+ '</div>'
									+ '<div class="col-lg-7" style="margin-top:20px">'
									+ '<input class="medium-input bg-white" type="text" name="steptitle'+cnttemp+'" placeholder="단계별 제목을 입력하세요">'
									+ '<input type="file" value="단계별 사진 선택" accept="image/*" name="stepimage'+cnttemp+'" id="stepimage"/>'
									+ '<textarea class="medium-textarea bg-white" rows="6" name="stepsubscript'+cnttemp+'" placeholder="단계별 조리과정 설명을 입력하세요"></textarea>'
									+ '</div>'
									+ '</div></div>'
									+ '<div class="font-weight-500 text-extra-medium text-medium-gray" id="removeProcess" style="margin-right : 15px"><i class="fas fa-times"></i></div></div></div></li>'
							$('#sortable').append(contents);
						});
		
		
		
		
		function submitItem() {
			if (!validateItem()) {
				return;
			}
			alert("등록");
		}
		function setThumbnail(event){
			var reader = new FileReader();
			
			reader.onload = function(event){
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				img.setAttribute("class", "col-lg-6");
				document.querySelector("div#image_container").appendChild(img);
			};
			
			reader.readAsDataURL(event.target.files[0]);
		}
	
		/** 아이템 체크 */
		function validateItem() {
			var items = $("input[type='text'][name='item']");
			if (items.length == 0) {
				alert("작성된 아이템이 없습니다.");
				return false;
			}
			var flag = true;
			for (var i = 0; i < items.length; i++) {
				if ($(items.get(i)).val().trim() == "") {
					flag = false;
					alert("내용을 입력하지 않은 항목이 있습니다.");
					break;
				}
			}
			return flag;
		}
		/** UI 설정 */
		$(function() {
			$("#itemBoxWrap").sortable({
				placeholder : "itemBoxHighlight",
				start : function(event, ui) {
					ui.item.data('start_pos', ui.item.index());
				},
				stop : function(event, ui) {
					var spos = ui.item.data('start_pos');
					var epos = ui.item.index();
					reorder();
				}
			});
			//$("#itemBoxWrap").disableSelection();
			$("#sortable").sortable();
			$("#sortable").disableSelection();
		});
		$(function() {
			$("#itemBoxWrap").sortable({
				placeholder : "itemBoxHighlight",
				start : function(event, ui) {
					ui.item.data('start_pos', ui.item.index());
				},
				stop : function(event, ui) {
					var spos = ui.item.data('start_pos');
					var epos = ui.item.index();
					reorder();
				}
			});
			//$("#itemBoxWrap").disableSelection();
			$("#sortable1").sortable();
			$("#sortable1").disableSelection();
		});
		/** 아이템 순서 조정 */
		function reorder() {
			$(".itemBox").each(function(i, box) {
				$(box).find(".itemNum").html(i + 1);
			});
		}
		
		
	
	</script>
</body>