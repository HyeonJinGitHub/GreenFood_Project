<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="images" value='/resources/images' />
<c:url var="css" value='/resources/css' />
<c:url var="email-templates" value='/resources/email-templates' />

<c:set var="app" value="${pageContext.request.contextPath}" />
<c:set var="RecipeSearchDTO" value="${RecipeSearchDTO }" />
<c:set var="pagingVO" value="${pagingVO }" />
<c:set var="keyword" value="${keyword }" />

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
	 <div class="container">
           <div class="row justify-content-center">
               <div class="col-12 col-lg-7 col-md-9 d-flex flex-column justify-content-center align-items-center small-screen">
                   <div class="page-title-large text-center margin-40px-bottom">
                       <h1 class="alt-font text-darkgrey font-weight-500 letter-spacing-minus-1 mb-0">검색결과 : <c:out value="${keyword }" /></h1>
                   </div>
                   <div class="newsletter-style-02 position-relative w-100">
                       <form action="${app}/searchresult" method="get">
                           <input class="search-input large-input border-radius-4px m-0 border-0" name="keyword" placeholder="검색어를 입력해주세요." type="text">
                           <button type="submit" class="btn btn-medium text-extra-dark-gray border-left border-0 border-color-extra-medium-gray font-weight-600 py-0 search-button"><i class="fas fa-search text-fast-blue margin-10px-right"></i>search</button>
                       </form>
                   </div>
               </div>
           </div>
       </div>
    </div>
    <!-- end info banner item -->
        <!-- start section --> 
        <section class="padding-eleven-lr xl-padding-two-lr xs-no-padding-lr bg-light-gray" id="down-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 blog-content">
                        <ul class="blog-grid blog-wrapper grid grid-loading grid-4col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large">
                            <li class="grid-sizer"></li>
                            <!-- start blog item -->
                            <c:forEach var="item" items="${RecipeSearchDTO }" >
                            <li class="grid-item wow animate__fadeIn">
                                <div class="blog-post border-radius-5px bg-white box-shadow-medium">
                                    <div class="blog-post-image bg-medium-slate-blue">
                                        <a href="blog-post-layout-01.html" title=""><img src="resources/images/c.jpg" alt=""></a>
                                        <a href="blog-masonry.html" class="blog-category alt-font">Creative</a>
                                    </div>
                                    <div class="post-details padding-3-rem-lr padding-2-half-rem-tb">
                                        <a href="blog-masonry.html" class="alt-font text-small d-inline-block margin-10px-bottom">18 February 2020</a>
                                        <a href="blog-post-layout-01.html" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray margin-15px-bottom d-block"><c:out value="${item.title}" /></a>
                                        <p>Lorem ipsum is simply dummy text printing typesetting industry lorem ipsum been dummy...</p>
                                        <div class="d-flex align-items-center">
                                            <img class="avtar-image" src="https://placehold.it/125x125" alt=""/>
                                            <span class="alt-font text-small mr-auto">By <a href="blog-masonry.html">Torrie asai</a></span>
                                            <a href="blog-post-layout-01.html" class="blog-like alt-font text-extra-small"><i class="far fa-heart"></i><span>28</span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                            <!-- end blog item -->
                        </ul>
                        <!-- start pagination -->
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
	
		
	
	</script>
</body>