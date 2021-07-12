<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="subtotal" value="0" />
<!DOCTYPE html>
<html>
    <head>
        <title>찍먹부먹–장바구니</title>
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
       	<script type="text/javascript"
			src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
                        <h1 class="alt-font text-extra-dark-gray font-weight-500 no-margin-bottom text-center text-lg-left">Shopping cart</h1>
                    </div>
                    <div class="col-12 col-xl-4 col-lg-6 breadcrumb justify-content-center justify-content-lg-end text-small alt-font md-margin-10px-top">
                        <ul class="xs-text-center">
                            <li><a href="${contextPath }/">Home</a></li>
                            <li><a href="${contextPath }/product">Product</a></li>
                            <li>Shopping cart</li>
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
	                                            <c:set var="subtotal" value="${subtotal + item.value.quantity * item.value.price}"/>
                                        	</tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-6 md-margin-50px-bottom sm-margin-20px-bottom"> 
                                <div class="coupon-code-panel">
                                    <input type="text" placeholder="Coupon code">
                                    <a href="#" class="btn apply-coupon-btn text-uppercase">Apply</a>
                                </div>
                            </div>
                            <div class="col-md-6 text-center text-md-right md-margin-50px-bottom btn-dual">
                                <a href="#" class="btn btn-fancy btn-small btn-transparent-light-gray">Empty cart</a>
                                <a href="#" class="btn btn-fancy btn-small btn-transparent-light-gray mr-0">Update cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="bg-light-gray padding-50px-all lg-padding-30px-tb lg-padding-20px-lr md-padding-20px-tb">
                            <span class="alt-font text-large text-extra-dark-gray margin-15px-bottom d-inline-block font-weight-500">Cart totals</span>
                            <table class="w-100 total-price-table">
                                <tbody id="totaltbody">
                                    <tr>
                                        <th class="w-50 font-weight-500 text-extra-dark-gray">총 상품가격</th>
                                        <td class="text-extra-dark-gray">￦ ${subtotal }</td>
                                    </tr>
                                    <tr class="shipping">
                                        <th class="font-weight-500 text-extra-dark-gray">배송비</th>
                                        <td class="text-extra-dark-gray">￦ 2500</td>
                                    </tr>
                                    <tr class="total-amount">
                                        <th class="font-weight-500 text-extra-dark-gray">총 주문금액</th>
                                        <td data-title="Total">
                                            <h6 class="d-block font-weight-500 mb-0 text-extra-dark-gray">￦ ${subtotal + 2500 }</h6>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div><a href="#" id="purchase" class="btn btn-dark-gray btn-large d-block btn-fancy margin-15px-top">구매하기</a></div>
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
        
        <script>
        	$(document).ready(function() {
        		$(document).on('keyup', '.quantity_value', function() {
        			var before_no = $(this).attr('id').substring(9);
        			var before_cnt = $(this).val();
	        		var new_page = '';
	        		var new_total_page = '';
	        		var total = 0;
	        		$.ajax({
	    				async: false,
	    				type: 'POST',
	    				data : {"no": before_no,
	    					"cnt": before_cnt},
	    				url : '/greenfood/quantityUpdate',
	    				success : function(data) {
	    					var new_data = JSON.parse(data);
	    					console.log(new_data);
	    					for(var i=0;i<new_data.length;i++) {
	    						var quantity = parseInt(new_data[i].quantity);
	    						var price = parseInt(new_data[i].price);
	    						total += (quantity * price);
	    						new_page += '<tr>'
	    							+ '<td class="product-remove">'
	    							+ '<a href="#" class="btn-default text-large">&times;</a>'
	    							+ '</td>'
	    							+ '<td class="product-thumbnail"><a href="${contextPath}/productDetail?no='+new_data[i].no+'"><img class="cart-product-image" src="'+new_data[i].image+'" alt=""></a></td>'
	    							+ '<td class="product-name">'
	    							+ '<a href="${contextPath}/productDetail?no='+new_data[i].no+'">'+new_data[i].name+'</a>'
	    							+ '</td>'
	    							+ '<td class="product-price" data-title="Price">￦ '+new_data[i].price+'</td>'
	    							+ '<td class="product-quantity" data-title="Quantity">'
	    							+ '<div class="quantity">'
	    							+ '<label class="screen-reader-text">수량</label>'
	    							+ '<input type="button" id="quantity_minus_'+new_data[i].no+'" name="'+new_data[i].no+'" value="-" class="qty-minus qty-btn quantity_minus" data-quantity="minus" data-field="quantity">'
	    							+ '<input class="quantity_value input-text qty-text" id="quantity_'+new_data[i].no+'" type="number" name="quantity" value="'+new_data[i].quantity+'">'
	    							+ '<input type="button" id="quantity_plus_'+new_data[i].no+'" name="'+new_data[i].no+'"  value="+" class="qty-plus qty-btn quantity_plus" data-quantity="plus" data-field="quantity">'
	    							+ '</div>'
	    							+ '</td>'
	    							+ '<td class="product-subtotal" data-title="Total">￦ '+quantity * price+'</td>'
	    							+ '</tr>';
	    					}
	    					$("#mytbody").html(new_page);
	    					var delivery_included = total + 2500;
    						new_total_page += '<tr>'
								+ '<th class="w-50 font-weight-500 text-extra-dark-gray">총 상품가격</th>'
								+ '<td class="text-extra-dark-gray">￦ '+total+'</td>'
								+ '</tr>'
								+ '<tr class="shipping">'
								+ '<th class="font-weight-500 text-extra-dark-gray">배송비</th>'
								+ '<td class="text-extra-dark-gray">￦ 2500</td>'
								+ '</tr>'
								+ '<tr class="total-amount">'
								+ '<th class="font-weight-500 text-extra-dark-gray">총 주문금액</th>'
								+ '<td data-title="Total">'
								+ '<h6 class="d-block font-weight-500 mb-0 text-extra-dark-gray">￦ '+ delivery_included +'</h6>'
								+ '</td>'
								+ '</tr>';
	    					$("#totaltbody").html(new_total_page);
	    				},
	    				error : function(error) {
	    					alert('error : ' + JSON.stringify(error));
	    				}
	    			});
        		});
        	});
        
        	 $(document).ready(function() {
        		$(document).on('click', '.product_remove', function() {
        			var no = $(this).attr('id');
	        		var new_page = '';
	        		var new_total_page = '';
	        		var total = 0;
        			$.ajax({
        				async: false,
	    				type: 'POST',
	    				data : {"no": no},
	    				url : '/greenfood/removeProduct',
	    				success: function(data) {
	    					var new_data = JSON.parse(data);
	    					console.log(new_data);
	    					for(var i=0;i<new_data.length;i++) {
	    						var quantity = parseInt(new_data[i].quantity);
	    						var price = parseInt(new_data[i].price);
	    						total += (quantity * price);
	    						new_page += '<tr>'
	    							+ '<td class="product-remove">'
	    							+ '<a href="#" class="btn-default text-large">&times;</a>'
	    							+ '</td>'
	    							+ '<td class="product-thumbnail"><a href="${contextPath}/productDetail?no='+new_data[i].no+'"><img class="cart-product-image" src="'+new_data[i].image+'" alt=""></a></td>'
	    							+ '<td class="product-name">'
	    							+ '<a href="${contextPath}/productDetail?no='+new_data[i].no+'">'+new_data[i].name+'</a>'
	    							+ '</td>'
	    							+ '<td class="product-price" data-title="Price">￦ '+new_data[i].price+'</td>'
	    							+ '<td class="product-quantity" data-title="Quantity">'
	    							+ '<div class="quantity">'
	    							+ '<label class="screen-reader-text">수량</label>'
	    							+ '<input type="button" id="quantity_minus_'+new_data[i].no+'" name="'+new_data[i].no+'" value="-" class="qty-minus qty-btn quantity_minus" data-quantity="minus" data-field="quantity">'
	    							+ '<input class="quantity_value input-text qty-text" id="quantity_'+new_data[i].no+'" type="number" name="quantity" value="'+new_data[i].quantity+'">'
	    							+ '<input type="button" id="quantity_plus_'+new_data[i].no+'" name="'+new_data[i].no+'"  value="+" class="qty-plus qty-btn quantity_plus" data-quantity="plus" data-field="quantity">'
	    							+ '</div>'
	    							+ '</td>'
	    							+ '<td class="product-subtotal" data-title="Total">￦ '+quantity * price+'</td>'
	    							+ '</tr>';
	    					}
	    					$("#mytbody").html(new_page);
	    					var delivery_included = total + 2500;
    						new_total_page += '<tr>'
								+ '<th class="w-50 font-weight-500 text-extra-dark-gray">총 상품가격</th>'
								+ '<td class="text-extra-dark-gray">￦ '+total+'</td>'
								+ '</tr>'
								+ '<tr class="shipping">'
								+ '<th class="font-weight-500 text-extra-dark-gray">배송비</th>'
								+ '<td class="text-extra-dark-gray">￦ 2500</td>'
								+ '</tr>'
								+ '<tr class="total-amount">'
								+ '<th class="font-weight-500 text-extra-dark-gray">총 주문금액</th>'
								+ '<td data-title="Total">'
								+ '<h6 class="d-block font-weight-500 mb-0 text-extra-dark-gray">￦ '+ delivery_included +'</h6>'
								+ '</td>'
								+ '</tr>';
	    					$("#totaltbody").html(new_total_page);
	    				}, 
	    				error : function(error) {
	    					alert('error : ' + JSON.stringify(error));
	    				}
        			});
        		});
        	});

        
	         $(document).ready(function() {
	        	$(document).on('click', '.quantity_plus', function() {
	        		var before_no = $(this).attr('name');
	        		var before_cnt = parseInt($("input[id=quantity_"+before_no+"]").val());
	        		var new_page = '';
	        		var new_total_page = '';
	        		var total = 0;
	    			$.ajax({
	    				async: false,
	    				type: 'POST',
	    				data : {"no": before_no,
	    					"cnt": before_cnt},
	    				url : '/greenfood/quantityUpdate',
	    				success : function(data) {
	    					var new_data = JSON.parse(data);
	    					console.log(new_data);
	    					for(var i=0;i<new_data.length;i++) {
	    						var quantity = parseInt(new_data[i].quantity);
	    						var price = parseInt(new_data[i].price);
	    						total += (quantity * price);
	    						new_page += '<tr>'
	    							+ '<td class="product-remove">'
	    							+ '<a href="#" class="btn-default text-large">&times;</a>'
	    							+ '</td>'
	    							+ '<td class="product-thumbnail"><a href="${contextPath}/productDetail?no='+new_data[i].no+'"><img class="cart-product-image" src="'+new_data[i].image+'" alt=""></a></td>'
	    							+ '<td class="product-name">'
	    							+ '<a href="${contextPath}/productDetail?no='+new_data[i].no+'">'+new_data[i].name+'</a>'
	    							+ '</td>'
	    							+ '<td class="product-price" data-title="Price">￦ '+new_data[i].price+'</td>'
	    							+ '<td class="product-quantity" data-title="Quantity">'
	    							+ '<div class="quantity">'
	    							+ '<label class="screen-reader-text">수량</label>'
	    							+ '<input type="button" id="quantity_minus_'+new_data[i].no+'" name="'+new_data[i].no+'" value="-" class="qty-minus qty-btn quantity_minus" data-quantity="minus" data-field="quantity">'
	    							+ '<input class="quantity_value input-text qty-text" id="quantity_'+new_data[i].no+'" type="number" name="quantity" value="'+new_data[i].quantity+'">'
	    							+ '<input type="button" id="quantity_plus_'+new_data[i].no+'" name="'+new_data[i].no+'"  value="+" class="qty-plus qty-btn quantity_plus" data-quantity="plus" data-field="quantity">'
	    							+ '</div>'
	    							+ '</td>'
	    							+ '<td class="product-subtotal" data-title="Total">￦ '+quantity * price+'</td>'
	    							+ '</tr>';
	    					}
	    					$("#mytbody").html(new_page);
	    					var delivery_included = total + 2500;
    						new_total_page += '<tr>'
								+ '<th class="w-50 font-weight-500 text-extra-dark-gray">총 상품가격</th>'
								+ '<td class="text-extra-dark-gray">￦ '+total+'</td>'
								+ '</tr>'
								+ '<tr class="shipping">'
								+ '<th class="font-weight-500 text-extra-dark-gray">배송비</th>'
								+ '<td class="text-extra-dark-gray">￦ 2500</td>'
								+ '</tr>'
								+ '<tr class="total-amount">'
								+ '<th class="font-weight-500 text-extra-dark-gray">총 주문금액</th>'
								+ '<td data-title="Total">'
								+ '<h6 class="d-block font-weight-500 mb-0 text-extra-dark-gray">￦ '+ delivery_included +'</h6>'
								+ '</td>'
								+ '</tr>';
	    					$("#totaltbody").html(new_total_page);
	    				},
	    				error : function(error) {
	    					alert('error : ' + JSON.stringify(error));
	    				}
	    			});
	        	 });
	        });
	         
	        
	         $(document).ready(function() {
	        	$(document).on('click', ".quantity_minus", function() {
	        		var before_no = $(this).attr('name');
	        		var before_cnt = parseInt($("input[id=quantity_"+before_no+"]").val());
	        		var new_page = '';
	        		var new_total_page = '';
	        		var total = 0;
	    			$.ajax({
	    				async: false,
	    				type: 'POST',
	    				data : {"no": before_no,
	    					"cnt": before_cnt},
	    				url : '/greenfood/quantityUpdate',
	    				success : function(data) {
	    					var new_data = JSON.parse(data);
	    					for(var i=0;i<new_data.length;i++) {
	    						var quantity = parseInt(new_data[i].quantity);
	    						var price = parseInt(new_data[i].price);
	    						total += (quantity * price);
	    						new_page += '<tr>'
	    							+ '<td class="product-remove">'
	    							+ '<a href="#" class="btn-default text-large">&times;</a>'
	    							+ '</td>'
	    							+ '<td class="product-thumbnail"><a href="${contextPath}/productDetail?no='+new_data[i].no+'"><img class="cart-product-image" src="'+new_data[i].image+'" alt=""></a></td>'
	    							+ '<td class="product-name">'
	    							+ '<a href="${contextPath}/productDetail?no='+new_data[i].no+'">'+new_data[i].name+'</a>'
	    							+ '</td>'
	    							+ '<td class="product-price" data-title="Price">￦ '+new_data[i].price+'</td>'
	    							+ '<td class="product-quantity" data-title="Quantity">'
	    							+ '<div class="quantity">'
	    							+ '<label class="screen-reader-text">수량</label>'
	    							+ '<input type="button" id="quantity_minus_'+new_data[i].no+'" name="'+new_data[i].no+'" value="-" class="qty-minus qty-btn quantity_minus" data-quantity="minus" data-field="quantity">'
	    							+ '<input class="quantity_value input-text qty-text" id="quantity_'+new_data[i].no+'" type="number" name="quantity" value="'+new_data[i].quantity+'">'
	    							+ '<input type="button" id="quantity_plus_'+new_data[i].no+'" name="'+new_data[i].no+'"  value="+" class="qty-plus qty-btn quantity_plus" data-quantity="plus" data-field="quantity">'
	    							+ '</div>'
	    							+ '</td>'
	    							+ '<td class="product-subtotal" data-title="Total">￦ '+quantity * price+'</td>'
	    							+ '</tr>';
	    					}
	    					$("#mytbody").html(new_page);
	    					var delivery_included = total + 2500;
    						new_total_page += '<tr>'
								+ '<th class="w-50 font-weight-500 text-extra-dark-gray">총 상품가격</th>'
								+ '<td class="text-extra-dark-gray">￦ '+total+'</td>'
								+ '</tr>'
								+ '<tr class="shipping">'
								+ '<th class="font-weight-500 text-extra-dark-gray">배송비</th>'
								+ '<td class="text-extra-dark-gray">￦ 2500</td>'
								+ '</tr>'
								+ '<tr class="total-amount">'
								+ '<th class="font-weight-500 text-extra-dark-gray">총 주문금액</th>'
								+ '<td data-title="Total">'
								+ '<h6 class="d-block font-weight-500 mb-0 text-extra-dark-gray">￦ '+ delivery_included +'</h6>'
								+ '</td>'
								+ '</tr>';
	    					$("#totaltbody").html(new_total_page);
	    				},
	    				error : function(error) {
	    					alert('error : ' + JSON.stringify(error));
	    				}
	    			});
	        	});
	        });
	         
	         
	         
	         $("#purchase").click(function() {
	        	 var id;
	        	 var name;
	        	 var phone;
	        	 var email;
	        	 $.ajax({
	    				async: false,
	    				type: 'POST',
	    				url : '/greenfood/selectMember',
	    				success : function(data) {
	    					var new_data = JSON.parse(data);
	    					console.log(new_data);
	    					id = new_data.id;
	    					name = new_data.name;
	    					phone = new_data.phone;
	    					email = new_data.email;
	    				},
	    				error : function(error) {
	    					alert('error : ' + JSON.stringify(error));
	    				}
	    			});
	        	 
	        	 	var totalprice = ${subtotal} + 2500;
					var IMP = window.IMP; // 생략가능
					IMP.init("imp59175231");
					// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
					// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
					IMP.request_pay({
						pg : 'html5_inicis', // version 1.1.0부터 지원.
						/*
						 'kakao':카카오페이,
						 html5_inicis':이니시스(웹표준결제)
						 'nice':나이스페이
						 'jtnet':제이티넷
						 'uplus':LG유플러스
						 'danal':다날
						 'payco':페이코
						 'syrup':시럽페이
						 'paypal':페이팔
						 */
		
						pay_method : 'card',
						/*
						 'samsung':삼성페이,
						 'card':신용카드,
						 'trans':실시간계좌이체,
						 'vbank':가상계좌,
						 'phone':휴대폰소액결제
						 */
						merchant_uid : 'merchant_' + new Date().getTime(),
						name : name + ' 님의 주문',
						//결제창에서 보여질 이름
						amount : totalprice,
						//가격
						buyer_email : email,
						buyer_name : name,
						buyer_tel : phone,
						buyer_addr : '서울특별시 강남구 삼성동',
						buyer_postcode : '123-456',
						m_redirect_url : '${contextPath}/myinfo'
					/*
					 모바일 결제시,
					 결제가 끝나고 랜딩되는 URL을 지정
					 (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
					 */
					}, function(rsp) {
						console.log(rsp);
						if (rsp.success) {
							var msg = '결제가 완료되었습니다.';
							msg += '고유ID : ' + rsp.imp_uid;
							msg += '상점 거래ID : ' + rsp.merchant_uid;
							msg += '결제 금액 : ' + rsp.paid_amount;
							msg += '카드 승인번호 : ' + rsp.apply_num;
						} else {
							var msg = '결제에 실패하였습니다.';
							msg += '에러내용 : ' + rsp.error_msg;
						}
						alert(msg);
					});
				});
       	</script>
    </body>
</html>