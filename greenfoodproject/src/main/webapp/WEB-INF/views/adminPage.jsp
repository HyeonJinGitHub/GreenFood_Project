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
        <title>관리자 페이지</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="author" content="ThemeZaa">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <meta name="description" content="Litho is a clean and modern design, BootStrap 4 responsive, business and portfolio multipurpose HTML5 template with 36+ ready homepage demos.">
        <!-- favicon icon -->
        <link rel="shortcut icon" href="${images}/favicon.png">
        <link rel="apple-touch-icon" href="${images}/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${images}/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="${images}/apple-touch-icon-114x114.png">
        <!-- style sheets and font icons  -->
        <link rel="stylesheet" type="text/css" href="${css}/font-icons.min.css">
        <link rel="stylesheet" type="text/css" href="${css}/theme-vendors.min.css">
        <link rel="stylesheet" type="text/css" href="${css}/style.css" />
        <link rel="stylesheet" type="text/css" href="${css}/responsive.css" />
		<!-- bower install tui-chart -->
    </head>
    <body data-mobile-nav-style="classic">
       <!-- start header -->
        	<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
        <!-- start page title -->
        
        </section>
            <div class="col bg-light-gray padding-5-rem-tb padding-eight-lr xl-padding-six-lr lg-padding-three-lr md-padding-eight-lr wow animate__fadeIn">
         <div class="row align-items-center">
             <div class="col-12 col-sm-12 padding-ten-left xl-padding-three-left md-padding-nine-left xs-padding-15px-left  margin-100px-top">
                <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>상품화에 적합한 레시피 추천!</span>
                <h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px"><span class="font-weight-600">관리자</span>페이지</h2>
             </div>
         </div>
    </div>
        <!-- end page title -->
       <!-- start section -->
      <!-- <section class="big-section">
         <div class="container">
         	<div class="row" style="width:100%">
         		<div class="col-lg-12" style="width:100%">
         			 차트섹션
         		</div>
         	</div>
         </div>
     </section> -->
     <section class="big-section">
         <div class="container">
         	<div class="row" style="width:100%">
         		<div class="col-lg-12" style="width:100%">
         			<ul class="list-style-03" style="width:100%">
         				<li class="border-bottom border-top border-right border-left border-color-black-transparent bg-color-white box-shadow-small" style="width:100%;margin:0 ; padding:0; border-radius:10px; padding-left:10px; padding-right:10px;">
						<div class="row" style="width:100%; padding-bottom:10px; padding-top:10px">
						<div class="col-1" style="width:5%; text-align:center; margin-left:20px">
							<input class="d-inline w-auto mb-0 mr-2 mt-1" type="checkbox" id="allChk">
						</div>
						<div class="col-4" style="width:35%; text-align:center">
						<div class="font-weight-600 text-extra-medium text-extra-medium-gray">레시피 제목</div>
						</div>
						<div class="col-3" style="width:25%; text-align:center">
						<div class="font-weight-600 text-extra-medium text-extra-medium-gray">음식이름</div>
						</div>
						<div sclass="col-2" style="width:10%; text-align:center">
						<div class="font-weight-600 text-extra-medium text-extra-medium-gray"><i class="feather icon-feather-thumbs-up margin-10px-right"></i>좋아요</div>
						</div>
						<div sclass="col-2" style="width:10%; text-align:center">
						<div class="font-weight-600 text-extra-medium text-extra-medium-gray"><i class="feather icon-feather-monitor margin-10px-right"></i>조회수</div>
						</div>
						<div sclass="col-2" style="width:10%; text-align:center">
						<div class="font-weight-600 text-extra-medium text-extra-medium-gray"><i class="feather icon-feather-bar-chart margin-10px-right"></i>관련도</div>
						</div>
						</div>
					 	</li>
         			</ul>
         		</div>
         	</div>
         	<div class="row" style="width:100%; margin-top:30px;">
         		<div class="col-lg-12" style="width:100%;">
         		 	<div class="panel-group accordion-event accordion-style-04" id="accordion4" data-active-icon="icon-feather-minus" data-inactive-icon="icon-feather-plus">
         				<ul id="recipeList" class="list-style-03" style="width:100%">
         					<li>
         						 <!-- start accordion item -->
                           
                            <!-- end accordion item -->
         					</li>
         				</ul>
         			</div>
         		</div>
         	</div>
         	<div class="row" style="width:100%; margin-top:30px;">
         		<div class="col-lg-12" style="width:100%; text-align:right">
         			<button class="section-link btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge " onclick="submitProcess()" style="margin-right:10px"><span class="line-height-25px">상품 등록</span></button>
         			<button class="section-link btn btn-fancy btn-small btn-gradient-tan-geraldine btn-round-edge " onclick="deleteProcess()"><span class="line-height-25px">레시피 삭제</span></button>
         		</div>
         	</div>
         </div>
     </section>

        <!-- end section -->
        <!-- start footer -->
         <!-- start footer -->
        <jsp:include page='/WEB-INF/views/layout/footer.jsp' />
        <!-- end footer -->
        <!-- end footer -->
        <!-- start scroll to top -->
        <a class="scroll-top-arrow" href="javascript:void(0);"><i class="feather icon-feather-arrow-up"></i></a>
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
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<link rel="stylesheet" href="https://uicdn.toast.com/chart/latest/toastui-chart.min.css" />
		<script src="https://uicdn.toast.com/chart/latest/toastui-chart.min.js"></script>
	    <script type="text/javascript">
	    
        
        $(document).ready(function() {
        $.ajax({
			url: "${pageContext.request.contextPath}/RecomendRecipeList",
			type: "post",
			dataType: "text",
			success: function(data) {
				console.log("recipe list");
				var results = JSON.parse(data);
				var cnt = 1;
				for(var i = 0; i<results.length; i++)
				{
					
					var str = '';
				 	str += '<li class="border-bottom border-top border-right border-left border-color-black-transparent bg-color-white box-shadow-small" style="width:100%; margin:0 ; padding:0; margin-bottom: 5px;border-radius:10px; padding-left:10px; padding-right:10px;">'
						+ '<div class="panel border-color-black-transparent" style="width:100%">'
				 		+ '<div class="panel-heading" style="width:100%">'
				 		+ '<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion4" href="#accordion-style-4-'+cnt+'" style="width:100%">'
						+ '<div class="row align-items-center" style="width:100%; margin:0; padding:0 ;padding-bottom:10px; padding-top:10px;  display: flex">'
						+ '<div class="col-1" style="width:5%; text-align:left"><input class="d-inline w-auto mb-0 mr-2 mt-1" type="checkbox" value="'+results[i].no+'" id="recipeChk"></div>'
						+ '<div class="col-1" style="width:5%; text-align:center"><img id="thumb" src="'+results[i].thumbnail.replace(/(\s*)/g, '')+'" class="overflow-hidden border-radius-4px" style="width:100%" alt="" /></div>'
						+ '<div class="col-3" style="text-align:center">'
						+ '<div class="font-weight-500 text-extra-medium text-extra-medium-gray">'+results[i].title+'</div>'
						+ '</div>'
						+ '<div class="col-3" style="text-align:center">'
						+ '<div class="font-weight-500 text-extra-medium text-extra-medium-gray">'+results[i].foodname+'</div>'
						+ '</div>'
						+ '<div sclass="col-2" style="width:10%; text-align:center">'
						+ '<div class="font-weight-500 text-extra-medium text-extra-medium-gray">'+results[i].likes+'</div>'
						+ '</div>'
						+ '<div sclass="col-2" style="width:10%; text-align:center">'
						+ '<div class="font-weight-500 text-extra-medium text-extra-medium-gray">'+results[i].views+'</div>'
						+ '</div>'
						+ '<div sclass="col-2" style="width:10%; text-align:center">'
						+ '<div class="font-weight-500 text-extra-medium text-extra-medium-gray">'+results[i].relation_score+'</div>'
						+ '</div>'
						+ '</div>'
						+ '</a></div>'
						+ '<div id="accordion-style-4-'+cnt+'" class="panel-collapse collapse" data-parent="#accordion4" style="margin-bottom:20px">'
						+ '<div class="panel-body" id="chart'+cnt+'"></div>'
						+ '</div>'
						+ '</div>'
					 	+ '</li>'

					
	            	$("#recipeList").append(str);	
					$("#chart"+cnt.toString()).append("[날짜 별, 좋아요 및 조회수 분포]");
					makeChart1(results[i].no, cnt);
					makeChart2(results[i].no, cnt);
	            	cnt += 1;
				}
			}
				
		});
        
        function makeChart1(no, cnt){
        	 $.ajax({
     			url: "${pageContext.request.contextPath}/charList",
     			type: "post",
     			dataType: "text",
     			data : {
     				"rno" : no
     			},
     			success: function(data) {
     			   console.log("chart list");
     			   var results = JSON.parse(data);
   	               var dateArr = [];
   	               var lArr = [];
				   var vArr = [];
				   
     				for(var i = 0; i<results.length; i++)
     				{
     				   if(results[i].flag == 1)
	     			   {
     					  dateArr.push(results[i].like_date);
	       				   lArr.push(results[i].lcount);
	       				   vArr.push(0);
	     			   }
     				   else if(results[i].flag == 2)
     				   {
     					  dateArr.push(results[i].view_date);
	       				   lArr.push(0);
	       				   vArr.push(results[i].vcount);
     				   }
     				   else if(results[i].flag == 3)
     				   {
        				   dateArr.push(results[i].view_date);
        				   lArr.push(results[i].lcount);
        				   vArr.push(results[i].vcount);
     				   }
     				 
     	               
     				}
     				
     				data = {
        	                 categories: dateArr,
        	                 series: [
        	                     {
        	                         name: 'like',
        	                         data: lArr,
        	                       },
        	                       {
        	                         name: 'view',
        	                         data: vArr,
        	                       },
        	                 ],
        	               };
        	               const options = {
        	                 chart: { width: 800, height: 500 },
        	                 xAxis: {
        	                   title: 'Date',
        	                 },
        	                 yAxis: {
        	                   title: 'Likes&View',
        	                 },
        	                 tooltip: {
        	                   formatter: (value) => `${value}°C`,
        	                 },
        	                 legend: {
        	                   align: 'bottom',
        	                 },
        	               };

        	               const el = document.getElementById('chart'+cnt.toString());
        	               const chart = toastui.Chart.lineChart({ el, data, options });
     			}
     				
     		});
        	
        }
        
        
        function makeChart2(no, cnt){
       	 $.ajax({
    			url: "${pageContext.request.contextPath}/charList1",
    			type: "post",
    			dataType: "text",
    			data : {
    				"rno" : no
    			},
    			success: function(data) {
    			   console.log("chart list");
    			   var results = JSON.parse(data);
    			   if(results.length > 0)
    			   {
    				   var kArr = [];
    				   var vArr = [];
    				   var total = [];
        			   for(var i = 0; i<results.length; i++)
        				{
        				   kArr.push(results[i].like_date);
        				   var tmp = {
           					    name: results[i].like_date,
           					    data: results[i].lcount,
           					  };
        				   total.push(tmp);
        	               
        				}
        			   
        			   
        				data = {
           	                 categories:['Keyword'],
           	                 series: total,
           	               };
           	               const options = {
           	                 chart: { width: 800, height: 500 },
	           	              series: {
	           	               selectable: true,
		           	            radiusRange: {
		           	             inner: '40%',
		           	             outer: '100%',
		           	           },
		           	        	clockwise: false,
		           	        	dataLabels: {
				           	           visible: true,
				           	           anchor: 'outer'
				           	         },
	           	             },
           	               };
           	               $("#chart"+cnt.toString()).append("[트렌드 적합도 판별 키워드]");
           	               const el = document.getElementById('chart'+cnt.toString());
           	               const chart = toastui.Chart.pieChart({ el, data, options });
    			   }
  	               
    			} 
    				
    		});
       	
       }
       
        
    	
		$(document).on(
				"click",
				"#allChk",
				function(e) {
					var checked = $('#allChk').is(':checked');
					
					if(checked)
						$('input:checkbox').prop('checked',true);
					else
						$('input:checkbox').prop('checked',false);
		});
        
        });
        
        function deleteProcess()
        {
        	console.log("delete");
        	$("input:checkbox[id=recipeChk]").each(function() {
        		if($(this).is(":checked") == true) {
          		  console.log($(this).attr('value'));
          		}
        	});
        }
        
        function submitProcess()
        {
        	console.log("add");
        	var cnt = 0;
        	var no = '';
        	$("input:checkbox[id=recipeChk]").each(function() {
        		if($(this).is(":checked") == true) {
        			cnt += 1;
            		no += $(this).attr('value');
            	}
        	});
        	console.log(cnt);
        	if(cnt > 1)
        	{
        		Swal.fire({
  				  title: '앗!',
  				  text: '한번에 한 상품만 등록할 수 있습니다',
  				  icon: 'error',
  				  confirmButtonText: '확인'
  				})
        	}
        	else
        	{
        		console.log(no);
        	}
        }
        
        </script>
    </body>
</html>