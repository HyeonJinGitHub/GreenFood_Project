<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <title>찍먹부먹–주문내역</title>
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
    </head>
  <body data-mobile-nav-style="classic">
        <!-- start header -->
      		<jsp:include page='/WEB-INF/views/layout/header.jsp' />
        <!-- end header -->
        <!-- start page title -->
        <section class="wow animate__fadeIn bg-light-gray padding-25px-tb page-title-small">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-12 col-xl-8 col-lg-6">
                        <h1 class="alt-font text-extra-dark-gray font-weight-500 no-margin-bottom text-center text-lg-left">Order list</h1>
                    </div>
                    <div class="col-12 col-xl-4 col-lg-6 breadcrumb justify-content-center justify-content-lg-end text-small alt-font md-margin-10px-top">
                        <ul class="xs-text-center">
                            <li><a href="${contextPath }/">Home</a></li>
                            <li><a href="${contextPath }/product">Product</a></li>
                            <li>Order list</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- end page title -->
        <!-- start section -->
        <section class="wow animate__fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 padding-70px-right lg-padding-30px-right md-padding-15px-right">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <table class="table cart-products margin-60px-bottom md-margin-40px-bottom sm-no-margin-bottom">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="alt-font"></th>
                                            <th scope="col" class="alt-font"></th>
                                            <th scope="col" class="alt-font">제품명</th>
                                            <th scope="col" class="alt-font">제품긍액</th>
                                            <th scope="col" class="alt-font">제품수량</th>
                                            <th scope="col" class="alt-font">총 제품금액</th>
                                            <th scope="col" class="alt-font">결제날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody id="mytbody">
                                    	<c:forEach var="item" items="${items}">
                                		   	<tr> 
	                                            <td class="product-remove">
	                                                <a href="#" id="${item.value.no}" class="btn-default text-large product_remove">&times;</a>
	                                            </td>
	                                            <td class="product-thumbnail"><a href="${contextPath}/productDetail?no=${item.value.no}"><img class="cart-product-image" src="${item.value.image }" alt=""></a></td>
	                                            <td class="product-name">
	                                                <a href="${contextPath}/productDetail?no=${item.value.no}">${item.value.name }</a>
	                                            </td>
	                                            <td class="product-price" data-title="Price">￦ ${item.value.price }</td>
	                                            <td class="product-quantity" data-title="Quantity">
	                                                <div class="quantity" >
	                                                    <label class="screen-reader-text">수량</label>
	                                                    <input type="button" id="quantity_minus_${item.value.no}" name="${item.value.no}" value="-" class="qty-minus qty-btn quantity_minus" data-quantity="minus" data-field="quantity">
	                                                    <input class="quantity_value input-text qty-text" id="quantity_${item.value.no}" type="number" name="quantity" value="${item.value.quantity}">
	                                                    <input type="button" id="quantity_plus_${item.value.no}" name="${item.value.no}" value="+" class="qty-plus qty-btn quantity_plus" data-quantity="plus" data-field="quantity">
	                                                </div>
	                                            </td> 
	                                            <td class="product-subtotal" data-title="Total">￦ ${item.value.quantity * item.value.price}</td> 
	                                            <td class="product-name" data-title="Price"> ${item.value.order_date}</td> 
                                        	</tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->
     		<jsp:include page='/WEB-INF/views/layout/footer.jsp' />
        <!-- start scroll to top -->
        <a class="scroll-top-arrow" href="javascript:void(0);"><i class="feather icon-feather-arrow-up"></i></a>
        <!-- end scroll to top -->
        <!-- javascript -->
        <script type="text/javascript" src="resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="resources/js/theme-vendors.min.js"></script>
        <script type="text/javascript" src="resources/js/main.js"></script>
        
    </body>
</html>