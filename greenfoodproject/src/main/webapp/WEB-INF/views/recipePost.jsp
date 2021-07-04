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
<!-- style sheets and font icons  -->
<link rel="stylesheet" type="text/css" href="${css }/font-icons.min.css">
<link rel="stylesheet" type="text/css" href="${css }/theme-vendors.min.css">
<link rel="stylesheet" type="text/css" href="${css }/style.css" />
<link rel="stylesheet" type="text/css" href="${css }/responsive.css" />
</head>
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
                            </div>
                            <div class="col-12 col-lg-auto text-center text-lg-right padding-20px-lr lg-padding-10px-lr md-padding-15px-lr md-margin-20px-bottom wow animate__fadeIn">
                                <ul class="nav nav-tabs justify-content-center text-center">
                                <li class="nav-item"><a data-toggle="tab" href="#planning-tab" class="active alt-font font-weight-500 text-uppercase line-height-18px d-block ">
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom">기본설명</div>
                                </a></li> 
                                <li class="nav-item"><a data-toggle="tab" href="#research-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block ">
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom" style="margin-left:-30px">레시피 정보</div>
                                </a></li>
                                <li class="nav-item"><a data-toggle="tab" href="#target-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block "> 
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle border-right border-color-medium-gray lg-padding-15px-lr xs-no-border-right xs-margin-10px-bottom" style="margin-left:-30px">해시태그 설정</div>
                                </a></li>
                                <li class="nav-item"><a data-toggle="tab" href="#campaign-tab" class="alt-font font-weight-500 text-uppercase line-height-18px d-block " style="margin-left:-30px"> 
                                <div class="padding-30px-lr d-block d-sm-inline-block align-middle lg-padding-15px-lr">미리보기</div>
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
                     	<form action="${email-templates}/contact-form.php" method="post">
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
															<div class="col-lg-8 sm-margin-25px-bottom">
																<input
																	class="medium-input bg-white margin-25px-bottom required"
																	type="text" name="foodname" placeholder="음식 이름을 입력하세요" required>
															</div>
															<div class="col-lg-2 sm-margin-25px-bottom">
																<input
																	class="medium-input bg-white margin-25px-bottom required"
																	type="text" name="howmuch" placeholder="음식분량" required>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom" style="margin-top:15px">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>재료정보</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom">
																<ul id="sortable1"
																	class="list-style-02 alt-font font-weight-500 text-small text-uppercase text-extra-dark-gray">
																	<li style="width: 100%">
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
																						<div class="col-lg-10"
																							stsyle="margin-right:0px; padding:0px">
																							<input class="medium-input bg-white" type="text"
																								name="ingredients" placeholder="사용된 재료를 입력하세요">
																						</div>
																						<div id="viewIngredient" class="col-lg-1"
																							style="margin-left: 0px; padding: 0px; margin-top: 3px">
																							<a href="#contact-form"
																								class="btn btn-fancy btn-very-small btn-gradient-tan-geraldine btn-round-edge popup-with-form"><i
																								class="fas fa-plus"></i></a>
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
																<input type="file" value="조리영상 선택" name="videofile" required/>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>대표사진</span>
															</div>
															<div class="col-lg-10 sm-margin-25px-bottom">
																<input type="file" value="대표사진 선택" name="thumbfile" required/>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-2 sm-margin-25px-bottom">
																<span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-20px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>조리시간</span>
															</div>
															<div class="col-lg-4 sm-margin-25px-bottom">
																<input
																	class="medium-input bg-white margin-25px-bottom required"
																	type="text" name="foodtime" placeholder="예상 조리시간을 입력하세요">
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
																	<li style="width: 100%">
																		<!-- start blog item -->
																		<div
																			class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn"
																			style="width: 100%;">
																			<div
																				class="d-flex flex-column flex-md-row align-items-center"
																				style="width: 100%">
																				<div class="blog-post-image sm-margin-25px-bottom">
																					<img src="https://placehold.it/1200x840" alt="" /></a>
																				</div>
																				<div
																					class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding"
																					style="width: 100%; padding: 0">
																					<!-- start contact form -->
																					<div class="row row-cols-1 row-cols-md-2"
																						style="width: 100%;  margin-top:25px">
																						<div class="col-lg-5">
																							<img class="avtar-image"
																								src="https://placehold.it/149x149" alt="">
																						</div>
																						<div class="col-lg-7">
																							<input class="medium-input bg-white" type="text"
																								name="steptitle" placeholder="단계별 제목을 입력하세요"> <input
																								type="file" value="단계별 사진 선택" name="stepimage" />
																							<textarea class="medium-textarea bg-white"
																								rows="6" name="stepsubscript"
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
																<select name="foodcategory">
																	<option value="01">밥류</option>
																	<option value="02">면 및 만두류</option>
																	<option value="03">죽 및 스프류</option>
																	<option value="04">국 및 탕류</option>
																	<option value="05">찌개 및 전골류</option>
																	<option value="06">찜류</option>
																	<option value="07">구이류</option>
																	<option value="08">전, 적 및 부침류</option>
																	<option value="09">볶음류</option>
																	<option value="10">조림류</option>
																	<option value="11">튀김류</option>
																	<option value="12">나물 및 숙채류</option>
																	<option value="13">생채 및 무침류</option>
																	<option value="14">장 및 양념류</option>
																	<!-- <optgroup label="마블코믹스">
																		<option value="ironman">아이언맨</option>
																		<option value="deadpool">데드풀</option>
																		<option value="spiderman">스파이더맨</option>
																	</optgroup>
																	<optgroup label="디씨코믹스">
																		<option value="batman">베트맨</option>
																		<option value="joker">조커</option>
																		<option value="wonderwoman">원더우먼</option>
																	</optgroup> -->
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
											<div id="campaign-tab" class="tab-pane fade">
												<!-- start section -->
												<section class="half-section">
													<div class="container">
														<div class="row justify-content-center">
															<!-- start feature box item-->
															<div
																class="col-12 col-sm-auto sm-margin-15px-bottom wow animate__fadeIn"
																data-wow-delay="0.2s">
																<div
																	class="d-flex justify-content-center align-items-center padding-15px-lr h-100">
																	<a href="#"
																		class="section-link btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge">등록</a>
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
										</form>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
    <!-- test-->
    
    <!-- end test -->
	<!-- start contact form -->
	<div id="formOfmodal"></div>
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
	<script>
		$(document)
				.ready(
						
						
						function() {
							appendForm();

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
														+ '<input class="medium-input bg-white" type="text" name="ingredients" placeholder="사용된 재료를 입력하세요">'
														+ '</div>'
														+ '<div id="viewIngredient" class="col-lg-1" style="margin-left:0px; padding:0px; margin-top:3px">'
														+ '<a href="#contact-form" class="btn btn-very-small btn-round-edge btn-gradient-tan-geraldine popup-with-form"><i class="fas fa-plus"></i></a>'
														+ '</div></div></div>'
														+ '<div class="font-weight-500 text-extra-medium text-medium-gray" id="removeIngredient" style="margin-right: 20px; margin-top:-10px">'
														+ '<i class="fas fa-times"></i></div></div></div></li>'

												$('#sortable1').append(str);
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
							contents += '<li style="width:100%">'
									+ '<div class="blog-post bg-white box-shadow-medium margin-30px-bottom wow animate__fadeIn" style="width:100%">'
									+ '<div class="d-flex flex-column flex-md-row align-items-center" style="width:100%">'
									+ '<div class="blog-post-image sm-margin-25px-bottom" >'
									+ '<img src="https://placehold.it/1200x840" alt="" /></a>'
									+ '</div>'
									+ '<div class="post-details padding-4-half-rem-lr md-padding-2-half-rem-lr sm-no-padding" style="width:100%; padding:0">'
									+ '<div class="row row-cols-1 row-cols-md-2" style="width:100%; margin-top:25px">'
									+ '<div class="col-lg-5">'
									+ '<img class="avtar-image" src="https://placehold.it/149x149" alt="">'
									+ '</div>'
									+ '<div class="col-lg-7">'
									+ '<input class="medium-input bg-white" type="text" name="steptitle" placeholder="단계별 제목을 입력하세요">'
									+ '<input type="file" value="단계별 사진 선택" name="stepimage"/>'
									+ '<textarea class="medium-textarea bg-white" rows="6" name="stepsubscript" placeholder="단계별 조리과정 설명을 입력하세요"></textarea>'
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

		function appendForm() {
			var content = '';
			content += '<form id="contact-form" action="${email-templates}/contact-form.php" method="post" class="white-popup-block col-xl-4 col-lg-7 col-sm-9  p-0 mx-auto mfp-hide">'
					+ '<div class="padding-fifteen-all bg-white border-radius-6px xs-padding-six-all">'
					+ '<h6 class="text-extra-dark-gray font-weight-500 margin-35px-bottom xs-margin-15px-bottom">Looking for a excellent business idea?</h6>'
					+ '<div>'
					+ '<input class="medium-input margin-25px-bottom xs-margin-10px-bottom required" type="text" name="name" placeholder="Your name">'
					+ '<input class="medium-input margin-25px-bottom xs-margin-10px-bottom required" type="email" name="email" placeholder="Your email address">'
					+ '<input class="medium-input margin-25px-bottom xs-margin-10px-bottom" type="tel" name="phone" placeholder="Your mobile">'
					+ '<textarea class="medium-textarea xs-h-100px xs-margin-10px-bottom" rows="6" name="comment" placeholder="Your message"></textarea>'
					+ '<input type="hidden" name="redirect" value="">'
					+ '<button class="btn btn-medium btn-gradient-sky-blue-pink mb-0 submit" type="submit">Send Message</button>'
					+ '<div class="form-results d-none"></div>'
					+ '</div></div></form>'
			$('#formOfmodal').append(content);
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

