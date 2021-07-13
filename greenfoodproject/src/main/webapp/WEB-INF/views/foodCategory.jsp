<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="images" value='/resources/images' />
<c:url var="css" value='/resources/css' />
<c:url var="email-templates" value='/resources/email-templates' />

<c:set var="app" value="${pageContext.request.contextPath}" />
<c:set var="categoryFoodDTO" value="${categoryFoodDTO }" />
<c:set var="pagingVO" value="${vo }" />
<c:set var="categoryTitle" value="${categoryTitle }" />
<c:set var="categoryNo" value="${categoryNo }" />
<c:set var="dataFlag" value="${dataFlag }" />


<c:url var="js" value='/resources/js' />
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Vecipe</title>
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
	 <div class="container">
           <div class="row justify-content-center" style="margin-bottom:-130px">
               <div class="col-12 col-lg-7 col-md-9 d-flex flex-column justify-content-center align-items-center small-screen">
                   <div class="page-title-large text-center margin-40px-bottom">
                        <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>마음에 드는 레시피를 확인해보세요!</span>
	                	<h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px"><span class="font-weight-600">"<c:out value="${categoryTitle }" />"</span> 카테고리</h2>
                       
                   </div>
                   <div class="newsletter-style-02 position-relative w-100">
                      	<!--  <form action="${app}/reciep" method="get">
                           <input class="search-input large-input border-radius-4px m-0 border-0" name="keyword" placeholder="검색어를 입력해주세요." type="text">
                           <button type="submit" class="btn btn-medium text-extra-dark-gray border-left border-0 border-color-extra-medium-gray font-weight-600 py-0 search-button"><i class="fas fa-search text-fast-blue margin-10px-right"></i>search</button>
                       </form>
                       --> 
                   </div>
               </div>
           </div>
       </div>
    </div>
    <!-- end info banner item -->
     <div class="overlap-section">
                    <div class="box-shadow-large bg-white border-radius-6px padding-2-rem-tb padding-1-rem-lr">
                        <div class="row d-flex align-items-center justify-content-center">
                            <div class="col-12 col-lg-auto text-center text-lg-left md-margin-10px-bottom wow animate__fadeIn" style="margin-left:-50px; margin-right: 10px">
                                <span class="alt-font text-extra-large font-weight-600 text-gradient-tan-geraldine text-uppercase">카테고리</span>
                                <input type="hidden" id="nowPage" name="nowPage" value="">
                            </div>
                            <div class="col-12 col-lg-auto text-center text-lg-right padding-20px-lr lg-padding-10px-lr md-padding-15px-lr md-margin-20px-bottom wow animate__fadeIn">
                                <ul class="nav justify-content-center text-center" style="margin-bottom:5px">
             
             					
                                <li class="nav-item"><a href="${app}/recipe/foodCategory/all">
                                <div class="padding-10px-lr ">All</div>
                                </a></li>
                                
                                <c:if test="${categoryNo == 1}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/1">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">밥류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 1}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/1">
	                                <div class="padding-10px-lr " >밥류</div>
	                                </a></li>
             					</c:if>
             					
             					  <c:if test="${categoryNo == 2}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/2">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">면 및 만두류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 2}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/2">
                                <div class="padding-10px-lr " >면 및 만두류</div>
	                                </a></li>
             					</c:if>
             					
             					 <c:if test="${categoryNo == 3}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/3">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">죽 및 스프류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 3}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/3">
                                <div class="padding-10px-lr " >죽 및 스프류</div>
	                                </a></li>
             					</c:if>
                               
                               <c:if test="${categoryNo == 4}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/4">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">국 및 탕류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 4}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/4">
                                <div class="padding-10px-lr " >국 및 탕류</div>
	                                </a></li>
             					</c:if>
                                
                                 <c:if test="${categoryNo == 5}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/5">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">찌개 및 전골류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 5}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/5">
                                <div class="padding-10px-lr " >찌개 및 전골류</div>
	                                </a></li>
             					</c:if>
                                
                               <c:if test="${categoryNo == 6}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/6">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">찜류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 6}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/6">
                                <div class="padding-10px-lr " >찜류</div>
	                                </a></li>
             					</c:if>
                                </ul>
                                 <ul class="nav justify-content-center text-center">
                                 
                                <c:if test="${categoryNo == 7}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/7">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">구이류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 7}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/7">
                                <div class="padding-10px-lr " >구이류</div>
	                                </a></li>
             					</c:if>
             					
             					<c:if test="${categoryNo == 8}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/8">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">전 및 부침류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 8}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/8">
                                <div class="padding-10px-lr " >전 및 부침류</div>
	                                </a></li>
             					</c:if>
                                
                                <c:if test="${categoryNo == 9}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/9">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">볶음류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 9}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/9">
                                <div class="padding-10px-lr " >볶음류</div>
	                                </a></li>
             					</c:if>
                                
                                 <c:if test="${categoryNo == 10}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/10">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">조림류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 10}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/10">
                                <div class="padding-10px-lr " >조림류</div>
	                                </a></li>
             					</c:if>
             					
             					<c:if test="${categoryNo == 11}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/11">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">튀김류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 11}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/11">
                                <div class="padding-10px-lr " >튀김류</div>
	                                </a></li>
             					</c:if>
             					
             					<c:if test="${categoryNo == 12}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/12">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">나물 및 숙채류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 12}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/12">
                                <div class="padding-10px-lr " >나물 및 숙채류</div>
	                                </a></li>
             					</c:if>
             					
             					<c:if test="${categoryNo == 13}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/13">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">생채 및 무침류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 13}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/13">
                                <div class="padding-10px-lr " >생채 및 무침류</div>
	                                </a></li>
             					</c:if>
             					
             					<c:if test="${categoryNo == 14}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/14">
	                                <div class="padding-10px-lr font-weight-600 text-dark-orange" style="font-family: 'Noto Sans KR', sans-serif; font-size:20px; text-decoration: underline;">장 및 앙념류</div>
	                                </a></li>
             					</c:if>
             					<c:if test="${categoryNo != 14}">
                                	  <li class="nav-item"><a href="${app}/recipe/foodCategory/14">
                                <div class="padding-10px-lr " >장 및 앙념류</div>
	                                </a></li>
             					</c:if>
                                
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
        <!-- start section --> 
        <section class="padding-eleven-lr xl-padding-two-lr xs-no-padding-lr bg-light-gray" id="down-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 blog-content">
                        <ul class="blog-grid blog-wrapper grid grid-loading grid-4col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large" style="margin-bottom: 60px">
                            <li class="grid-sizer"></li>
                            <!-- start dataFlag -->
                            <c:if test="${dataFlag == 0}">
                            	<h6 class="alt-font text-medium-gray letter-spacing-minus-1px" style="text-align:center"><span class="font-weight-600">검색조건</span>을 만족하는 데이터가 없습니다.</h6>
                            	
                            </c:if>
                            <!-- end dataFlag -->
                            <!-- start blog item -->
                            <c:forEach var="item" items="${categoryFoodDTO }" >
                            <li class="grid-item wow animate__fadeIn"  style="width:320px; height: 460px; margin-bottom: 20px">
                                <div class="blog-post border-radius-5px bg-white box-shadow-medium" style="width:320px; height: 460px">
                                    <div class="blog-post-image bg-medium-slate-blue">
                                        <a href="${app }/recipe/${item.no}" title=""><img src="${item.thumbnail}" alt="" style="width:320px; height: 200px"></a>
                                        <a href="${app }/recipe/foodCategory/${item.foodcategoryno }" class="blog-category alt-font"><c:out value="${item.categoryTitle}" /></a>
                                    </div>
                                    <div class="post-details padding-3-rem-lr padding-2-half-rem-tb">
                                        <a href="${app }/recipe/${item.no}" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray margin-15px-bottom d-block"><c:out value="${item.title}" /></a>
                                        <p><c:out value="${item.explanation }"></c:out></p>
                                        <div class="d-flex align-items-center">
                                            <span class="alt-font text-small mr-auto">By <a><c:out value="${item.nickname}" /></a></span>
                                            <a class="blog-like alt-font text-extra-small"><i class="feather icon-feather-monitor margin-10px-right"></i><span><c:out value="${item.views}" /></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                            <!-- end blog item -->
                        </ul>
                        <!-- start pagination -->
                         <c:if test="${dataFlag != 0}">
                            	<div class="col-12 d-flex justify-content-center margin-7-half-rem-top md-margin-5-rem-top wow animate__fadeIn">
                            <ul class="pagination pagination-style-01 text-small font-weight-500 align-items-center">
                            
                            	<!-- Previous -->
                            	<c:if test="${pagingVO.start == 1}" >	
                                <li class="page-item"><a class="page-link"><i class="feather icon-feather-arrow-left icon-extra-small d-xs-none"></i></a></li>
                                </c:if>
                                
                                <c:if test="${pagingVO.start != 1}">
                                <li class="page-item"><a class="page-link" href="/greenfood/searchresult?keyword=${keyword }&nowPage=${pagingVO.startPage - 1}&cntPerPage=${pagingVO.cntPerPage}"><i class="feather icon-feather-arrow-left icon-extra-small d-xs-none"></i></a></li>
                                </c:if>
                                
                                <!-- page -->
                                <c:forEach var="i" begin="${pagingVO.startPage }" end="${pagingVO.endPage }">
								<c:if test="${pagingVO.nowPage == i}">
								<li class="page-item active"><a class="page-link" >${i }</a></li>
								</c:if>
								
								<c:if test="${pagingVO.nowPage != i}">
								<li class="page-item active"><a class="page-link" href="/greenfood/searchresult?keyword=${keyword }&nowPage=${i }&cntPerPage=${pagingVO.cntPerPage }">${i }</a></li>
								</c:if>
								</c:forEach>

                                                                
                                <!-- NEXT -->
                                <c:if test="${pagingVO.lastPage == pagingVO.total}">
								<li class="page-item"><a class="page-link"><i class="feather icon-feather-arrow-right icon-extra-small  d-xs-none"></i></a></li>
								</c:if>
								
								<c:if test="${pagingVO.lastPage != pagingVO.total}">
								<li class="page-item"><a class="page-link" href="/greenfood/searchresult?keyword=${keyword }&nowPage=${pagingVO.endPage +1 }&cntPerPage=${pagingVO.cntPerPage}"><i class="feather icon-feather-arrow-right icon-extra-small  d-xs-none"></i></a></li>
								</c:if>
                            </ul>
                        </div>
                        <!-- end pagination -->
                        </c:if>
                        
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
    $(window).load(function() {
	    $('#load').hide();
	    
	    
	});
		
	
	</script>
</body>