<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="images" value='/resources/images' />
<c:url var="css" value='/resources/css' />
<c:url var="email-templates" value='/resources/email-templates' />
<c:url var="js" value='/resources/js' />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Litho – The Multipurpose HTML5 Template</title>
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

	<!-- end header -->
	<!-- start info banner item -->
    <div class="col bg-very-light-pink padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn">
         <div class="row align-items-center">
             <div class="col-12 col-sm-12 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left  margin-100px-top margin-100px-bottom">
                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>나만의 건강레시피를 공유해보세요!</span>
                <h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px">나만의 <span class="font-weight-600">건강레시피</span></h2>
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
                                <input type="hidden" id="nowPage" name="nowPage" value="">
                            </div>
                            <div class="col-12 col-lg-auto text-center text-lg-right padding-20px-lr lg-padding-10px-lr md-padding-15px-lr md-margin-20px-bottom wow animate__fadeIn">
                                <ul class="nav nav-tabs justify-content-center text-center">
                                <li class="nav-item"><a id="titleView" data-toggle="tab" href="#planning-tab" class="active alt-font font-weight-500 text-uppercase line-height-18px d-block ">
                                <div id="titleText" class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right font-weight-600 xs-margin-10px-bottom">기본설명</div>
                                </a></li> 
                                <li class="nav-item"><a id="videioView" data-toggle="tab" href="#research-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">
                                <div id="videoText" class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom" style="margin-left:-30px">레시피 정보</div>
                                </a></li>
                                <li class="nav-item"><a id="hashtagView" data-toggle="tab" href="#target-tab" class=" alt-font font-weight-500 text-uppercase line-height-18px d-block "> 
                                <div id="hashtagText" class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom" style="margin-left:-30px">해시태그 설정</div>
                                </a></li>
                                <li class="nav-item"><a id="preView" data-toggle="tab" href="#campaign-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block " style="margin-left:-30px"> 
                                <div id="previewText" class="padding-30px-lr d-block d-sm-inline-block align-middle lg-padding-15px-lr">미리보기</div>
                                </a></li> 
                                </ul>
                            </div>
                            <div class="col-12 col-lg-auto text-center text-lg-right">
                                <button class="section-link btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge " onclick="submitProcess()"><span class="line-height-25px">레시피 등록</span></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row margin-8-rem-top overlap-gap-section md-margin-6-rem-top ">
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
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">제목</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<input
															class="medium-input bg-white margin-25px-bottom required"
															type="text" name="title" placeholder="제목을 입력하세요" required>
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
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">한줄설명</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<input
															class="medium-input bg-white margin-25px-bottom required"
															type="text" name="subscript" placeholder="설명을 입력하세요">
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
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">음식정보</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom" id="foodInfo"
														style="width: 100%">
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>음식이름</span>
															</div>
															<div class="col-lg-5 sm-margin-25px-bottom">
																<input
																	class="medium-input bg-white margin-25px-bottom required"
																	type="text" name="foodname" placeholder="음식 이름을 입력하세요" required>
															</div>
															<div class="col-lg-2" style="margin-left:-20px;padding 0; margin-top:-15px">
																<button type="button" class="btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge" data-toggle="modal" data-target="#myModal" style="margin:15px; padding:15px;" id="foodsearchbuttonf">검색</button>
																 <input type="hidden" id="FOOD_CD" name="FOOD_CD" value="">
															</div>
															<div class="col-lg-2 sm-margin-25px-bottom">
																<input
																	class="medium-input bg-white margin-25px-bottom required"
																	type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="howmuch" placeholder="음식분량" required>
															</div>
															<div class="col-lg-1" style="margin-top:10px; margin-left:-10px">인분
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:15px">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>재료정보</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom">
																<p class="alt-font font-weight-500 text-middle-gray d-block margin-15px-bottom text-uppercase margin-15px-top text-right">일반종이컵 (1컵) : 185~195g, 한 큰술 : 6~8g</p>
															
																<ul id="sortable1"
																	class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray">
																	<li style="width: 100%" value="1">
																		<!-- start blog item -->
																		<div
																			class="blog-post bg-white box-shadow-medium margin-10px-bottom wow animate__fadeIn"
																			style="width: 100%; padding: 0;">
																			<div
																				class="d-flex flex-column flex-md-row align-items-center"
																				style="width: 100%; padding: 0; margin: 10px 10px -5px 10px">
																				<div class="blog-post-image sm-margin-25px-bottom">
																					<img src="https://placehold.it/1200x840" alt="" /></a>
																				</div>
																				<div
																					class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding"
																					style="width: 100%; padding: 0">
																					<!-- start contact form -->
																					<div class="row row-cols-1 row-cols-md-2"
																						style="width: 100%">
																						<div class="col-lg-8"
																							stsyle="margin-right:0px; padding:0px">
																							<input class="medium-input bg-white" type="text"
																								name="ingredients1" placeholder="사용된 재료를 입력하세요">
																							<input id="FOOD_CD_i1" name="FOOD_CD_i1" type="hidden" value="">
																							<input id="NUTR_CONT1_i1" name="NUTR_CONT1_i1" type="hidden" value="">
																							<input id="NUTR_CONT2_i1" name="NUTR_CONT2_i1" type="hidden" value="">
																							<input id="NUTR_CONT3_i1" name="NUTR_CONT3_i1" type="hidden" value="">
																							<input id="NUTR_CONT4_i1" name="NUTR_CONT4_i1" type="hidden" value="">
																							<input id="NUTR_CONT5_i1" name="NUTR_CONT5_i1" type="hidden" value="">
																							<input id="NUTR_CONT6_i1" name="NUTR_CONT6_i1" type="hidden" value="">
																							<input id="NUTR_CONT7_i1" name="NUTR_CONT7_i1" type="hidden" value="">
																							<input id="NUTR_CONT8_i1" name="NUTR_CONT8_i1" type="hidden" value="">
																							<input id="SERVING_SIZE_i1" name="SERVING_SIZE_i1" type="hidden" value="">
																						</div>
																						<div class="col-lg-3" style="margin-left:-20px">
																							<input class="medium-input bg-white" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
																								name="ingredientssize1" placeholder="g 또는 ml">
																						</div>
																						<div id="viewIngredient" name="viewIngredient1" class="col-lg-1"
																							style="margin-left: 0px; padding: 0px; margin-top: 3px">
																							<a href="" data-toggle="modal" data-target="#myiModal" 
																								class="btn btn-fancy btn-very-small btn-gradient-tan-geraldine btn-round-edge"><i
																								class="fas fa-plus"></i></a>
																							<!-- <button type="button" class="btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge" data-toggle="modal" data-target="#myModal" style="margin:15px; padding:15px;" id="foodsearchbuttonf">검색</button> -->
																						</div>
																					</div>
																					<!-- end contact form -->
																				</div>
																				<div
																					class="font-weight-500 text-extra-medium text-medium-gray"
																					id="removeIngredient"
																					style="margin-right: 20px; margin-top: -10px">
																					<i class="fas fa-times"></i>
																				</div>
																			</div>
																		</div> <!-- end blog item -->
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2"
													style="margin: 0; padding: 0; width: 100%; text-align: right">
													<div class="col-lg-12 sm-margin-25px-bottom"
														style="margin: 0; padding: 0; width: 100%; text-align: right">
														<a href="#" id="addIngredient"
															class="btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge margin-10px-bottom">재료
															추가</a>
													</div>
												</div>
												<!-- <div class="row justify-content-center">
							                    <div class="col-12 btn-dual text-center" style="margin-top: 100px">
							                         <a data-toggle="tab" href="#research-tab"  class="btn btn-extra-large btn-expand-ltr alt-font font-weight-500 text-uppercase line-height-18px d-block btn-rounded d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr font-weight-500">다음 페이지<span class="bg-very-light-pink"></span></a>
                       				          </div>
							                </div>		 -->
											</div>			
							                <!-- end tab item -->
											<!-- start tab item -->
											
											<div id="research-tab" class="tab-pane fade">
											<form id="setThumb" enctype="multipart/form-data">
												<div class="row row-cols-1 row-cols-md-2">
													<div class="col-lg-2 sm-margin-25px-bottom">
														<div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">04</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">레시피정보</span>
									                            </div>
									                        </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>조리영상</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom">
																<input type="file" value="조리영상 선택" name="videofile" id="videofile" accept="video/*" required/>
																<div id="video_container"></div>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>대표사진</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom">
																<div class="form-group">
																
																	<input type="file" class="" 
																	name="product_image" id="product_image" accept="image/*" onchange="setThumbnail(event);"value="대표사진 선택" required>
																
																</div>
																<div id="image_container" style="margin-bottom:30px"></div>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>조리시간</span>
															</div>
															<div class="col-lg-4 sm-margin-25px-bottom">
																<input
																	class="medium-input bg-white margin-25px-bottom required"
																	type="text" name="foodtime" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="예상 조리시간을 입력하세요">
															</div>
															<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:15px">
																<h8>분 소요예상</h8>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>조리과정</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom">
																<ul id="sortable"
																	class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray">
																	<li style="width: 100%" value="1">
																		<!-- start blog item -->
																		<div
																			class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn"
																			style="width: 100%;">
																			<div
																				class="d-flex flex-column flex-md-row align-items-center"
																				style="width: 100%">
																				<div
																					class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding"
																					style="width: 100%; padding: 0">
																					<!-- start contact form -->
																					<div class="row row-cols-1 row-cols-md-2"
																						style="width: 100%; ">
																						<div class="col-lg-5">
																							<div id="stepimage_container1" class="stepimage_size"></div>
																						</div>
																						<div class="col-lg-7" style="margin-top:20px">
																							<input class="medium-input bg-white" type="text"
																								name="steptitle1" placeholder="단계별 제목을 입력하세요"> <input
																								type="file" value="단계별 사진 선택" name="stepimage1" accept="image/*" id="stepimage"/>
																							<textarea class="medium-textarea bg-white"
																								rows="6" name="stepsubscript1"
																								placeholder="단계별 조리과정 설명을 입력하세요"></textarea>
																						</div>
																					</div>
																					<!-- end contact form -->
																				</div>
																				<div
																					class="font-weight-500 text-extra-medium text-medium-gray"
																					id="removeProcess" style="margin-right: 15px">
																					<i class="fas fa-times"></i>
																				</div>
																			</div>
																		</div> <!-- end blog item -->
																	</li>
																</ul>
															</div>
															<a href="#" id="addItem"
																class="btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge margin-10px-bottom"
																style="margin-left: auto; margin-right: 15px;">과정 추가</a>
														</div>
													</div>
												</div>
												<!-- <div class="row justify-content-center">
							                    <div class="col-12 btn-dual text-center" style="margin-top: 100px">
							                    	<a data-toggle="tab" href="#planning-tab"  class="btn btn-extra-large btn-expand-ltr alt-font font-weight-500 text-uppercase line-height-18px d-block btn-rounded d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr font-weight-500">이전 페이지<span class="bg-very-light-pink"></span></a>
							                        <a data-toggle="tab" href="#target-tab"  class="btn btn-extra-large btn-expand-ltr alt-font font-weight-500 text-uppercase line-height-18px d-block btn-rounded d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr font-weight-500">다음 페이지<span class="bg-very-light-pink"></span></a>
                       				          </div>
											</div> -->
											</form>
											</div>
											
											<!-- end tab item -->
											<!-- start tab item -->
											<div id="target-tab" class="tab-pane fade">
												<div class="row row-cols-1">
													<div class="col-lg-2 sm-margin-25px-bottom">
														<div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">05</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">해쉬태그</span>
									                            </div>
									                        </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<div class="col-lg-12 sm-margin-25px-bottom" id="myTag">
															</div>
													</div>
												</div>
												<div class="row row-cols-1" style="margin-top: 50px">
													<div class="col-lg-2 sm-margin-25px-bottom">
														<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>음식분류</span>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<div class="row justify-content-center">
															<div class="col-lg-12 sm-margin-25px-bottom">
																<select name="foodcategory" id="foodcategory" class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray">
																	<option value=""></option>
																</select>
															</div>
														</div>
														<div class="row" style="width:100%; margin-top:30px">
															<div class="col-lg-12 sm-margin-25px-bottom" style="width:100%">
																<div
																	class="panel-group accordion-event accordion-style-04"
																	id="accordion4" data-active-icon="icon-feather-minus"
																	data-inactive-icon="icon-feather-plus" style="width:100%">
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-0">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">★나만의 해쉬태그★</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-0"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="myFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-1">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">상황별 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-1"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="situationFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-2">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">나라별 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-2"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="nationalFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-3">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">자취 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-3"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="aloneFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-4">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">초보 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-4"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="lowFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-5">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">내 아이를 위한 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-5"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="kidFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-6">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">엄마를 위한 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-6"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="motherFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-7">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">뷰티 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-7"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="beutyFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																	<!-- start accordion item -->
																	<div class="panel border-color-black-transparent">
																		<div class="panel-heading active-accordion">
																			<a class="accordion-toggle" data-toggle="collapse"
																				data-parent="#accordion4"
																				href="#accordion-style-4-8">
																				<div class="panel-title">
																					<span
																						class="text-dark-gray d-inline-block font-weight-600">건강 요리</span> <i
																						class="text-extra-dark-gray feather icon-feather-minus"></i>
																				</div>
																			</a>
																		</div>
																		<div id="accordion-style-4-8"
																			class="panel-collapse collapse show"
																			data-parent="#accordion4" style="width: 100%">
																			<div class="panel-body"
																				style="margin: 0; width: 100%">
																				<!-- start section -->
																				<section
																					class="big-section bg-very-light-pink wow animate__fadeIn">
																					<div class="container">
																						<div class="row justify-content-center">
																							<div class="col-12 btn-dual text-center" id="helthyFood">
																							</div>
																						</div>
																					</div>
																				</section>
																				<!-- end section -->
																			</div>
																		</div>
																	</div>
																	<!-- end accordion item -->
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- <div class="row justify-content-center">
							                    <div class="col-12 btn-dual text-center" style="margin-top: 100px">
							                    	<a data-toggle="tab" href="#research-tab"  class="btn btn-extra-large btn-expand-ltr alt-font font-weight-500 text-uppercase line-height-18px d-block btn-rounded d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr font-weight-500">이전 페이지<span class="bg-very-light-pink"></span></a>
							                        <a data-toggle="tab" href="#campaign-tab"  class="btn btn-extra-large btn-expand-ltr alt-font font-weight-500 text-uppercase line-height-18px d-block btn-rounded d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr font-weight-500">다음 페이지<span class="bg-very-light-pink"></span></a>
                       				          </div>
											</div> -->
											</div>
											<!-- end tab item -->
											<!-- start tab item -->
											<div id="campaign-tab" class="tab-pane fade" style="width:100%; padding:0px">
												<!-- start section -->
												<section class="half-section">
													<div class="container">
														<div class="row justify-content-center">
															 <div class="col-12 btn-dual text-center" style="margin-top: -80px;">
									                    	<!-- step1 start-->
									                    <div class="row row-cols-1 row-cols-md-2" style="margin-top:20px; margin-bottom:20px">
													<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px; padding:0px">
														<div class="col md-margin-40px-bottom">
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">01</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">제목</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-10 text-left">
														<div id="inputTitle" style="margin-top:50px"></div>
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2" style="padding:0px; margin-top:20px; margin-bottom:20px">
													<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px; padding:0px">
														<div class="col md-margin-40px-bottom" >
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">02</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">한줄설명</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom text-left" id="inputSubscript">
													</div>
												</div>
												<div class="row row-cols-1 row-cols-md-2" style="margin-top:20px; margin-bottom:20px">
													<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px ; padding:0px">
														<div class="col md-margin-40px-bottom" >
									                        <div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">03</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">음식정보</span>
									                            </div>
									                        </div>
									                    </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom" id="foodInfo"
														style="width: 100%">
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>음식이름</span>
															</div>
															<div class="col-lg-4 sm-margin-25px-bottom text-left" id="inputFoodname">
															</div>
															<div class="col-lg-6 sm-margin-25px-bottom text-left" id="inputHowmuch">
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:15px">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>재료정보</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom" id="accordion2case">
																
															</div>
														</div>
														<div class="row" style="margin-top:20px; margin-bottom:20px">
															<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:10px">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>영양정보</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom text-center" style="width:100%; padding:0; margin-top:-60px">
															<p class="alt-font font-weight-500 text-middle-gray d-block text-uppercase text-right margin-100px-top" style="margin-bottom: -100px">성인 1일 영양소 권장량 기준</p>
												                <div class="row row-cols-1 "  style="width:100%; padding:0; margin:0">
												                    <!-- start pie charts item -->
												                     <div style="visibility:hidden;">
												                        <div class="chart-percent">
												                            <span id="test" class="pie-chart-style-02" data-line-width="6" data-percent="85" data-track-color="#f5f5f5" data-start-color="#fc9297" data-end-color="#be85f5">
												                                <span class="percent alt-font font-weight-500 title-extra-small letter-spacing-minus-1px text-extra-dark-gray"></span>
												                            </span>
												                        </div>
												                        <div class="last-paragraph-no-margin wow animate__fadeIn" data-wow-duration="0.2" style="margin-top:10px; margin-bottom:10px">
												                            <span class="alt-font text-small text-uppercase font-weight-500 text-extra-dark-gray d-block"></span>
												                        </div>
												                    </div>
												                    <!-- end pie charts item -->
												                    <div class="row row-cols" id="foodIngredientInputinfo"></div>
												                    
												                </div>
															</div>
														</div>
													</div>
												</div>
												
									                    	<!-- step1 end -->
									                    	
									           
									                    	<!-- step2 start -->
									                    	
									                    	<div class="row row-cols-1 row-cols-md-2" style="margin-top:20px; margin-bottom:20px">
													<div class="col-lg-2 sm-margin-25px-bottom">
														<div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">04</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">레시피정보</span>
									                            </div>
									                        </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<div class="row" style="margin-top:20px; margin-bottom:20px">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>조리영상</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom" id="inputVideo">
															</div>
														</div>
														<div class="row" class="text-center" style="margin-top:20px; margin-bottom:20px">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>대표사진</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom text-left" style="text-align:left" id="inputThumbdiv">
															
															</div>
														</div>
														<div class="row" style="margin-top:20px; margin-bottom:20px">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>조리시간</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom text-left" id="inputFoodtime">
															</div>
														</div>
														<div class="row" style="margin-top:20px; margin-bottom:20px">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>조리과정</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom">
																<ul id="sortable2"
																	class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray">
																	
																</ul>
															</div>
															
														</div>
													</div>
												</div>
									                    	<!-- step2 end -->
									                    	<!-- step3 start -->
									                    	
									                    	<div class="row row-cols-1" style="margin-top:20px; margin-bottom:20px">
													<div class="col-lg-2 sm-margin-25px-bottom">
														<div class="feature-box feature-box-left-icon-middle last-paragraph-no-margin">
									                            <div class="feature-box-icon margin-25px-right">
									                                <h6 class="alt-font text-neon-orange mb-0">05</h6>
									                            </div>
									                            <div class="feature-box-content">
									                                <span class="alt-font font-weight-600 text-large text-medium-gray text-uppercase d-inline-block w-90 xs-w-70">해쉬태그</span>
									                            </div>
									                        </div>
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<div class="col-lg-12 sm-margin-25px-bottom text-left" id="inputmyTag">
															</div>
													</div>
												</div>
												<div class="row row-cols-1" style="margin-top: 50px">
													<div class="col-lg-2 sm-margin-25px-bottom">
													</div>
													<div class="col-lg-10 sm-margin-25px-bottom">
														<div class="row" style="margin-top:20px; margin-bottom:20px">
														<div class="col-lg-2">
															<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>음식분류</span>
														</div>
														<div class="col-lg-10 text-left" id="inputCategory">
														</div>
														</div>
													</div>
													
												</div>
									                    	<!-- step3 end -->
		                       				          		</div>
														</div>
														<div class="row justify-content-center" style="margin-top:150px; margin-bottom:-80px; padding-bottom:0px">
														<!-- start feature box item-->
															<div
																class="col-12 col-sm-auto sm-margin-15px-bottom wow animate__fadeIn"
																data-wow-delay="0.2s">
																<div
																	class="d-flex justify-content-center align-items-center padding-15px-lr h-100">
																	<button onclick="submitProcess()"
																		class="section-link btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge">등록</button>
																</div>
															</div>
															<!-- end feature box item-->
													</div> 
													</div>
												</section>
												<!-- end section -->
											</div>
											<!-- end tab item -->
										</div>
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
	<!-- start contact form -->
	<div class="modal fade zoom-anim-dialog text-center  padding-4-half-rem-all border-radius-6px sm-padding-2-half-rem-lr border-radius-0px border-color-white" id="myiModal" tabindex="-1" role="dialog" data="" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document" style="width : 1000px; height:1000px">
	    <div class="modal-content">
	      <div class="modal-header border-radius-0px border-color-white">
            <h6 class="modal-title alt-font text-extra-dark-gray letter-spacing-minus-1px " style="margin-left:90px; margin-bottom: 30px; margin-top:30px" id="myModalLabel">어떤 <span class="font-weight-600">재료</span>가 필요하신가요?</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="text-align:right" id="closeiforce"><span aria-hidden="true">&times;</span></button>
	      </div>
	      <div class="modal-body border-radius-0px border-color-white">
	        <div class="row" style="width:100%; margin:0; padding:0" >
			<div class="col-lg-10">
			<input class="medium-input margin-25px-bottom xs-margin-10px-bottom required" type="text" name="ifoodnamesearch" placeholder="재료 이름을 검색하세요">
			</div>
			<div class="col-lg-2" style="width:100%; margin-top:5px; padding:0">
			<button class="btn btn-small btn-round-edge btn-gradient-tan-geraldine mb-0" id="searchiFoodName" type="검색">검색</button>
			</div>
			</div>
			<div class="row">
			<div class="col-lg-12">
			<div class="border-color-medium-gray border-top border-right border-left border-bottom" style="padding:10px">
				 <ul class="list-style-03" id="searchiResults"  style="width: 100%; height:500px; overflow: auto">
                </ul>
			</div>
			</div>
	      </div>
	    </div>
	  </div></div></div>
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
							src="${images}/logo-white.png" data-at2x="${images}/logo-white@2x.png"
							alt=""></a>
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
	var count = 1;
	var icount = 1;
	document.getElementById("nowPage").setAttribute("value", 1);
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
									"keyup",
									"input",
									function(e) {
										checkHash();
										checkVideo();
										checkTitle();
									});
							
							$(document).on(
									"keydown",
									"input",
									function(e) {
										checkHash();
										checkVideo();
										checkTitle();
									});
							
							$(document).on(
									"keypress",
									"input",
									function(e) {
										checkHash();
										checkVideo();
										checkTitle();
									});
							
							$(document).on(
									"click",
									"input",
									function(e) {
										checkHash();
										checkVideo();
										checkTitle();
									});
							
							$(document).on(
									"change",
									"input",
									function(e) {
										checkHash();
										checkVideo();
										checkTitle();
									});
							
							
							$.ajax({
								url: "${pageContext.request.contextPath}/catlist",
								type: "post",
								dataType: "text",
								success: function(data) {
									var results = JSON.parse(data);
									console.log(results);
									if (results.length != 0) {
										for (var i = 0; i < results.length; i++) {
											var category = results[i].title;
											var str = '';
											str += '<option value="'+category+'">'+category+'</option>'
											$("#foodcategory").append(str);
											
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
										
										document.getElementById("nowPage").setAttribute("value", 3);
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
										
										var tv = checkTitle();
										var vv = checkVideo();
										var hv = checkHash(); 
										
										var nowp = document.getElementsByName("nowPage")[0].value
										if(tv == true || vv == true || hv == true)
										{
											
											Swal.fire({
												  title: '앗!',
												  text: '모든 입력창이 채워졌는지 확인해주세요',
												  icon: 'error',
												  confirmButtonText: '확인'
												})
											
										}
										
										else{
											previewProcess();
										}

									});
									
							$(document).on("change","#stepimage",function(event){
								var reader = new FileReader();
								var cnt = $(this).attr('name').split('stepimage')[1];
								reader.onload = function(event){
									var img = document.createElement("img");
									img.setAttribute("src", event.target.result);
									console.log("스텝이미지");
									console.log(event.target.result);
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
										 var ttcnt = 0;
										 $.ajax({
												url : 'http://openapi.foodsafetykorea.go.kr/api/f172fe9425e4498c9ea2/I2790/json/1/1/DESC_KOR='+sk,  
												type : 'get',
												dataType : 'json',
												async : true, 
												success : function(data){
													ttcnt = data.I2790.total_count
													appendResult(ttcnt, sk);
												}
											}); 
										
									});
							
							
							$(document).on(
									"click",
									"#viewIngredient",
									function(e) {
										var num = $(this).attr('name').split('viewIngredient')[1];
										 $("input[name=ifoodnamesearch]").val("");
										 $('#searchiResults').empty();
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
										$("input[name=ingredientssize"+num+"]").val($(this).attr('data9'));
										console.log($(this).attr('data1'));
										document.getElementById("FOOD_CD_i"+num).setAttribute("value", $(this).attr('data'));
										document.getElementById("NUTR_CONT1_i"+num).setAttribute("value", $(this).attr('data1'));
										document.getElementById("NUTR_CONT2_i"+num).setAttribute("value", $(this).attr('data2'));
										document.getElementById("NUTR_CONT3_i"+num).setAttribute("value", $(this).attr('data3'));
										document.getElementById("NUTR_CONT4_i"+num).setAttribute("value", $(this).attr('data4'));
										document.getElementById("NUTR_CONT5_i"+num).setAttribute("value", $(this).attr('data5'));
										document.getElementById("NUTR_CONT6_i"+num).setAttribute("value", $(this).attr('data6'));
										document.getElementById("NUTR_CONT7_i"+num).setAttribute("value", $(this).attr('data7'));
										document.getElementById("NUTR_CONT8_i"+num).setAttribute("value", $(this).attr('data8'));
										document.getElementById("SERVING_SIZE_i"+num).setAttribute("value", $(this).attr('data9'));
										$("#closeiforce").trigger("click");
										
										checkTitle();
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
										
										document.getElementById("nowPage").setAttribute("value", 1);
										
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
										
								
									document.getElementById("nowPage").setAttribute("value", 2);
							        
							      
									});
							
							$(document).on(
									"click",
									"#removeIngredient",
									function(e) {
										$(this).parent().parent().parent()
												.remove();
										
										checkHash();
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
												str += '<li style="width: 100%" value="'+cnttmp+'">'
														+ '<div class="blog-post bg-white box-shadow-medium margin-10px-bottom wow animate__fadeIn" style="width: 100% ; padding: 0;" >'
														+ '<div class="d-flex flex-column flex-md-row align-items-center" style="width: 100%; padding : 0;  margin: 10px 10px -5px 10px">'
														+ '<div class="blog-post-image sm-margin-25px-bottom">'
														+ '<img src="https://placehold.it/1200x840" alt="" /></a>'
														+ '</div>'
														+ '<div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding" style="width: 100%; padding: 0">'
														+ '<div class="row row-cols-1 row-cols-md-2" style="width: 100%">'
														+ '<div class="col-lg-8" stsyle="margin-right:0px; padding:0px">'
														+ '<input class="medium-input bg-white" type="text" name="ingredients'+cnttmp+'" placeholder="사용된 재료를 입력하세요">'
														+ '<input id="FOOD_CD_i'+cnttmp+'" name="FOOD_CD_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT1_i'+cnttmp+'" name="NUTR_CONT1_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT2_i'+cnttmp+'" name="NUTR_CONT2_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT3_i'+cnttmp+'" name="NUTR_CONT3_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT4_i'+cnttmp+'" name="NUTR_CONT4_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT5_i'+cnttmp+'" name="NUTR_CONT5_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT6_i'+cnttmp+'" name="NUTR_CONT6_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT7_i'+cnttmp+'" name="NUTR_CONT7_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="NUTR_CONT8_i'+cnttmp+'" name="NUTR_CONT8_i'+cnttmp+'" type="hidden" value="">'
														+ '<input id="SERVING_SIZE_i'+cnttmp+'" name="SERVING_SIZE_i'+cnttmp+'" type="hidden" value="">'
														+ '</div>'
														+ '<div class="col-lg-3" style="margin-left:-20px"><input class="medium-input bg-white" onKeyup="this.value=this.value.replace(/[^0-9]/g,\'\');" type="text" name="ingredientssize'+cnttmp+'" placeholder="g 또는 ml"></div>'
														+ '<div id="viewIngredient" name="viewIngredient'+cnttmp+'" class="col-lg-1" style="margin-left:0px; padding:0px; margin-top:3px">'
														+ '<a href="" data-toggle="modal" data-target="#myiModal"  class="btn btn-very-small btn-round-edge btn-gradient-tan-geraldine"><i class="fas fa-plus"></i></a>'
														+ '</div></div></div>'
														+ '<div class="font-weight-500 text-extra-medium text-medium-gray" id="removeIngredient" style="margin-right: 20px; margin-top:-10px">'
														+ '<i class="fas fa-times"></i></div></div></div></li>'
														
												$('#sortable1').append(str);
												icount += 1;
												
												checkHash();
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

		
		
		function appendResult(tcnt, sk){
			$.ajax({
				url : 'http://openapi.foodsafetykorea.go.kr/api/f172fe9425e4498c9ea2/I2790/json/1/'+tcnt+'/DESC_KOR='+sk,  
				type : 'get',
				dataType : 'json',
				async : true, 
				success : function(data){
					var num = $('#myiModal').attr('data');
					for(var k = 0; k<data.I2790.row.length; k++)
					{
						if(data.I2790.row[k].MAKER_NAME !='') 
						{
							continue;
						}
						var ftemp = '';
						ftemp += '<li id="searchiNameResults" iid="searchiNameResults'+num+'" name="'+data.I2790.row[k].DESC_KOR+'" data="'+data.I2790.row[k].FOOD_CD+'" data1="'+data.I2790.row[k].NUTR_CONT1+'" data2="'+data.I2790.row[k].NUTR_CONT2+'" data3="'+data.I2790.row[k].NUTR_CONT3+'" data4="'+data.I2790.row[k].NUTR_CONT4+'" data5="'+data.I2790.row[k].NUTR_CONT5+'" data6="'+data.I2790.row[k].NUTR_CONT6+'" data7="'+data.I2790.row[k].NUTR_CONT7+'" data8="'+data.I2790.row[k].NUTR_CONT8+'" data9="'+data.I2790.row[k].SERVING_SIZE+'">'
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
						$('#searchiResults').append(ftemp);
					}
				}
			}); 
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
	
		function checkVideo(){
			 
			 
			 var chk = false;
			
              $("#sortable").children().each(function(){ 
              	var i = $(this).attr("value"); 
              	var steptitle = document.getElementsByName("steptitle"+i)[0].value;
              	var stepimage = document.getElementsByName("stepimage"+i)[0].value;
              	var stepsubscript = document.getElementsByName("stepimage"+i)[0].value;
				if(steptitle == '' || stepimage == '' || stepsubscript=='')
				{
					console.log('empty');	
					$( '#videoText' ).empty();
					document.getElementById("videoText").innerText = '레시피 정보';
					var str= '<i class="text-red feather icon-feather-alert-circle" style="margin-left:5px"></i>'
					$('#videoText').append(str);
					chk = true;
					return chk;
				}
				else{
					console.log('not empty');
				}
			

              });
           
             if(chk == false)
            {
            	var foodtime = $("input[name=foodtime]").val();
         		var videofile = $("input[name=videofile]").val();
         		var product_image = $("input[name=product_image]").val();
            	if(foodtime == '' || videofile == ''|| product_image == '') {
            		$( '#videoText' ).empty();
					document.getElementById("videoText").innerText = '레시피 정보';
					var str= '<i class="text-red feather icon-feather-alert-circle" style="margin-left:5px"></i>'
					$('#videoText').append(str);
 					chk = true;
 				}
				else
				{
					$( '#videoText' ).empty();
					document.getElementById("videoText").innerText = '레시피 정보';
				}
                
		
            } 
             
             return chk;
		}
		
		function checkHash(){
			 
			var chk = false;
			
			 console.log( $("#myTag").children().length);
			
			 if( $("#myTag").children().length == 0)
			{
				 console.log("태그없음")
				 $( '#hashtagText' ).empty();
					document.getElementById("hashtagText").innerText = '해쉬태그 설정';
					var str= '<i class="text-red feather icon-feather-alert-circle" style="margin-left:5px"></i>'
					$('#hashtagText').append(str);
					chk = true;
			}
			 else
			{
				 if($("select[name=foodcategory]").val()== ''){
		            	$( '#hashtagText' ).empty();
						document.getElementById("hashtagText").innerText = '해쉬태그 설정';
						var str= '<i class="text-red feather icon-feather-alert-circle" style="margin-left:5px"></i>'
						$('#hashtagText').append(str);
						chk = true;
		            }
		            else{
		            	$( '#hashtagText' ).empty();
						document.getElementById("hashtagText").innerText = '해쉬태그 설정';
		            }
			}
			 
			
            return chk;
		}
		
		function checkTitle(){
			
			var chk =false;
			 $("#sortable1").children().each(function(){ 
					var t = $(this).attr("value"); 
					
					if($("input[name=ingredients"+t+"]").val() == '' || $("input[name=ingredientssize"+t+"]").val() == '')
					{
						console.log('empty');	
						$( '#titleText' ).empty();
						document.getElementById("titleText").innerText = '기본설명';
						var str= '<i class="text-red feather icon-feather-alert-circle" style="margin-left:5px"></i>'
						$('#titleText').append(str);
						chk = true;
						return chk;
					}
					else{
						console.log('not empty');
					}
						
	       });
	        if(chk == false)
	        {
	        	var title = $("input[name=title]").val();
				var subscript = $("input[name=subscript]").val();
				var foodname = $("input[name=foodname]").val();
				var howmuch = $("input[name=howmuch]").val();
	        
		        if(title== ''|| subscript== '' || foodname== '' || howmuch == '') {
		        	$( '#titleText' ).empty();
					document.getElementById("titleText").innerText = '기본설명';
					var str= '<i class="text-red feather icon-feather-alert-circle" style="margin-left:5px"></i>'
					$('#titleText').append(str);
					chk = true;
				}
		        else
		        {
		        	$( '#titleText' ).empty();
					document.getElementById("titleText").innerText = '기본설명';
		        }
		   }
	        return chk;
			        
			       
		}
		
		function previewProcess(){
			
			$( '#titleText' ).empty();
			document.getElementById("titleText").innerText = '기본설명';
			$( '#hashtagText' ).empty();
			document.getElementById("hashtagText").innerText = '해쉬태그 설정';
			$( '#videoText' ).empty();
			document.getElementById("videoText").innerText = '레시피 정보';
			
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
			$('#accordion2case').empty();
			
			
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
			var strli ='';
			strli += '<section class="section wow animate__fadeIn" style="margin-top:-100px; margin-bottom:-100px"><div class="container" style="margin:0; padding:0"><div class="panel-group accordion-event accordion-style-02" id="accordion2" data-active-icon="icon-feather-minus" data-inactive-icon="icon-feather-plus"></div></div></div>'
			$('#accordion2case').append(strli);
			
			var ig1 = 0;
			var ig2 = 0;
			var ig3 = 0;
			var ig4 = 0;
			var ig5 = 0;
			var ig6 = 0;
			var ig7 = 0;
			var ig8 = 0;
			
			/* for(var t = 1; t<=icount; t++)
			{
				var strli = '';
				var stmp = ($("input[name=ingredientssize"+t+"]").val()/$("input[id=SERVING_SIZE_i"+t+"]").val());
					  strli += '<div class="panel bg-transparent">'
					  		+ '<div class="panel-heading border-color-medium-gray-transparent">'
					  		+ '<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion-style-02-0'+t+'">'
					  		+ '<div class="panel-title text-left">'
					  		+ '<span class="alt-font text-dark-gray d-inline-block">'
					  		+ $("input[name=ingredients"+t+"]").val()+' (사용량 : '
					  		+ $("input[name=ingredientssize"+t+"]").val()
					  		+ 'g 또는 ml)'
					  		+ '</span>'
					  		+ '<i class="indicator text-dark-gray feather icon-feather-plus"></i>'
					  		+ '</div>'
					  		+ '</a>'
					  		+ '</div>'
					  		+ '<div id="accordion-style-02-0'+t+'" class="panel-collapse collapse" data-parent="#accordion2">'
					  		+ '<div class="panel-body">'
					  	    + '열량 : '+ $("input[name=NUTR_CONT1_i"+t+"]").val()*stmp +'kcal'
					  	    + '</br>'
							+ '탄수화물 : '+ $("input[name=NUTR_CONT2_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '단백질 : '+ $("input[name=NUTR_CONT3_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '지방 : '+ $("input[name=NUTR_CONT4_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '당류 : '+ $("input[name=NUTR_CONT5_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '나트륨 : '+ $("input[name=NUTR_CONT6_i"+t+"]").val()*stmp +'mg'
							+ '</br>'
							+ '콜레스테롤 : '+ $("input[name=NUTR_CONT7_i"+t+"]").val()*stmp +'mg'
							+ '</br>'
							+ '포화지방산 : '+ $("input[name=NUTR_CONT8_i"+t+"]").val()*stmp +'g'
							+ '</br>'
					  		+ '</div></div></div>'
			
				$('#accordion2').append(strli);	
					  		
				ig1 +=$("input[name=NUTR_CONT1_i"+t+"]").val()*stmp;
				ig2 +=$("input[name=NUTR_CONT2_i"+t+"]").val()*stmp;
				ig3 +=$("input[name=NUTR_CONT3_i"+t+"]").val()*stmp;
				ig4 +=$("input[name=NUTR_CONT4_i"+t+"]").val()*stmp;
				ig5 +=$("input[name=NUTR_CONT5_i"+t+"]").val()*stmp;
				ig6 +=$("input[name=NUTR_CONT6_i"+t+"]").val()*stmp;
				ig7 +=$("input[name=NUTR_CONT7_i"+t+"]").val()*stmp;
				ig8 +=$("input[name=NUTR_CONT8_i"+t+"]").val()*stmp;
			} */
			
			$("#sortable1").children().each(function(){ 
				var t = $(this).attr("value"); 
				if($("input[name=ingredients"+t+"]").val() != '')
				{
				var strli = '';
				var stmp = ($("input[name=ingredientssize"+t+"]").val()/$("input[id=SERVING_SIZE_i"+t+"]").val());
					  strli += '<div class="panel bg-transparent">'
					  		+ '<div class="panel-heading border-color-medium-gray-transparent">'
					  		+ '<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion-style-02-0'+t+'">'
					  		+ '<div class="panel-title text-left">'
					  		+ '<span class="alt-font text-dark-gray d-inline-block">'
					  		+ $("input[name=ingredients"+t+"]").val()+' (사용량 : '
					  		+ $("input[name=ingredientssize"+t+"]").val()
					  		+ 'g 또는 ml)'
					  		+ '</span>'
					  		+ '<i class="indicator text-dark-gray feather icon-feather-plus"></i>'
					  		+ '</div>'
					  		+ '</a>'
					  		+ '</div>'
					  		+ '<div id="accordion-style-02-0'+t+'" class="panel-collapse collapse" data-parent="#accordion2">'
					  		+ '<div class="panel-body">'
					  	    + '열량 : '+ $("input[name=NUTR_CONT1_i"+t+"]").val()*stmp +'kcal'
					  	    + '</br>'
							+ '탄수화물 : '+ $("input[name=NUTR_CONT2_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '단백질 : '+ $("input[name=NUTR_CONT3_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '지방 : '+ $("input[name=NUTR_CONT4_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '당류 : '+ $("input[name=NUTR_CONT5_i"+t+"]").val()*stmp +'g'
							+ '</br>'
							+ '나트륨 : '+ $("input[name=NUTR_CONT6_i"+t+"]").val()*stmp +'mg'
							+ '</br>'
							+ '콜레스테롤 : '+ $("input[name=NUTR_CONT7_i"+t+"]").val()*stmp +'mg'
							+ '</br>'
							+ '포화지방산 : '+ $("input[name=NUTR_CONT8_i"+t+"]").val()*stmp +'g'
							+ '</br>'
					  		+ '</div></div></div>'
			
				$('#accordion2').append(strli);	
					  		
				ig1 +=$("input[name=NUTR_CONT1_i"+t+"]").val()*stmp;
				ig2 +=$("input[name=NUTR_CONT2_i"+t+"]").val()*stmp;
				ig3 +=$("input[name=NUTR_CONT3_i"+t+"]").val()*stmp;
				ig4 +=$("input[name=NUTR_CONT4_i"+t+"]").val()*stmp;
				ig5 +=$("input[name=NUTR_CONT5_i"+t+"]").val()*stmp;
				ig6 +=$("input[name=NUTR_CONT6_i"+t+"]").val()*stmp;
				ig7 +=$("input[name=NUTR_CONT7_i"+t+"]").val()*stmp;
				ig8 +=$("input[name=NUTR_CONT8_i"+t+"]").val()*stmp;
				}
			});
			/* var sk = document.getElementsByName("FOOD_CD")[0].value.replace(/(\s*)/g, "");
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
				
						if(howmuch =='') document.getElementById("inputHowmuch").innerText = '(0kcal / 0인분)'; */
						
				 	/* 	$('#trans').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT1/1987.7*100));
						$('#tansu').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT2/287.9*100));
						$('#danbaek').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT3/72.4*100));
						$('#jibang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT4/49.5*100));
						$('#dang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT5/60.2*100));
						$('#natryum').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT6/3255.0*100));
						$('#coles').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT7/260.4*100));
						$('#pohwa').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT8/16.6*100));  */
						
						var people = document.getElementsByName("howmuch")[0].value;
			 			var farr = ['열량', '탄수화물', '단백질', '지방', '당류','나트륨', '콜레스테롤', '포화지방산']; 
						var iarr = [parseInt(ig1/(1987.7*people)*100), parseInt(ig2/(287.9*people)*100), parseInt(ig3/(72.4*people)*100), parseInt(ig4/(49.5*people)*100), parseInt(ig5/(60.2*people)*100),parseInt(ig6/(3255.0*people)*100), parseInt(ig7/(260.4*people)*100), parseInt(ig8/(16.6*people)*100)]; 
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
						/* 
						
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
						 */
				 	/* 	$('#trans').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT1/1987.7*100));
						$('#tansu').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT2/287.9*100));
						$('#danbaek').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT3/72.4*100));
						$('#jibang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT4/49.5*100));
						$('#dang').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT5/60.2*100));
						$('#natryum').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT6/3255.0*100));
						$('#coles').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT7/260.4*100));
						$('#pohwa').attr('data-percent',  parseInt(data.I2790.row[0].NUTR_CONT8/16.6*100));  */
						
			/*  			var farr = ['열량', '탄수화물', '단백질', '지방', '당류','나트륨', '콜레스테롤', '포화지방산']; 
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
			} */
			
			
			
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
		}
		
	function submitProcess(){
		
		var tv = checkTitle();
		var vv = checkVideo();
		var hv = checkHash(); 
		
		if(tv == true || vv == true || hv == true)
		{
			Swal.fire({
				  title: '앗!',
				  text: '모든 입력창이 채워졌는지 확인해주세요',
				  icon: 'error',
				  confirmButtonText: '확인'
				})
		}
		else{
			
			var title = $("input[name=title]").val();
			var subscript = $("input[name=subscript]").val();
			var foodname = $("input[name=foodname]").val();
			var howmuch = $("input[name=howmuch]").val();
			var ingredientsArr = [];
			var ingredientssizeArr = [];
				
			$("#sortable1").children().each(function(){ 
					var t = $(this).attr("value"); 
					ingredientsArr.push($("input[name=ingredients"+t+"]").val());
					ingredientssizeArr.push($("input[name=ingredientssize"+t+"]").val());
						
		   });
			
			var foodtime = $("input[name=foodtime]").val();
			var steptitleArr = [];
			var stepsubscriptArr = [];
			 $("#sortable").children().each(function(){ 
		        	var i = $(this).attr("value"); 
		        	var steptitle = document.getElementsByName("steptitle"+i)[0].value;
		        	var stepsubscript = document.getElementsByName("stepsubscript"+i)[0].value;
		        	steptitleArr.push(steptitle);
		        	steptitleArr.push(stepsubscript);
		        });
	     
	       var foodcategory = $("select[name=foodcategory]").val();
	       var hashtagArr = [];
	      
		   	
		   $("#myTag").children().each(function(){ 
	       	var i = $(this).text();
	       	console.log(i);
	       	hashtagArr.push(i);
	       });
				
		
		   var objParams = {
				   "title" :title,
				   "subscript" :subscript,
				   "foodname" : foodname,
				   "howmuch" : howmuch,
				   "ingredientsArr" : ingredientsArr,
				   "ingredientssizeArr" : ingredientssizeArr,
				   "steptitleArr" : steptitleArr,
				   "stepsubscriptArr" : stepsubscriptArr,
				   "foodtime" : foodtime,
				   "foodcategory" : foodcategory,
				   "hashtagArr" : hashtagArr
	           };
		   
		   $.ajax({
	           url         :   "${pageContext.request.contextPath}/postRecipe",
	           type        :   "post",
	           dataType    :   "json",
	           data        :   objParams,
	           success     :   function(retVal){
					console.log("insert 실행");
					console.log(retVal);
					setthumbfunc(retVal);
	           },
	           error	:	function(retVal){
	        	   console.log("e insert 실행");
	        	   console.log(retVal);
	        	   setthumbfunc(retVal);
	           }
	       });
		   
		   //$("#submit_btn_click").trigger("click");
		   //setThumb
		 /*   Swal.fire({
				  title: '동영상 업로드 성공',
				  text: '동영상이 정상적으로 게시되었습니다',
				  icon: 'success',
				  confirmButtonText: '확인'
				}) */
		}
		
	}

	function setthumbfunc(retVal){
		var formData = new FormData();
		formData.append("thumb", $("#product_image")[0].files[0]);
		formData.append("recipe_no", retVal);
		/* console.log("실행실행실행");
       $("#sortable").children().each(function(){ 
        	var i = $(this).attr("value"); 
        	var steptitle = document.getElementsByName("steptitle"+i)[0].value;
        	var stepsubscript = document.getElementsByName("stepsubscript"+i)[0].value;
        	console.log(steptitle);
        	formData.append("steptitle"+i, steptitle);
        	formData.append("stepimage"+i, $("input[name=stepimage"+i+"]")[0].files[0]);
        	console.log($("input[name=stepimage"+i+"]")[0].files[0]);
        	formData.append("stepsubscript"+i, stepsubscript);
        }); */
       
		
		 $.ajax({
			url : "${pageContext.request.contextPath}/ThumbnailUpdate.do",
			type : "post",
			data : formData,
			contentType : false,
			processData : false,
			 success     :   function(retVal){
					console.log("s insert 실행");
					console.log();
					setstepfunc();
	           },
	           error	:	function(retVal){
	        	   console.log("se insert 실행");
	        	   console.log();
	        	   setstepfunc();
	           }
		});
	}
	
	function setstepfunc(){
		var formData = new FormData();
		console.log("실행실행실행");
       $("#sortable").children().each(function(){ 
        	var i = $(this).attr("value"); 
        	formData.append("stepimage", $("input[name=stepimage"+i+"]")[0].files[0]);
        });
       
		
		 $.ajax({
			url : "${pageContext.request.contextPath}/StepUpdate.do",
			type : "post",
			data : formData,
			contentType : false,
			processData : false,
			 success     :   function(retVal){
					console.log("s insert 실행");
	           },
	           error	:	function(retVal){
	        	   console.log("se insert 실행");
	           }
		});
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
</html>

