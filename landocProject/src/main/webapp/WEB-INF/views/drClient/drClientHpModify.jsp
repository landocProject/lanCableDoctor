<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>병원수정</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->   
<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/login_images/icons/favicon.ico"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/util.css">
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/main.css">
<!--===============================================================================================-->
<style>
   .logoDiv{background-color: #007ee5; width: 100px; height: 100px; margin: auto; border-radius: 7px;}
   .logoDiv .logo{width: 100px; height: 100px;}
   .radiobtn{padding-left: 150px; height: 50px;}
   .doc{margin-left: 30px;}
   .doctorForm{padding-top: 50px; padding-bottom: 50px; text-align:center;}
   .nextBox{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: lightgrey; color: white;}
   .nextBox1{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: #007ee5; color: white;}
   .img{width:18px; height:20px; padding-left: 5px;}
   .label1{padding-top: 40px; padding-left: 0px;}
   .label2{padding-top: 40px; padding-left: 7px;}
   .file1{padding-bottom: 10px;}
   .file2{padding-top: 20px; padding-bottom: 10px;}
   .fileBtn{float: right; width: 250px;}
   .fileBox{width: 100%; height: 700px; border: 1px solid black; border-radius: 7px;}
   .fileImg{border-radius: 5px; width :100%; height: 700px;  border: 1px solid black;}
</style>
</head>
<body>
   
   <div class="limiter" id="login">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form" action="drClientHpModify.do?drNo=${drClientHp1.drNo }" method="post" enctype="multipart/form-data">
            <%-- <input type="hidden" value="${drClientHp1.hpNo}" name="hpNo"> --%>
             <input type="hidden" value="${drClientHp1.drhpOrigin}" name="drhpOrigin1">
        	<input type="hidden" value="${drClientHp1.drhpRename}" name="drhpRename1">
        	<input type="hidden" value="${drClientHp2.drhpOrigin}" name="drhpOrigin2">
        	<input type="hidden" value="${drClientHp2.drhpRename}" name="drhpRename2">
        	<input type="hidden" value="${drClientHp3.drhpOrigin}" name="drhpOrigin3">
        	<input type="hidden" value="${drClientHp3.drhpRename}" name="drhpRename3">
               <span class="login100-form-title p-b-48" >
                  <div class="logoDiv"> 
                     <img src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png" class="logo">
                  </div>
               </span>
               <div id="doctorJoin1">
                  <span class="login100-form-title p-b-26">
                     병원 변경
                  </span>
               </div>

               <div class="doctorForm">
                  <div class="nextBox1">
                     <label class="label1">서류 제출</label>
                  </div>
                  <img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
                  <div class="nextBox">
                     <label class="label1">승인 대기</label>
                  </div>
               </div>
               <div class="wrap-input100 validate-input"
						data-validate="병원을 선택해 주세요">
						<span class="focus-input100" data-placeholder="병원"></span> <select
							class="input100" name="hpNo" id="hpNo" style="border: none;" >

							<c:forEach var="hp" items="${list }">
							<option value="${hp.hpNo }">${hp.hpName }</option>
							</c:forEach>
						</select>

					</div>

					<div class="wrap-input100 validate-input"
						data-validate="정해진 진료과목을 선택 및 입력해주세요.">
						<span class="focus-input100" data-placeholder="주분야"></span> <select
							class="input100" name="hpCateCode" id="hpCateCode"  
							style="border: none;">
							<option value="400">치과</option>
							<option value="114">피부과</option>
							<option value="108">성형외과</option>
							<option value="112">안과</option>
							<option value="110">산부인과</option>
							<option value="115">비뇨기과</option>
							<option value="103">정신건강의학과</option>
							<option value="105">정형외과</option>
							<option value="116">마취통증의학과</option>
							<option value="106">신경외과</option>
							<option value="120">재활의학과</option>
							<option value="109">영상의학과</option>
							<option value="104">외과</option>
							<option value="102">신경과</option>
							<option value="111">소아과</option>
							<option value="101">내과</option>
							<option value="113">이비인후과</option>
							<option value="122">가정의학과</option>
							<option value="300">한의원</option>
						</select>

					</div>
               <div>
                  <label class="file1">재직 증명서 또는 사업자 등록증</label>
                  <input class="fileBtn" type="file" id="uploadImage1" name="uploadFile1" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview1" src="/projectFiles/${drClientHp1.drhpRename }"/>
                  </div>

                  <label class="file2">신분증</label>
                  <input type="file" id="uploadImage2" name="uploadFile2" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview2" src="/projectFiles/${drClientHp2.drhpRename }"/>
                  </div>

                  <label class="file2">의사 면허증</label>
                  <input type="file" id="uploadImage3" name="uploadFile3" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview3" src="/projectFiles/${drClientHp3.drhpRename }"/>
                  </div>
               </div>

               <div class="container-login100-form-btn" style="padding-top: 50px;">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <button class="login100-form-btn">
                        서류 제출
                     </button>
                  </div>
               </div>
               
               <!-- <div class="text-center p-t-115" style="padding-top: 30px;">
                  <span class="txt1">
                     회원이라구요?
                  </span>

                  <a class="txt2" href="loginView.do">
                     로그인
                  </a>
               </div> -->
            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
   
<!--===============================================================================================-->
<script src="<%=request.getContextPath()%>/resources/login_vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/popper.js"></script>
   <script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/moment.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_js/main.js"></script>
</body>

<script>

         function readUploadImage1(inputObject){
             if(inputObject.files && inputObject.files[0]){
                if(!(/image/i).test(inputObject.files[0].type)){
                   alert("이미지 파일을 선택해 주세요");
                   return false;
                }
                
                var reader = new FileReader();
                
                reader.onload = function(e){
                   $("#imagePreview1").attr("src", e.target.result);
                }
                reader.readAsDataURL(inputObject.files[0]);
             }        
        }
                  
        $("#uploadImage1").change(function(){
           readUploadImage1(this);
        }) 
         function readUploadImage2(inputObject){
             if(inputObject.files && inputObject.files[0]){
                if(!(/image/i).test(inputObject.files[0].type)){
                   alert("이미지 파일을 선택해 주세요");
                   return false;
                }
                
                var reader = new FileReader();
                
                reader.onload = function(e){
                   $("#imagePreview2").attr("src", e.target.result);
                }
                reader.readAsDataURL(inputObject.files[0]);
             }        
        }
                  
        $("#uploadImage2").change(function(){
           readUploadImage2(this);
        })   
         function readUploadImage3(inputObject){
             if(inputObject.files && inputObject.files[0]){
                if(!(/image/i).test(inputObject.files[0].type)){
                   alert("이미지 파일을 선택해 주세요");
                   return false;
                }
                
                var reader = new FileReader();
                
                reader.onload = function(e){
                   $("#imagePreview3").attr("src", e.target.result);
                }
                reader.readAsDataURL(inputObject.files[0]);
             }        
        }
                  
        $("#uploadImage3").change(function(){
           readUploadImage3(this);
        })    
      
   </script>
</html>