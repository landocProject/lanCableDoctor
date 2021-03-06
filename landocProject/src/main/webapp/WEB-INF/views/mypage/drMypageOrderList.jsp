<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문목록</title>
<meta charset="UTF-8">
<meta name="description" content="SolMusic HTML Template">
<meta name="keywords" content="music, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="<%=request.getContextPath()%>/resources/img/favicon.ico"
	rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css" />


<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog {
	text-align: left;
	vertical-align: middle;
	position: absolute;
	left: 0;
}

.modal-content {
	width: 1200px;
}

#posit {
	position: relative;
}

.period_btn {
	font-size: 14px;
	width: 58px;
	background-color: darkgray;
	color: whitesmoke;
}

.first {
	border-right: solid lightgray 1px;
}

.orderer {
	background-color: #f8f8f8;
	color: #9b9b9b;
	text-align: center;
	border-right: solid lightgray 1px;
	width: 120px;
}
</style>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>
	<div class="container" style="text-align: center;">
		<div style="width: 1000px; display: inline-block">
			<div class="row px-3 py-5" id="posit">
				<!-- modal start-->

				<div id="ordermodal" class="modal fade show" tabindex="-1"
					role="dialog" aria-modal="true"
					style="padding-right: 16px; display: none; margin-left: 170px;">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header px-4 py-1 d-flex align-items-center">

								<h5 class="modal-title">주문 상세정보</h5>
								<button class="btn-transparent" type="button"
									data-dismiss="modal" aria-label="Close" style="border: 1px; background-color: white;">
									<span aria-hidden="true"
										style="font-size: 2.5rem; color: #9b9b9b;">×</span>
								</button>
							</div>
							<div class="modal-body p-4">
								<div class="pl-3 pt-2 ">
									<div class="contview">
										<table class="table w-100 border-bottom"
											style="width: 1120px;" id="orderInfo">

											<thead>
												<tr
													style="background-color: #f8f8f8; color: #9b9b9b; text-align: center;">
													<th style="width: 200px;">상품번호 (주문번호)</th>
													<th>상품명</th>
													<th style="width: 250px;">상품금액 (개수)</th>
													<th style="width: 150px;">할인금액</th>
													<th style="width: 150px;">주문상태</th>
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>

										<div class="myauction-layer-columns">
											<!-- 배송지정보 -->
											<div class="myauction-layer-column-left"
												style="display: inline-block;">

												<h3 class="in-layer-tit">
													<img
														src="https://pics.auction.co.kr/myauction/2012/tit_shipping_addr_info.gif"
														alt="배송지정보" title="">
												</h3>

												<table class="table  border-bottom" style="width: 550px;"
													id="clientInfo">

													<tbody>
														
													</tbody>
												</table>


											</div>
											<!-- //배송지정보 -->



											<!-- 결제정보 -->
											<div class="myauction-layer-column-right"
												style="display: inline-block;">
												<h3 class="in-layer-tit">
													<img
														src="https://pics.auction.co.kr/myauction/2012/tit_payment_info.gif"
														alt="결제정보" title="">

												</h3>
												<div class="order-detail-expandable">
													<table class="table  border-bottom" id="payInfoTbl"
														style="width: 550px;" id="payInfo">


														<tbody id="payInfoBody">


														</tbody>
													</table>

												</div>
											</div>
											<!-- //결제정보 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--modal end-->
			</div>



			<div class="col-12 text-left">

				<div class="point-breadcrumb text-left">
					<a href="doctorMypage.do"
						style="color: #0071ce; letter-spacing: -0.5px; font-size: 30px;">
						나의 주문조회 </a> > <strong class="ml-2" style="font-size: 30px;">주문목록</strong>
				</div>

				<!-- <div class="point-count-title mt-4 text-left" style="font-size: 30px;">
                         총 2건의 주문내역
                    </div> -->

				<!--검색-->
				<!-- <div class="point-count-title mt-4 text-left" style="display: flex;"> -->
				<!-- 기간별 조회 -->

				<div class="select-wrap"
					style="float: left; padding-top: 40px; padding-bottom: 10px;">
					<c:url var="today" value="drDateSearch.do">
						<c:param name="date" value="today" />
					</c:url>
					<c:url var="weeks" value="drDateSearch.do">
						<c:param name="date" value="weeks" />
					</c:url>
					<c:url var="onemonth" value="drDateSearch.do">
						<c:param name="date" value="onemonth" />
					</c:url>
					<c:url var="threemonth" value="drDateSearch.do">
						<c:param name="date" value="threemonth" />
					</c:url>
					<c:url var="sixmonth" value="drDateSearch.do">
						<c:param name="date" value="sixmonth" />
					</c:url>
					<input type="button" onclick="location.href='${today}'"
						name="btnTerm1D" value="오늘" id="btnTerm1D"
						class="btn btn-blackcontent w-10 p-1 period_btn"> <input
						type="button" onclick="location.href='${weeks}'" name="btnTerm1W"
						value="1주일" id="btnTerm1W"
						class="btn btn-blackcontent w-10 p-1 period_btn"> <input
						type="button" onclick="location.href='${onemonth}'"
						name="btnTerm1M" value="1개월" id="btnTerm1M"
						class="btn btn-blackcontent w-10 p-1 period_btn"> <input
						type="button" onclick="location.href='${threemonth}'"
						name="btnTerm3M" value="3개월" id="btnTerm3M"
						class="btn btn-blackcontent w-10 p-1 period_btn"> <input
						type="button" onclick="location.href='${sixmonth}'"
						name="btnTerm6M" value="6개월" id="btnTerm6M"
						class="btn btn-blackcontent w-10 p-1 period_btn">
				</div>



				<!--기간검색-->

				<!-- 년/월/일 -->
				<div class="select-wrap"
					style="float: right; padding-top: 40px; padding-bottom: 10px; height: 30px;">
					<form action="drDateSearch2.do" method="post">
						<input type="date" id="startDate" name="startDate"
							required="required"> <span>~</span> <input type="date"
							id="endDate" name="endDate" required="required"> <input
							type="submit" name="btnTerm1D" value="조회" id="selectDate"
							class="btn btn-blackcontent w-10 p-1 period_btn">
					</form>
				</div>

				<!--기간 end-->

				<!-- </div> -->

				<!--검색 end-->



				<table class="table w-100 border-bottom"
					style="margin-bottom: 30px;">
					<thead>
						<tr
							style="background-color: #f8f8f8; color: #9b9b9b; text-align: center;">
							<th scope="col" class="p-3" style="width: 210px;">주문일(결제금액)</th>
							<th scope="col" class="p-3">상품명/주문옵션/주문번호</th>
							<th scope="col" class="p-3">주문상태</th>
						</tr>

					</thead>
					<c:if test="${empty orderList}">
						<tbody>
								<tr class="color49"
									style="font-size: 14px; color: rgba(0, 0, 0, 0.651);">
									<td class="p-3"
										style="text-align: center; border-right: solid 1px; border-color: lightgray; vertical-align: middle;"
										rowspan="2" colspan="3">주문정보가 없습니다.</td>
								</tr>
						</tbody>
					</c:if>
					<c:if test="${not empty orderList}">
					<!--1번째 글-->
					<c:forEach var="o" items="${orderList}">
						<tbody>
							<tr class="color49"
								style="font-size: 14px; color: rgba(0, 0, 0, 0.651);">
								<td class="p-3"
									style="text-align: center; border-right: solid 1px; border-color: lightgray; vertical-align: middle;"
									rowspan="2">
									<div class="date-num">
										<strong>${o.orderDate}</strong>


									</div>

									<div class="total-charge">
										결제금액: <strong class="charge"><span class="num">${o.amountPrice}</span>원</strong>
									</div>

									<div class="detail-link">
										<a href="#" onclick="orderDetail(${o.orderNo},${o.pdNo});" class="link"
											data-toggle="modal" data-target="#ordermodal">주문상세보기</a>

									</div>



								</td>
								<td class="product"
									style="border-right: solid 1px; border-color: lightgray; vertical-align: middle;">
									<div class="product-block">
										<a href="productDetail.do?pdNo=${o.pdNo}" target="_blank" class="product-thumbnail"
											style="float: left;"> <img
											src="/projectFiles/${o.thumbnail}"
											style="width: 60px; height: 60px" alt=""></a>
										<div class="product-content" style="padding-left: 77px;">
											<div class="product-name">
												<a href="productDetail.do?pdNo=${o.pdNo}" target="_blank">${o.pdName}</a>
											</div>


											<div class="product-order-num">
												<span class="label">주문번호</span> ${o.orderNo}
											</div>

										</div>
									</div>
								</td>

								<td class="status"
									style="vertical-align: middle; text-align: center;"><strong
									class="status-msg">${o.oName}</strong> <!-- <a href="#"><img src="#" alt="배송조회"></a> -->
								</td>
							</tr>

							<tr class="color49"
								style="font-size: 14px; color: rgba(0, 0, 0, 0.651);">
								<td class="actions" colspan="2"
									style="border-bottom: solid 1px; color: lightgray; padding-top: 5px; padding-bottom: 5px;">

									<div class="links">
										<c:url var="orderQnaInsert" value="drOrderQnaInsertView.do">
											<c:param name="orderNo" value="${o.orderNo}" />
											<c:param name="pdNo" value="${o.pdNo}" />
										</c:url>
										<button type="button"
											onclick="location.href='${orderQnaInsert}'" id="edit_profile"
											class="btn btn-blackcontent w-10 p-1"
											style="font-size: 13px; background-color: #0071ce; color: whitesmoke; float: left;">판매자에게
											문의하기</button>
									</div>
									<div class="buttons" style="float: right;">
										<c:if test="${o.oCode ge 1 && o.oCode le 3}">
											<button type="button" onclick="cancel(${o.orderNo},${o.pdNo})" id="edit_profile"
											class="btn btn-blackcontent w-10 p-1"
											style="font-size: 13px; background-color: #0071ce; color: whitesmoke">주문취소</button>

										</c:if>
										<c:if test="${o.oCode ge 4 && o.oCode le 5}">
											<button type="button" onclick="pdreturn(${o.orderNo},${o.pdNo})" id="edit_profile"
												class="btn btn-blackcontent w-10 p-1"
												style="font-size: 13px; background-color: #0071ce; color: whitesmoke">반품신청</button>
											<button type="button" onclick="change(${o.orderNo},${o.pdNo})" id="edit_profile"
												class="btn btn-blackcontent w-10 p-1"
												style="font-size: 13px; background-color: #0071ce; color: whitesmoke">교환신청</button>
											<c:url var="pdReviewInset" value="drPdReviewInsertView.do">
												<c:param name="orderNo" value="${o.orderNo}" />
												<c:param name="pdNo" value="${o.pdNo}" />
											</c:url>
											<button type="button"
												onclick="location.href='${pdReviewInset}'" id="edit_profile"
												class="btn btn-blackcontent w-10 p-1"
												style="font-size: 13px; background-color: #0071ce; color: whitesmoke">구매후기</button>
										</c:if>
										<c:if test="${o.oCode eq 14 }">
										<c:url var="updateReview" value="updateReviewView.do">
											<c:param name="orderNo" value="${o.orderNo}"/>
											<c:param name="drNo" value="${o.drNo }"/>
											<c:param name="pdNo" value="${o.pdNo}" />
										</c:url>
											<button type="button" id="edit_profile" onclick="location.href='${updateReview}'"
												class="btn btn-blackcontent w-10 p-1"
												style="font-size: 13px; background-color: #0071ce; color: whitesmoke">리뷰수정</button>
										</c:if>
									</div>
								</td>
							</tr>

						</tbody>
					</c:forEach>
					</c:if>
				</table>
			</div>

		</div>
	</div>
	</div>

	<script>
		function cancel(value,pdNo){
			var orderNo =value;
		
			var sellflag = confirm("주문취소 하시겠습니까?");
	        if(sellflag){
	           location.href="drOrderCancel.do?orderNo="+orderNo+"&oCode=15&pdNo="+pdNo;
	        }
		}
		
		function pdreturn(value,pdNo){
			var orderNo = value;
		
			var sellflag = confirm("반품요청 하시겠습니까?");
	        if(sellflag){
	      		location.href="drOrderCancel.do?orderNo="+orderNo+"&oCode=6&pdNo="+pdNo;
	        }
		}
		
		function change(value,pdNo){
			var orderNo = value;
		
			var sellflag = confirm("교환요청 하시겠습니까?");
	        if(sellflag){
	           location.href="drOrderCancel.do?orderNo="+orderNo+"&oCode=10&pdNo="+pdNo;
	        }
		}
	</script>

	<!-- 페이징 처리 부분 -->
	<!--paginnation start-->
	<nav aria-label="Page navigation">
		<ul class="pagination"
			style="justify-content: center; padding-bottom: 30px;">
			<!-- disabled가 있으면 마우스 커서가 금지표시로 바뀐다. -->
			<c:if test="${pi.currentPage eq 1 }">
				<li class=disabled style="width: 30px;"><a href="#"
					aria-label="Previous"> <span aria-hidden="true">«</span>
				</a></li>
			</c:if>

			<c:if test="${pi.currentPage gt 1 }">
				<c:if test ="${empty date && empty date1}">
				<c:url var="blistBack" value="drMyOrderList.do">
					<c:param name="page" value="${pi.currentPage -1 }" />
				</c:url>
				</c:if>
				
				<c:if test="${!empty date}">
				<c:url var="blistBack" value="drDateSearch.do">
					<c:param name="page" value="${pi.currentPage -1 }" />
					<c:param name="date" value="${date}" />
				</c:url>
				</c:if>
				
				<c:if test="${!empty data1 && !empty date2 }">
				<c:url var="blistBack" value="drDateSearch2.do">
					<c:param name="page" value="${pi.currentPage -1 }" />
					<c:param name="startDate" value="${date1}" />
					<c:param name="endDate" value="${date2}" />
				</c:url>
				</c:if>
				
				<li style="width: 30px;"><a href="${blistBack}"
					aria-label="Previous"> <span aria-hidden="true">«</span>
				</a>
				</li>
			</c:if>

			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				<c:if test="${empty date && empty date1}">
				<c:if test="${p eq pi.currentPage }">
					<li class="active" style="width: 30px;"><a
						href="#" style="color:#a82400;">${p}</a></li>
				</c:if>
				<c:if test="${p ne pi.currentPage }">
					<c:url var="blistCheck" value="drMyOrderList.do">
						<c:param name="page" value="${p }" />
					</c:url>
					<li class="active" style="width: 30px;"><a
						href="${blistCheck }">${p}</a></li>
				</c:if>
				</c:if>
				
				<c:if test="${!empty date}">
				<c:if test="${p eq pi.currentPage }">
					<li class="active" style="width: 30px;"><a
						href="#" style="color:#a82400;">${p}</a></li>
				</c:if>
				<c:if test="${p ne pi.currentPage }">
					<c:url var="blistCheck" value="drDateSearch.do">
						<c:param name="page" value="${p }" />
						<c:param name="date" value="${date}" />
					</c:url>
					<li class="active" style="width: 30px;"><a
						href="${blistCheck }">${p}</a></li>
				</c:if>
				</c:if>
				
				<c:if test="${!empty date1 && !empty date2}">
				<c:if test="${p eq pi.currentPage }">
					<li class="active" style="width: 30px;"><a
						href="#" style="color:#a82400;">${p}</a></li>
				</c:if>
				<c:if test="${p ne pi.currentPage }">
					<c:url var="blistCheck" value="drDateSearch2.do">
						<c:param name="page" value="${p }" />
						<c:param name="startDate" value="${date1}" />
						<c:param name="endDate" value="${date2}" />
					</c:url>
					<li class="active" style="width: 30px;"><a
						href="${blistCheck }">${p}</a></li>
				</c:if>
				</c:if>
			</c:forEach>
			<c:if test="${pi.currentPage eq pi.maxPage }">
				<li class=disabled style="width: 30px;"><a href="#"
					aria-label="Previous"> <span aria-hidden="true">»</span>
				</a></li>
			</c:if>


			<c:if test="${pi.currentPage lt pi.maxPage }">
				<c:if test ="${empty date && empty date1}">
					<c:url var="blistNext" value="drMyOrderList.do">
						<c:param name="page" value="${pi.currentPage +1 }" />
					</c:url>
				</c:if>
				
				<c:if test="${!empty date }">
					<c:url var="blistNext" value="drDateSearch.do">
						<c:param name="page" value="${pi.currentPage +1 }" />
						<c:param name="date" value="${date}" />
					</c:url>
				</c:if>
				
				<c:if test="${!empty date1 && !empty date2}">
					<c:url var="blistNext" value="drDateSearch2.do">
						<c:param name="page" value="${pi.currentPage +1 }" />	
						<c:param name="startDate" value="${date1}" />
						<c:param name="endDate" value="${date2}" />
					</c:url>
				</c:if>
				
				
				<li style="width: 30px;"><a href="${blistNext}"
					aria-label="Previous"> <span aria-hidden="true">»</span>
				</a></li>
			</c:if>
			
	
		</ul>
	</nav>



	<!--pagination end-->

	<script>
			function orderDetail(b,n){
			                 
				var orderNo=b;
				var pdNo=n;
				$.ajax({
					url:"drOrderDetail.do",
					data:{orderNo:orderNo,pdNo:pdNo},
					dataType:"json",
					success:function(data){
						$tableBody = $("#orderInfo tbody");
						$tableBody.html("");
				
						
					
						
						var $tr;
						var $orderNo;
						var $pdName;
						var $priceAndCount;
						var $discoundPrice;
						var $oState;
					
							$tr = $("<tr>");
							$orderNo = $("<td rowspan='2' class='first'>").text(data.pdNo+"("+data.orderNo+")");
							$pdName = $("<td class='first'>").text(data.pdName);
							$priceAndCount = $("<td rowspan='2' class='first'>").text(data.countMultiple+"원("+data.opCount+")개");
							$discountPrice = $("<td rowspan='2' class='first' >").text(data.discountPrice+"원");
							$oState = $("<td rowspan='2'>").text(data.oName);
							
							$tr.append($orderNo);
							$tr.append($pdName);
							$tr.append($priceAndCount);
							$tr.append($discountPrice);
							$tr.append($oState);
							$tableBody.append($tr);
						
						var $tr2;
						var $price2;
							
							$tr2=$("<tr>");
							$price2=$("<td>").text(data.originPrice+"원");
							$tr2.append($price2);
							$tableBody.append($tr2);
						
						$tableBody2 =$("#clientInfo tbody");
						$tableBody2.html("");
						
						var $orderer;
						var $phone;
						var $address;
						var $tr3;
						var $tr4;
						var $tr5;
						
						
						$tr3 = $("<tr>");
						$tr4 = $("<tr>");
						$tr5 = $("<tr>");
						$th1 = $("<th>").text("받으시는분").addClass("orderer");
						$orderer=$("<td>").text(data.cName);
						$th2 = $("<th>").text("연락처").addClass("orderer");
						$phone=$("<td>").text(data.cPhone);
						$th3 = $("<th>").text("주소").addClass("orderer");
						$address=$("<td>").text("["+data.cPostCode+"]"+data.cAddress);
						
						$tr3.append($th1);
						$tr3.append($orderer);
						$tableBody2.append($tr3);
						
						$tr4.append($th2);
						$tr4.append($phone);
						$tableBody2.append($tr4);
							
						$tr5.append($th3);
						$tr5.append($address);
						$tableBody2.append($tr5);
						
						$tableBody3 =$("#payInfoBody");
						$tableBody3.html("");
						var $resultPrice;
						var $paymentWay;
						var $productPrice;
						var $amountDisCount;
						var $usePoint;
						
						var $tr6=$("<tr>");
						var $tr7=$("<tr>");
						var $tr8=$("<tr>");
						var $tr9=$("<tr>");
						var $tr10=$("<tr>");
						
						var $th4=$("<th>").text("최종결제금액").addClass("orderer");
						$resultPrice=$("<td style='text-align: right;'>").text(data.amountPrice+"원");
						var $th5 = $("<th>").text("결제수단").addClass("orderer");
						$paymentWay=$("<td style='text-align: right;'>").text(data.paymentWay);
						var $th6 = $("<th>").text("상품금액").addClass("orderer");
						$productPrice=$("<td style='text-align: right;'>").text(data.originPrice +"원");
						var $th7 = $("<th>").text("총할인금액").addClass("orderer");
						$amountDisCount=$("<td style='text-align: right;'>").text("-"+data.discountPrice);
						var $th8 = $("<th>").text("사용포인트").addClass("orderer");
						$usePoint=$("<td style='text-align: right;'>").text(data.usePoint);
						
						$tr6.append($th4);
						$tr6.append($resultPrice);
						$tableBody3.append($tr6);
						
						$tr7.append($th5);
						$tr7.append($paymentWay);
						$tableBody3.append($tr7);
							
						$tr8.append($th6);
						$tr8.append($productPrice);
						$tableBody3.append($tr8);
						
						$tr9.append($th7);
						$tr9.append($amountDisCount);
						$tableBody3.append($tr9);
						
						$tr10.append($th8);
						$tr10.append($usePoint);
						$tableBody3.append($tr10);
		              
			         },
			     	error:function(request, status, errorData){
	                     alert("error code: " + request.status + "\n"
	                           +"message: " + request.responseText
	                           +"error: " + errorData);
	                  }    
					
				})
			}
	 </script>



	<%@ include file="../static/footer.jsp"%>
	<!--====== Javascripts & Jquery ======-->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
</body>
</html>