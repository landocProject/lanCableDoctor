<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>의사 회원가입</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
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
   .doctorForm{padding-top: 50px; padding-bottom: 50px;}
   .nextBox{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: lightgrey; color: white;}
   .nextBox1{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: #007ee5; color: white;}
   .img{width:18px; height:20px; padding-left: 5px;}
   .label1{padding-top: 40px; padding-left: 15px;}
   .label2{padding-top: 40px; padding-left: 7px;}
   .file1{padding-bottom: 10px;}
   .file2{padding-top: 20px; padding-bottom: 10px;}
   .fileBtn{float: right; width: 250px;}
   .fileBox{width: 100%; height: 700px; border: 1px solid black; border-radius: 7px;}
   .fileImg{border-radius: 5px; width :100%; height: 700px;  border: 1px solid black;}
</style>
</head>
<script type="text/javascript">
 window.history.forward();
 function noBack(){window.history.forward();}
</script>
<body>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
   <%@ include file="../static/header.jsp"%>
   <div class="limiter" id="login">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form" action="joinDrClient3.do?drNo=${joinDrClient2.drNo }&hpNo=${joinDrClient2.hpNo}" method="post" enctype="multipart/form-data">
               <span class="login100-form-title p-b-48" >
                  <div class="logoDiv"> 
                     <img src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png" class="logo">
                  </div>
               </span>
               <div id="doctorJoin1">
                  <span class="login100-form-title p-b-26">
                     의사 회원가입
                  </span>
               </div>

               <div class="doctorForm">
                  <div class="nextBox">
                     <label class="label1">정보 입력</label>
                  </div>
                  <img class="img"src="<%=request.getContextPath()%>/resources/login_image/icon.png">
                  <div class="nextBox">
                     <label class="label2">이메일 인증</label>
                  </div>
                  <img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
                  <div class="nextBox1">
                     <label class="label1">서류 제출</label>
                  </div>
                  <img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
                  <div class="nextBox">
                     <label class="label1">승인 대기</label>
                  </div>
               </div>

               <div>
               <button id="empPicUpload1" class="btn btn-sm" type="button" style="background-color:#007ee5;">
					<h4 style="color:white; padding-bottom : 5px;">+</h4>
				</button>
                  <label class="file1">재직 증명서 또는 사업자 등록증</label>
                  <input class="fileBtn" type="file" id="uploadImage1" name="uploadFile1" required="required" style="display:none">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview1"/>
                  </div>
                  
				<button id="empPicUpload2" class="btn btn-sm" type="button" style="background-color:#007ee5;">
					<h4 style="color:white; padding-bottom : 5px;">+</h4>
				</button>
                  <label class="file2">신분증</label>
                  <input type="file" id="uploadImage2" name="uploadFile2" required="required" style="display:none">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview2"/>
                  </div>

				<button id="empPicUpload3" class="btn btn-sm" type="button" style="background-color:#007ee5;">
					<h4 style="color:white; padding-bottom : 5px;">+</h4>
				</button>
                  <label class="file2">의사 면허증</label>
                  <input type="file" id="uploadImage3" name="uploadFile3" required="required" style="display:none"> 
                  <div class="fileBox"> 
                     <img class="fileImg" id="imagePreview3"/>
                  </div>
               </div>

               <div class="container-login100-form-btn" style="padding-top: 50px;">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <button class="login100-form-btn" id="sub">
                        서류 제출
                     </button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
     <%@ include file="../static/footer.jsp"%>
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

$(function(){
	$("#empPicUpload1").on("click",function(e){
		e.preventDefault();
		$("#uploadImage1").click();
	});
})
$(function(){
	$("#empPicUpload2").on("click",function(e){
		e.preventDefault();
		$("#uploadImage2").click();
	});
})
$(function(){
	$("#empPicUpload3").on("click",function(e){
		e.preventDefault();
		$("#uploadImage3").click();
	});
});
		
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
   <script>
    	$(function(){
    		$("#sub").click(function(){
    		var fileCheck1 = $("#uploadImage1").val();
    		var fileCheck2 = $("#uploadImage2").val();
    		var fileCheck3 = $("#uploadImage3").val();
    		if(!fileCheck1 || !fileCheck2 || !fileCheck3){
    			alert("새로운 파일을 제출해 주세요.");
    			return false;
    			
    		}
    		})
    	})
    </script>
</html>