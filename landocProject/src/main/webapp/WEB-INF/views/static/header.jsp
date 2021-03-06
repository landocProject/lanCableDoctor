<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header-section clearfix">
   <c:url var="home" value="home.do" />
   <a href="${home }" class="site-logo">
      <img src="<%=request.getContextPath()%>/resources/img/mainlogo.png" alt="" style="width: 100px; height: 100px;">
   </a>
   <ul class="main-menu">
      <li><a href="insertHpView.do">병원등록</a></li>
      
      <c:choose>
         <c:when test="${empty loginClient && empty loginDrClient }">
            <c:url var="loginPage" value="loginView.do">
            </c:url>
         <li><a href="#" onclick="noUser();">리뷰쓰기</a></li>
         </c:when>
         <c:when test="${empty loginClient && !empty loginDrClient}">
         <li><a href="#" onclick="doctorUser();">리뷰쓰기</a></li>
         </c:when>
         <c:when test="${empty loginClient && !empty loginDrClient && (loginDrClient.approval eq 'N' || loginDrClient.approval eq 'X')}">
         <li><a href="#" onclick="noApproval();">리뷰쓰기</a></li>
         </c:when>
         <c:otherwise>
         <li><a href="hpReviewInsert.do">리뷰쓰기</a></li>
         </c:otherwise>            
      </c:choose>
      <c:choose>
         <c:when test="${empty loginClient && !empty loginDrClient && (loginDrClient.approval eq 'N' ||  loginDrClient.approval eq 'X')}">
         <li><a href="#" onclick="noApproval();">의사에게 물어봐</a></li>
         <li><a href="#" onclick="noApproval();">의사추천 영양제</a></li>
         </c:when>
         <c:otherwise>
         <li><a href="askDr.do">의사에게 물어봐</a></li>
         <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=7">의사추천 영양제</a></li>
         </c:otherwise>            
      </c:choose>
      
      <!-- <li><a href="askDr.do">의사에게 물어봐</a></li>
      <li><a href="productIndex.do">의사추천 영양제</a></li> -->
      <div class="header-right" style="padding-top: 0%; padding-bottom: 0%;">
      <c:choose>
         <c:when test="${!empty loginClient && empty loginDrClient  && loginClient.cNo ne 'C00' }">
         <div class="user-panel">
            <li>
               <a href="#"><c:out value="${loginClient.nickName }님 환영합니다"/></a>
               <ul class="sub-menu" style="left: 0px;">
                  <li><a href="clientMypage.do">나의활동</a></li>
                  <li><a href="mypagePoint.do">나의 포인트</a></li>
                  <li><a href="clientCart.do">장바구니</a></li>
                  <li><a href="modifyClientView.do">계정설정</a></li>
                  <li><a href="logout.do">로그아웃</a></li>
               </ul>
            </li>
         </div>
         </c:when>
         <c:when test="${empty loginClient && !empty loginDrClient && loginDrClient.approval eq 'Y'}">
         <div class="user-panel">
            <li>
               <a href="#"><c:out value="${loginDrClient.userName }님 환영합니다"/></a>
               <ul class="sub-menu" style="left: 0px;">
                  <li><a href="doctorMypage.do">나의활동</a></li>
                  <li><a href="drMypagePoint.do">나의 포인트</a></li>
                  <li><a href="clientCart.do">장바구니</a></li>
                  <li><a href="modifyDrClientView.do">계정설정</a></li>
                  <li><a href="logout.do">로그아웃</a></li>
               </ul>
            </li>   
         </div>
         </c:when>
         <c:when test="${empty loginClient && !empty loginDrClient && (loginDrClient.approval eq 'N' || loginDrClient.approval eq 'X')}">
         <div class="user-panel">
            <li>
               <a href="#"><c:out value="${loginDrClient.userName }님 환영합니다"/></a>
               <ul class="sub-menu" style="left: 0px;">
                  <li><a href="modifyDrClientView.do">계정설정</a></li>
                  <li><a href="logout.do">로그아웃</a></li>
               </ul>
            </li>   
         </div>
         </c:when>
         <c:when test="${!empty loginClient && loginClient.cNo eq 'C00'}">
         <div class="user-panel">
            <li>
               <a href="#"><c:out value="${loginClient.nickName }님 환영합니다"/></a>
               <ul class="sub-menu" style="left: 0px;">
                  <c:url var="clientList" value="clientList.do">
                      <c:param name="searchCondition" value="noneCondition"/>
                      <c:param name="searchValue" value="noneValue"/>
                   </c:url>
                  <li><a href="${clientList }">관리자 페이지</a></li>
                  <li><a href="logout.do">로그아웃</a></li>
               </ul>
            </li>
         </div>
         </c:when>
         <c:otherwise>
         <div class="user-panel">
            <li><a href="loginView.do">로그인</a></li>
            <span>|</span>
            <li><a href="joinDrView.do" style="color: #a82400;">의사 회원가입</a></li>
            <span>|</span>
            <li><a href="joinClientView.do" style="color: #a82400;">일반 회원가입</a></li>
         </div>
         </c:otherwise>
      </c:choose>
      </div>
   </ul>
   
    <script>
         function noApproval(){
            alert("승인을 받지 않으셨습니다.");
         }
         function noUser(){
        	 alert("일반 회원로그인이 필요한 서비스입니다.");
        	 location.href="home.do";
         }
         function doctorUser(){
        	 alert("일반 회원만 이용가능합니다.");
         }
     </script>

</header>

















