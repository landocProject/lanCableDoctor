<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>productQnaDetail</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
       /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        
         /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width: auto; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
      #contentTb input{width:95%; border:none;}
      #contentTb select{width:33%; height:40px; font-size:18px;}
      #contentTb input[type=file]{height:50px;}

       /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
    
         /* td  */
        td > button {width: 300px;}

        /* textarea */
        textarea {width: 95%;}

      


</style>
</head>
<body>

   <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>상품 QnA</h3>

        <!--테이블 부분-->
        
		 <table id="contentTb">
		     <tr>
		         <th class="firstLine">번호</th>
		         <td>${qna.pdqNo }</td>
		     </tr>
		     <tr>
		         <th class="firstLine">제목</th>
		         <td>${qna.title }</td>
		     </tr>
		     <tr>
		         <th class="firstLine">상품명</th>
		         <td>${qna.pdName }</td>
		     </tr>
		     <tr>
		         <th class="firstLine">작성자</th>
				<td>
				<c:if test="${empty qna.cNo && !empty qna.drNo }">
				${qna.drName }(의사)
				</c:if>
				<c:if test="${!empty qna.cNo && empty qna.drNo }">
				${qna.cNickname }
				</c:if> 
				</td>
		     </tr>
		     <tr>
		         <th class="firstLine">내용</th>
		         <td>${qna.content }</td>
		     </tr>
		     <tr>
		     <c:if test="${qna.status eq 'N' }"> 
		         <th class="firstLine">답변할 내용</th>
		         <td>
					<form action="" method="POST">
		            	<textarea name="answerContent" rows="5"></textarea>
		            </form>
		         </td>
		     </c:if>
		     <c:if test="${qna.status eq 'Y' }">
				<th class="firstLine">답변한 내용</th>
				<td>
					${qna.answerContent }
				</td>
		     </c:if>
		     </tr>
		      
		 </table>
            
             <!--수정하기 뒤로 가기 버튼영역-->
		<div id="btnArea">
		    <button type="button" onclick="goModify();">답변수정하기</button>
		    <button type="button" onclick="goBack();">뒤로가기</button>
		</div>
        <br><br><br><br><br><br>
    </div>


   
    <script>
        
        function goAnswer() {
            $("#answer").submit();
        }

        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function () {
            $(this).parent().css({ "background": "lightgrey" });
        }).mouseout(function () {
            $(this).parent().css({ "background": "white" });
        });

    </script>


</body>
</html>