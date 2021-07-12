<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="images" value='/resources/images' />
<c:url var="css" value='/resources/css' />
<c:url var="email-templates" value='/resources/email-templates' />

<c:set var="app" value="${pageContext.request.contextPath}" />


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

<!-- javascript -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/theme-vendors.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>

<!-- revolution js files -->
<script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>


<script type="text/javascript">

	// 시작 시 modal 띄움
	$(document).ready(function(){    
		 getIngred();
		 $("#ingredientModal").modal("show");

	});

	var revapi263, tpj;
	(function() {
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
					sliderType : "standard",
					jsFileLocation : "revolution/js/",
					sliderLayout : "fullscreen",
					dottedOverlay : "none",
					delay : 9000,
					navigation : {
						keyboardNavigation : "on",
						keyboard_direction : "horizontal",
						mouseScrollNavigation : "off",
						mouseScrollReverse : "default",
						onHoverStop : "off",
						touch : {
							touchenabled : "on",
							touchOnDesktop : "off",
							swipe_threshold : 75,
							swipe_min_touches : 1,
							swipe_direction : "horizontal",
							drag_block_vertical : false
						},
						bullets : {
							enable : true,
							hide_onmobile : false,
							style : "hermes",
							hide_onleave : false,
							direction : "horizontal",
							h_align : "center",
							v_align : "bottom",
							h_offset : 0,
							v_offset : 40,
							space : 12,
							tmp : ''
						},
						arrows : {

							enable : true,
							style : 'uranus',
							tmp : '',
							rtl : false,
							hide_onleave : false,
							hide_onmobile : true,
							hide_under : 767,
							hide_over : 9999,
							hide_delay : 200,
							hide_delay_mobile : 1200,
							left : {
								container : 'slider',
								h_align : 'left',
								v_align : 'center',
								h_offset : 64,
								v_offset : 0
							},
							right : {
								container : 'slider',
								h_align : 'right',
								v_align : 'center',
								h_offset : 64,
								v_offset : 0
							}

						}
					},
					responsiveLevels : [ 1240, 1025, 778, 480 ],
					visibilityLevels : [ 1240, 1024, 778, 480 ],
					gridwidth : [ 1240, 1024, 778, 480 ],
					gridheight : [ 868, 768, 960, 720 ],
					lazyType : "none",
					shadow : 0,
					spinner : "spinner0",
					stopLoop : "on",
					stopAfterLoops : 0,
					stopAtSlide : 1,
					shuffle : "off",
					autoHeight : "off",
					fullScreenAutoWidth : "off",
					fullScreenAlignForce : "off",
					fullScreenOffsetContainer : "",
					fullScreenOffset : revOffset,
					disableProgressBar : "on",
					hideThumbsOnMobile : "off",
					hideSliderAtLimit : 0,
					hideCaptionAtLimit : 0,
					hideAllCaptionAtLilmit : 0,
					debugMode : false,
					fallbacks : {
						simplifyAll : "off",
						nextSlideOnWindowFocus : "off",
						disableFocusListener : false,
					}
				});
			}
			; /* END OF revapi call */
		}
		; /* END OF ON LOAD FUNCTION */
	}());/* END OF WRAPPING FUNCTION */

	// 재료를 가져오는 메소드
	function getIngred() {


		$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath}/getIngredient',
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			dataType : "json",
			success : function(data) {
				var ingredientList = data.ingredientList;
				var ingredientInnerHTML = '';

				$.each(ingredientList, function(key, value) {
					ingredientInnerHTML += '<div  id="subIngredient' + value.no + '" class = "btn btn-large-ksy btn-dark-gray btn-rounded d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr" onclick="isIngredientAlreadyExists(' + value.no + ', \''+ value.name +'\')"> '+ value.name;
					ingredientInnerHTML += '</div>';
				});
				
				

				$("#ingredientList").html(ingredientInnerHTML);
			}
		});

	}
	
	// 재료를 선택하는 메소드
	function selectIngredient(no, name){
		var selectedIngredientNo = no;
		var selectedIngredientName = name;
		var selectedIngredientInnerHTML = '';
		
		selectedIngredientInnerHTML += '<div  id="' + selectedIngredientNo + '" class = "btn btn-large-ksy btn-dark-gray btn-rounded d-table d-lg-inline-block lg-margin-15px-bottom md-margin-auto-lr" onclick="removeIngredient(' + selectedIngredientNo + ', \''+ selectedIngredientName +'\')"> '+ selectedIngredientName;
		selectedIngredientInnerHTML += '</div>';
		
		$("#selectedIngredientList").append(selectedIngredientInnerHTML);
	}
	
	// 재료를 제거하는 메소드
	function removeIngredient(no, name){
		var removeIngredientNo = no;
		var removeIngredientName = name;
		
		var removalTarget = document.getElementById(removeIngredientNo);
		removalTarget.remove();
	}
	
	
	// 이미 추가한 적 있는 재료인지 확인하는 메소드
	function isIngredientAlreadyExists(no, name){
		var targetIngredientNo = no;
		var targetIngredientName = name;
		var targetIngredientId = document.getElementById(targetIngredientNo);
		// 존재하지 않는 경우, targetIngredientId 는 null 값을 갖는다
		
	    if(targetIngredientId){
	    } else{
	    	selectIngredient(targetIngredientNo, targetIngredientName);
	    }
	}
	
	var recipeListSize = 0;
	let recipeShowCount = 4; // 한 번에 보여주는 레시피의 갯수.
	var shownCount = 0; // 보여준 횟수
	
	// 선택한 재료의 id 들(selectedIngredientList id 인 div 안의 id들) 모두 가져오기 & 검색
	function getElementIdAndSearch(isShowMoreClicked) {
		var ingredientIds = document.getElementById('selectedIngredientList').children;
		var jsonArry = new Array(); 
		var showMoreClicked = showMoreClicked;
		
		
		// 반복문을 통해 모든 id 탐색
		for (i = 0; i <= ingredientIds.length - 1; i++) {
			var obj = {
					'no': ''
					};
			
			obj.no=ingredientIds[i].id;
			
			jsonArry.push(obj);
		}
		
		var jsonData = JSON.stringify(jsonArry) ;
		
		
		// showmore 버튼 클릭이 아닌 경우, 검색 결과가 존재하면 자식 요소들 삭제.
		var removalTarget = document.getElementById("recipeListHtml");
		console.log(isShowMoreClicked);
		if((isShowMoreClicked==="notShowMoreClicked") && (removalTarget !== null)){
			$(removalTarget).empty();
			shownCount=0;
		} 
		
		$.ajax({
    		url:'${pageContext.request.contextPath}/getSelectedIngredient',		    	      
    		type:'post',
			contentType:'application/json; charset=UTF-8',
	   		data:jsonData,
			success:function(data){
				var recipeList = data.recipeList;
				recipeListSize = data.recipeList.length;
				var recipeListHtml = '';
				var showMoreButtonHtml = '';
				
				// 보여줘야 하는 횟수. recipeListSize / recipeShowCount 의 결과가 저장됨.
				var toShowCount = recipeListSize / recipeShowCount; 
				
				// recipeList 의 인덱스 길이 제한 변수
				var length;
				
				if (recipeListSize - shownCount * recipeShowCount < recipeShowCount){
					length = recipeListSize - shownCount * recipeShowCount;
				} else{
					length = recipeShowCount;
				}
				
				for(var i = shownCount * recipeShowCount ; i < ( shownCount * recipeShowCount ) + length ; i++){
					
					
                    recipeListHtml += '<li class="grid-item wow animate__fadeIn" style = "float:left;">                                                                                                                                         ';
                    recipeListHtml += '<div class="blog-post border-radius-5px bg-white box-shadow-medium">                                                                                                               ';
                    recipeListHtml += '    <div class="blog-post-image bg-medium-slate-blue">                                                                                                                             ';
                    recipeListHtml += '        <a href="blog-post-layout-01.html" title=""><img src="resources/images/c.jpg" alt=""></a>                                                                                  ';
                    recipeListHtml += '        <a href="blog-masonry.html" class="blog-category alt-font">Creative</a>                                                                                                    ';
                    recipeListHtml += '    </div>                                                                                                                                                                         ';
                    recipeListHtml += '    <div class="post-details padding-3-rem-lr padding-2-half-rem-tb">                                                                                                              ';
                    recipeListHtml += '        <a href="blog-masonry.html" class="alt-font text-small d-inline-block margin-10px-bottom">18 February 2020</a>                                                             ';
                    recipeListHtml += '        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray margin-15px-bottom d-block">' + recipeList[i].title + '</a>  ';
                    recipeListHtml += '        <p>Lorem ipsum is simply dummy text printing typesetting industry lorem ipsum been dummy...</p>                                                                            ';
                    recipeListHtml += '        <div class="d-flex align-items-center">                                                                                                                                    ';
                    recipeListHtml += '            <img class="avtar-image" src="https://placehold.it/125x125" alt=""/>                                                                                                   ';
                    recipeListHtml += '            <span class="alt-font text-small mr-auto">By <a href="blog-masonry.html">Torrie asai</a></span>                                                                        ';
                    recipeListHtml += '            <a href="blog-post-layout-01.html" class="blog-like alt-font text-extra-small"><i class="far fa-heart"></i><span>28</span></a>                                         ';
                    recipeListHtml += '        </div>                                                                                                                                                                     ';
                    recipeListHtml += '    </div>                                                                                                                                                                         ';
                    recipeListHtml += '</div>                                                                                                                                                                             ';
                	recipeListHtml += '</li>                                                                                                                                                                              ';
				}
				
				shownCount++;
				
				// 아직 보여줄 레시피가 더 있는 경우
				if(shownCount * recipeShowCount < recipeListSize){
					showMoreButtonHtml += '<button id="showMoreBtn" type="button" class="btn btn-primary-ksy" onclick="getElementIdAndSearch(\'showMoreClicked\')"> Show More</button>';
				}
				
				var removalTarget = document.getElementById("showMoreBtn");
				
				if(removalTarget !== null){
					removalTarget.remove();
				}
				
				$("#recipeListHtml").append(recipeListHtml);
				$("#showMoreButtonHtml").append(showMoreButtonHtml);
	 		}
	   	})
	}

	
