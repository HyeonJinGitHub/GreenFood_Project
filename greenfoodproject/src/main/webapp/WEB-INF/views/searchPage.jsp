<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Litho – The Multipurpose HTML5 Template</title>
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
<!-- revolution slider -->
<link rel="stylesheet" type="text/css" href="resources/revolution/css/settings.css">
<link rel="stylesheet" type="text/css" href="resources/revolution/css/layers.css">
<link rel="stylesheet" type="text/css" href="resources/revolution/css/navigation.css">

<!-- javascript -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/theme-vendors.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>

<!-- revolution js files -->
<script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>

<!-- slider revolution 5.0 extensions (load extensions only on local file systems ! the following part can be removed on server for on demand loading) -->
<!-- <script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script> -->

<script type="text/javascript">
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
	
	// 선택한 재료의 id 들(selectedIngredientList id 인 div 안의 id들) 모두 가져오기 & 검색
	function getElementIdAndSearch() {
		var ingredientIds = document.getElementById('selectedIngredientList').children;
		var arryId = new Array(); // id 를 담은 array
		
		// 반복문을 통해 모든 id 탐색
		for (i = 0; i <= ingredientIds.length - 1; i++) {
			var obj = {
					'no': ''
					};
			
			obj.no=ingredientIds[i].id;
			arryId.push(obj);
		}
		
		var jsonData = JSON.stringify(arryId) ;
		
		
		$.ajax({
    		url:'${pageContext.request.contextPath}/getSelectedIngredient',		    	      
    		type:'post',
			contentType:'application/json; charset=UTF-8',
	   		data:jsonData,
			success:function(data){
				 location.href='${pageContext.request.contextPath}/searchIngredient';
	 		}
	   	})
	}

	
</script>

</head>
<body data-mobile-nav-style="classic">

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ingredientModal" onclick="getIngred()">Launch demo modal</button>

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
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-4">
							<div id="ingredientList" class="modal-color-ksy"></div>
						</div>
						<div class="col-lg-4">
							<div id="selectedIngredientList" class="modal-color-selected-ksy" >
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" onclick="getElementIdAndSearch()">검색하기</button>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
