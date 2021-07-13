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
<title>건강식 상품등록</title>
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

#load {
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
}
</style>
<body data-mobile-nav-style="classic">
<div id="load">
    <img src="${images}/Iphone.gif" alt="loading">
</div>
	<!-- start header -->
        	<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
	<!-- start info banner item -->
    <div class="col bg-very-light-pink padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn">
         <div class="row align-items-center">
             <div class="col-12 col-sm-12 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left  margin-100px-top ">
                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>건강식 상품을 등록해주세요!</span>
                <h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px">건강식 <span class="font-weight-600">상품등록</span></h2>
             </div>
         </div>
    </div>
    <!-- end info banner item -->
    <!-- start section -->
     <div class="row overlap-gap-section">
     <div class="col-12 col-md-12 wow animate__fadeIn" data-wow-delay="0.1s">
        <section class="big-section overflow-visible md-no-overlap-section">
            <div class="container">
                <div class="row" style="margin-top:-100px">
                    <div class="col-12 col-md-12 wow animate__fadeIn" data-wow-delay="0.1s">
										<div class="tab-content">
											<!-- start tab item -->
											<div id="planning-tab" class="tab-pane fade active show">
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">01</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">상품명</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-9 sm-margin-25px-bottom">
														<input
															class="medium-input bg-white margin-25px-bottom required"
															type="text" name="title" placeholder="상품명을 입력하세요" required>
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">02</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">가격</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-5 sm-margin-25px-bottom">
														<input
															class="medium-input bg-white margin-25px-bottom required"
															type="text" name="price" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="가격을 입력하세요">
													</div>
													<div class="col-lg-5 sm-margin-25px-bottom" style="text-align:left; margin-top:15px">원
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">03</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">SKU</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-5 sm-margin-25px-bottom">
														<input
															class="medium-input bg-white margin-25px-bottom required"
															type="text" name="sku" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="6" minlength="6" placeholder="SKU(고유번호)를 입력하세요">
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-3 sm-margin-25px-bottom" style="margin-top:10px;">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">04</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">카테고리</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-9 sm-margin-25px-bottom" style=" margin-left:-100px">
														<input
															class="medium-input bg-white margin-25px-bottom required"
															type="text" name="category" placeholder="음식 카테고리를 입력하세요">
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-3 sm-margin-25px-bottom" style="margin-top:10px">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">05</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">상품사진</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-9 sm-margin-25px-bottom" id="foodInfo"
														style="width: 100%; margin-left:-100px">
														<div class="row">
															<div class="col-lg-12 sm-margin-25px-bottom">
																<div class="row">
																	<div class="col-lg-12 sm-margin-25px-bottom">
																		<div class="form-group" id="photoGroup">
																			<input type="file" class="" 
																			name="product_image1" id="product_image" accept="image/*" value="1" required>
																			<div id="image_container1" style="margin-bottom:30px"></div>
																			<input type="file" class="" 
																			name="product_image2" id="product_image" accept="image/*" value="2" required>
																			<div id="image_container2" style="margin-bottom:30px"></div>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-lg-12" style="text-align:right; margin-bottom:20px">
																		<a id="addPhoto" class="btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge margin-10px-bottom">사진 추가</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-3 sm-margin-25px-bottom" style="margin-top:10px">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">06</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">한줄설명</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-9 sm-margin-25px-bottom" style="margin-left:-100px">
														<input
															class="medium-input bg-white margin-25px-bottom required"
															type="text" name="subscription" placeholder="상품설명을 입력하세요" required>
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-3 sm-margin-25px-bottom" style="margin-top:10px">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" data-wow-delay="0.2s">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">07</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">상세설명</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-9 sm-margin-25px-bottom" style="margin-left:-100px">
														<textarea class="medium-textarea bg-white"
																								rows="6" name="detailsubscription"
																								placeholder="상품에 관한 상세설명을 입력하세요"></textarea>
													</div>
												</div>
											<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-12 sm-margin-25px-bottom" style="margin-top:10px">
														<div class="col md-margin-40px-bottom wow animate__fadeIn" style="text-align:center" data-wow-delay="0.2s">
									                     	<a id="productPost" class="btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge margin-10px-bottom">상품 등록</a>
									                    </div>
													</div>
												</div>
											</div>	
										</div>
                    </div>
                </div>
            </div>
        </section>
        </div>
        </div>
        <!-- end section -->
    <!-- test-->
    
    <!-- end test -->
	<!-- start footer -->
	<!-- start contact form -->
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
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<script>
	var pcount = 3;
	$(window).load(function() {
	    $('#load').hide();
	});
	 
	$(document).on(
			"click",
			"#productPost",
			function(e) {
				console.log("상품등록!!");
				 var title = document.getElementsByName("title")[0].value;
				 var price = document.getElementsByName("price")[0].value;
				 var sku = document.getElementsByName("sku")[0].value;
				 var category = document.getElementsByName("category")[0].value;
				 var subscription = document.getElementsByName("subscription")[0].value;
				 var detailsubscription = document.getElementsByName("detailsubscription")[0].value;
				 var product_image1 = document.getElementsByName("product_image1")[0].value;
				 var product_image2 = document.getElementsByName("product_image2")[0].value;
				 
				 
				 
				 if(title == '' || price == '' || sku == '' || category == '' || subscription ==''|| detailsubscription=='' ||product_image2 == '' || product_image1 =='')
				{
						Swal.fire({
							  title: '앗!',
							  text: '모든 입력창이 채워졌는지 확인해주세요',
							  icon: 'error',
							  confirmButtonText: '확인'
							})
				}
				 else
				{
					 var objParams = {
							   "title" :title,
							   "price" :price,
							   "sku" : sku,
							   "category" : category,
							   "subscription" : subscription,
							   "detailsubscription" : detailsubscription
				           };
					   
					   $.ajax({
				           url         :   "${pageContext.request.contextPath}/postProduct",
				           type        :   "post",
				           dataType    :   "json",
				           data        :   objParams,
				           success     :   function(retVal){
				        	   setimgfunc(retVal);
				           }
				       });
				}
				 
				 
			});

	function setimgfunc(pno){
		var formData = new FormData();
       $("#photoGroup").children().each(function(){ 
    	   var click_id = $(this).attr('id');
    	   if(click_id == 'product_image')
    		{
    		   var i = $(this).attr("value"); 
	           	console.log(i);
	           	console.log($("input[name=product_image"+i+"]")[0].files[0]);
	           	formData.append("product_image", $("input[name=product_image"+i+"]")[0].files[0]);   
    		}
        	
        });
       
		
		 $.ajax({
			url : "${pageContext.request.contextPath}/setimgfunc",
			type : "post",
			data : formData,
			contentType : false,
			processData : false,
			 success     :   function(retVal){
				 location.replace("${pageContext.request.contextPath}/product");
	           },
	           error	:	function(retVal){
	        	   location.replace("${pageContext.request.contextPath}/product");
	           }
		});
	}
	
	$(document).on("change","#product_image",function(event){
		var reader = new FileReader();
		var cnt = $(this).attr('name').split('product_image')[1];
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("class", "col-lg-12");
			var container_name= "div#image_container" + cnt;
			
			document.querySelector(container_name).appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	});
	
	 $(document).ready(function() {
		$(document)
		.on(
				"click",
				"#addPhoto",
				function(e) {
					console.log("add photo");
					var str = '';
					str += '<input type="file" class="" name="product_image'+pcount+'" id="product_image" accept="image/*" value="'+pcount+'" required>'
							+ '<div id="image_container'+pcount+'" style="margin-bottom:30px"></div>'
					$('#photoGroup').append(str);
					pcount += 1;
					
				});
	 });

	
	</script>
</body>
</html>
