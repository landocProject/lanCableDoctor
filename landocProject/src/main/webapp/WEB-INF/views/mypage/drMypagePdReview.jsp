<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false" %> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>상품리뷰</title>
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
</head>

<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp"%>
   <div class="container" style="margin-top: 80px; text-align: center">
      <div class="p-4" style="width: 1000px; display: inline-block;">



         <div class="review-list-title text-left" style="font-size: 30px;">
            <a href="doctorMypage.do"
               style="color: #0071ce; letter-spacing: -0.5px;"> 나의 리뷰 </a> > <strong
               class="ml-2">상품리뷰</strong>

         </div>


         <c:if test="${empty pdReviewList}">
          <div class="color9b text-center" style="font-size: 1.313rem; margin-top: 73.7px;letter-spacing: -0.8px;">
                <div class="my-3 text-center">
                    <p class="m-0">회원님의 리뷰가 아직 없습니다.</p>
                </div>
           </div>
         </c:if>
         <c:if test="${not empty pdReviewList}">
         <c:forEach var="r" items="${pdReviewList}">
            <div class="card mt-3 mb-3 text-left">
               <!-- for문 돌려서 리스트 뽑아낼 때 data-targer, href 숫자 증가 시키기-->
               <div class="card-header newreview p-4" data-toggle="collapse"
                  data-target="#collapse-${r.pdReviewNo}"
                  href="#collapse-${r.pdReviewNo}" aria-expanded="false"
                  aria-controls="collapse-${r.pdReviewNo}" style="cursor: pointer;">
                  <div class="card-title m-0">
                     <div class="d-flex align-items-center justify-content-between">
                        <div class="color49 font-weight-bold" style="font-size: 21px;">
                           ${r.pdName}

                           <div class="color9b" style="font-size: 12px;">주문 날짜 :
                              ${r.orderDate}</div>
                        </div>
                        <img
                           src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg"
                           class="img-fluid" alt="Responsive image"
                           style="width: 24px; height: 24px;">
                     </div>
                  </div>
               </div>
               <!-- for문 돌려서 리스트 뽑아낼 때 div id 숫자 증가 시키기-->
               <div id="collapse-${r.pdReviewNo}" class="card-body collapse p-4">

                  <div class="row">

                     <div class="col-9">
                        <div class="color49 toast-message mb-4" style="font-size: 14px;">
                           ${r.pdReviewContent}</div>
						
						 <c:if test="${r.renameFile ne null}">
						<div class="color49 toast-message mb-4" style="font-size: 14px;">
                           <img src="/projectFiles/${r.renameFile}" width="430px" height="300px">
                        </div>
                        </c:if>
                     </div>
                  </div>

                  <div style="float: right;">
                  <c:url var="updateReview" value="drUpdateReviewView.do">
                     <c:param name="orderNo" value="${r.orderNo}"/>
                     <c:param name="pdNo" value="${r.pdNo}"/>
                  </c:url>
                     <a href="${updateReview}" class=""> 수정 </a> | <a href="productDetail.do?pdNo=${r.pdNo}"
                        class="review-list-detail"> 재구매 </a>
                  </div>
               </div>
            </div>
         </c:forEach>
         </c:if>

         <div style="position: fixed; bottom: 70px; right: 100px; z-index: 999;">
            <a href="https://pf.kakao.com/_VAryxb" target="_blank"> <img
               src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/katalk_Q.png"
               style="width: auto; height: 80px;">
            </a>
         </div>
      </div>
   </div>
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
				<c:url var="blistBack" value="drPdReview.do">
					<c:param name="page" value="${pi.currentPage -1 }" />
				</c:url>
				<li style="width: 30px;"><a href="${blistBack}"
					aria-label="Previous"> <span aria-hidden="true">«</span>
				</a></li>
			</c:if>

			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				<c:if test="${p eq pi.currentPage }">
					<li class="active" style="width: 30px;"><a
						href="#" style="color:#a82400;">${p}</a></li>
				</c:if>
				<c:if test="${p ne pi.currentPage }">
					<c:url var="blistCheck" value="drPdReview.do">
						<c:param name="page" value="${p }" />
					</c:url>
					<li class="active" style="width: 30px;"><a
						href="${blistCheck }">${p}</a></li>
				</c:if>

			</c:forEach>
			<c:if test="${pi.currentPage eq pi.maxPage }">
				<li class=disabled style="width: 30px;"><a href="#"
					aria-label="Previous"> <span aria-hidden="true">»</span>
				</a></li>
			</c:if>


			<c:if test="${pi.currentPage lt pi.maxPage }">
				<c:url var="blistNext" value="drPdReview.do">
					<c:param name="page" value="${pi.currentPage +1 }" />
				</c:url>
				<li style="width: 30px;"><a href="${blistNext}"
					aria-label="Previous"> <span aria-hidden="true">»</span>
				</a></li>
			</c:if>
		</ul>
	</nav>
	<!--pagination end-->
 
 	<script type="text/javascript">
	 	var msg ='<c:out value="${msg}"/>';
		if(msg != ''){
			alert(msg);
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