</script>




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
	 <div class="container">
           <div class="row justify-content-center">
            	
				
               <div class="col-12 col-lg-7 col-md-9 d-flex flex-column justify-content-center align-items-center small-screen">
               
               <!-- Button trigger modal -->
				<button type="button" class="btn btn-primary-ksy" data-toggle="modal" data-target="#ingredientModal" onclick="getIngred()">재료로 검색하기</button>

                  
               </div>
           </div>
       </div>
    </div>
    <!-- end info banner item -->
    
    
    
    
    <section class="padding-eleven-lr xl-padding-two-lr xs-no-padding-lr bg-light-gray" id="down-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 blog-content">
                        <ul id = "recipeListHtml" class="blog-grid blog-wrapper grid grid-loading grid-4col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large">
                            <li class="grid-sizer"></li>
                        </ul>
                    </div>
                </div>
                
                <div id="showMoreButtonHtml" style = "display: flex; align-items: center; justify-content: center;"></div>
            </div>
    </section>
       

		<!-- Modal -->
	<div class="modal fade" id="ingredientModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content-ingredient">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">재료 선택으로 레시피 추천받기</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body-ksy">
					<div class="row">
						<div class="col-lg-6 modal-col-height-ksy">
							<div id="ingredientList" class="modal-color-ksy modal-scroll-ksy" ></div>
						</div>
						<div class="col-lg-6 modal-col-height-ksy">
							<div id="selectedIngredientList" class="modal-color-selected-ksy modal-scroll-ksy"" >
							
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal" style="z-index: 1;">닫기</button>
					<button type="button" class="btn btn-primary-ksy" data-dismiss="modal" onclick="getElementIdAndSearch('notShowMoreClicked')" style="z-index: 1;">검색하기</button>
				</div>
			</div>
		</div>
	</div>



	<!-- start footer -->
		<jsp:include page='/WEB-INF/views/layout/footer.jsp' />
	<!-- end footer -->
	<!-- start scroll to top -->
	<a class="scroll-top-arrow" href="javascript:void(0);"><i
		class="feather icon-feather-arrow-up"></i></a>
	<!-- end scroll to top -->
	<!-- javascript -->
	<script type="text/javascript" src="${js}/theme-vendors.min.js"></script>
	<script type="text/javascript" src="${js}/main.js"></script>
	<script src="https://kit.fontawesome.com/1cd4016a85.js"
		crossorigin="anonymous"></script>
	<link
		href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
		rel="stylesheet" type="text/css" />

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