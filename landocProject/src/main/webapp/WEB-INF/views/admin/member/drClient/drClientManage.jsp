<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String msg = (String)request.getParameter("msg");
%>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>drClientManage</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
       /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 100%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width: auto; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}


        /*오른쪽 영역 안 검색창 부분*/
        #searchArea{text-align: center;}
        #searchArea select{width: 150px; height: 32px; font-weight: 600;}
        #searchArea{height: 60px;}
        #searchArea input{height: 26px; width: 300px;}   
        #searchArea button{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #searchArea button:hover{background-color:  #007ee5; color: white;}
   </style>

</head>
<body>
   
   <jsp:include page="../../../common/adminSide.jsp"/>
   
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>의사 회원 관리</h3>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
            	<option>----------</option>
           		<c:if test="${condition != null && condition eq 'drNo' }">
                <option value="drNo" selected>회원 번호</option>
                <option value="userName">회원 이름</option>
                </c:if>
                <c:if test="${condition != null && condition eq 'userName' }">
                <option value="drNo">회원 번호</option>
                <option value="userName" selected>회원 이름</option>
                </c:if>
                <c:if test="${condition != null && condition eq 'noneCondition' }">
                <option value="drNo">회원 번호</option>
                <option value="userName">회원 이름</option>
                </c:if>
            </select>
            <c:if test="${value != null && value ne 'noneValue'}">
            	<input type="search" id="searchValue" value="${value }" onchange="validateSearch();">           
            </c:if>
            
            <c:if test="${value != null && value eq 'noneValue'}">
            	<input type="search" id="searchValue" onchange="validateSearch();">           
            </c:if>
            <button onclick="searchDrClient();">검색하기</button>
        </div>
        
         <script>
		/* 검색어 입력 keyup함수*/
		function validateSearch(){
			if($("#searchCondition").val() == "drNo"){
				console.log($("#searchCondition").val());
				
				var inputValue = $("#searchValue").val();
				console.log(inputValue);
				
				var expr = /^[a-zA-Z0-9 _]{1,9}$/;
				
				if(!expr.test(inputValue)){
					alert("9자리 미만의 숫자를 입력해주세요");
				}
			}else if($("#searchCondition").val() == "userName"){
				console.log($("#searchCondition").val());
				
				var inputValue = $("#searchValue").val();
				console.log(inputValue);
				
				var expr = /^[가-힣ㄱ-ㅎ _]{1,4}$/;
				
				if(!expr.test(inputValue)){
					alert("한글로 1~4글자로 입력해주세요.");
				}
			}
			
		}
	</script>



   <script>
      function searchDrClient(){
         
         var searchCondition = $("#searchCondition").val();
         console.log(searchCondition);
         var searchValue = $("#searchValue").val();
         console.log(searchValue);
        
       	 if(searchValue == ""){
       		 alert("검색어를 입력해 주세요!");
       		 return;
       	 }
       	 if(searchCondition =="----------" && searchValue != null){
       		 alert("검색조건을 선택해 주세요!");
       		 return;
       	 }
         
         
         location.href="drClientList.do?searchCondition=" + searchCondition + "&searchValue=" + searchValue;
      }
      </script>

        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">회원 번호</th>
                <th class="firstLine">아이디</th>
                <th class="firstLine">이름</th>
                <!-- <th class="firstLine">생년월일</th> -->
                <th class="firstLine">휴대폰 번호</th>
                <th class="firstLine">이메일</th>
                <th class="firstLine">포인트</th>
                <!-- <th class="firstLine">우편번호</th>
                <th class="firstLine">상세주소</th> -->
                <th class="firstLine" style="width:200px;">소속병원</th>
                <th class="firstLine">주분야</th>
               <!--  <th class="firstLine">프로필</th> -->
                <!-- <th class="firstLine">마케팅 여부</th> -->
                <th class="firstLine">승인대기 여부</th>
                <th class="firstLine">가입 날짜</th>
                <th class="firstLine">가입상태</th>
                <th class="firstLine">수정 및 변경</th>
            </tr>
            
            <c:if test="${!empty list }">
            	<c:forEach var="dCli" items="${list }">
		            <tr>
		                <td>${dCli.rowNum }</td>
		                <td>${dCli.drNo }</td>
		                <td>${dCli.userId }</td>
		                <td>${dCli.userName }</td>
		                <%-- <td>${dCli.birth }</td> --%>
		                <td>${dCli.phone }</td>
		                <td>${dCli.email }</td>
		                <td>${dCli.point }</td>
		                <%-- <td>${dCli.post }</td>
		                <td>${dCli.address }</td> --%>
		                <td>${dCli.hpName }</td>
		                <td>${dCli.hpCateName }</td>
		                <%-- <td>${dCli.profile }</td> --%>
		                <%-- <td>${dCli.marketing }</td> --%>
		                <td>${dCli.approval }</td>
		                <td>${dCli.enrollDate }</td>
		                <td>${dCli.status }</td>
		                <td>
		                    <button onclick="location.href='drClientDetailView.do?drNo=' + '${dCli.drNo}'">수정</button>
		                </td>
		            </tr>
            	</c:forEach>
		    </c:if>
			 <c:if test="${empty list }">
	           	<tr>
	           		<td colspan="18">검색결과가 없습니다.</td>
	           	</tr>
           </c:if>
        </table>
	
		<div id="pagingArea" align="center">
			<c:if test="${pi.currentPage == 1 }">
				이전&nbsp;
			</c:if>
			
			<c:if test="${pi.currentPage > 1 }">
				<c:choose>
					<c:when test="${dsc.none ne 'noneValue' }">
						<c:url var="drClientListBack" value="drClientList.do">
							<c:param name="page" value="${pi.currentPage -1 }"/>
							<c:param name="searchCondition" value="${condition }"/>
							<c:param name="searchValue" value="${value }"/>
						</c:url>
						<a href="${drClientListBack }">이전</a>
					</c:when>
					
					<c:otherwise>
						<c:url var="drClientListBack" value="drClientList.do">
							<c:param name="page" value="${pi.currentPage - 1 }"/>
							<c:param name="searchCondition" value="noneCondition"/>
							<c:param name="searchValue" value="noneValue"/>
						</c:url>
						<a href="${drClientListBack }">이전</a>
					</c:otherwise>
				</c:choose>
			</c:if>
			
			<!-- 번호 -->
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				<c:if test="${p eq pi.currentPage }">
					<font color="red" size="4"><b>${p }</b></font>
				</c:if>
				
				<c:if test="${p ne pi.currentPage }">
					<c:choose>
						<c:when test="${dsc.none ne 'noneValue' }">
							<c:url var="drClientListCheck" value="drClientList.do">
								<c:param name="page" value="${p }"/>
								<c:param name="searchCondition" value="${condition }"/>
								<c:param name="searchValue" value="${value }"/>
							</c:url>
							<a href="${drClientListCheck }">${p }</a>
						</c:when>
						
						<c:otherwise>
							<c:url var="drClientListBack" value="drClientList.do">
								<c:param name="page" value="${p }"/>
								<c:param name="searchCondition" value="noneCondition"/>
								<c:param name="searchValue" value="noneValue"/>	
							</c:url>
							<a href="${drClientListBack }">${p }</a>
						</c:otherwise>
					</c:choose>
				</c:if>
			</c:forEach>
			
			<c:if test="${pi.currentPage == pi.maxPage }">
				&nbsp;이후
			</c:if>
			
			<c:if test="${pi.currentPage < pi.maxPage }">
				<c:choose>
					<c:when test="${dsc.none ne 'noneValue' }">
						<c:url var="drClientListEnd" value="drClientList.do">
							<c:param name="page" value="${pi.currentPage  + 1}"/>
							<c:param name="searchCondition" value="${condition }"/>
							<c:param name="searchValue" value="${value }"/>
						</c:url>
						<a href="${drClientListEnd }">이후</a>
					</c:when>
					
					<c:otherwise>
						<c:url var="drClientListEnd" value="drClientList.do">
							<c:param name="page" value="${pi.currentPage + 1 }"/>
							<c:param name="searchCondition" value="noneCondition"/>
							<c:param name="searchValue" value="noneValue"/>
						</c:url>	
						<a href="${drClientListEnd }">이후</a>
					</c:otherwise>
				</c:choose>
			</c:if>
		</div>

        <br><br><br><br><br><br>
    </div>
  
   <script>

        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function(){
            $(this).parent().css({"background" : "lightgrey"});
        }).mouseout(function(){
            $(this).parent().css({"background" : "white"});
        });
      
        
        
        
        
        
    </script>
<script>
		<%if(msg != null){%>
	   			alert("<%=msg%>");
	   		 <%}%>
	
	</script>

</body>
</html>
   