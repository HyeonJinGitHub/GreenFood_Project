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
	 <div class="container">
           <div class="row justify-content-center">
               <div class="col-12 col-lg-7 col-md-9 d-flex flex-column justify-content-center align-items-center small-screen">
                   <div class="page-title-large text-center margin-40px-bottom">
	                   <span class="alt-font font-weight-500 text-dark-orange d-block margin-15px-bottom text-uppercase"><span class="w-10px h-1px bg-dark-orange d-inline-block align-middle margin-5px-right"></span>나의 레시피를 관리해보세요!</span>
	                	<h2 class="alt-font text-extra-dark-gray letter-spacing-minus-1px">나의 <span class="font-weight-600">레시피</span></h2>
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
                        <ul class="blog-grid blog-wrapper grid grid-loading grid-4col xl-grid-4col lg-grid-3col md-grid-2col sm-grid-2col xs-grid-1col gutter-extra-large" id="myRecipeView">
                            <li class="grid-sizer"></li>
                          
                            <!-- start blog item -->
                            <c:forEach var="myRecipe" items="${myRecipe }" >
                            <li class="grid-item wow animate__fadeIn">
                                <div class="blog-post border-radius-5px bg-white box-shadow-medium">
                                    <div class="blog-post-image bg-medium-slate-blue">
                                        <a href="${pageContext.request.contextPath}/recipe/${myRecipe.no}" title=""><img src="${myRecipe.thumbnail}" alt="" style="height:250px"></a>
                                       <%--  <a href="${pageContext.request.contextPath}/recipe/foodCategory/${item.foodcategoryno }" class="blog-category alt-font"><c:out value="${item.categoryTitle}" /></a> --%>
                                    </div>
                                    <div class="post-details padding-3-rem-lr padding-2-half-rem-tb">
                                        <a href="${pageContext.request.contextPath}/recipe/${myRecipe.no}" class="alt-font font-weight-500 text-extra-medium text-extra-dark-gray margin-15px-bottom d-block"><c:out value="${myRecipe.title}" /></a>
                                        <p><c:out value="${item.explanation }"></c:out></p>
                                        <div class="d-flex align-items-center">
                                            <span class="alt-font text-small mr-auto">By <a><c:out value="${myRecipe.nickname}" /></a></span>
                                            <a class="blog-like alt-font text-extra-small"><i class="feather icon-feather-monitor margin-10px-right"></i><span><c:out value="${myRecipe.views}" /></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                            <!-- end blog item -->
                        </ul>
                       
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