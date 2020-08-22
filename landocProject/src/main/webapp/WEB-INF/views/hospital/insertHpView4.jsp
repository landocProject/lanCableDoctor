<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>병원 등록 완료</title>
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
   .resultDiv{border-radius: 7px; text-align: center; height: 300px; padding-top: 80px; color: #007ee5; font-size: 25px;}
   .container-login100-form-btn{padding-top: 50px;}
</style>
</head>
<body>
<%@ include file="../static/header.jsp"%>
   
   <div class="limiter" id="login">
      <div class="container-login100">
         <div class="wrap-login100">

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
               <div class="nextBox">
                  <label class="label1">서류 제출</label>
               </div>
               <img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
               <div class="nextBox1">
                  <label class="label1">승인 대기</label>
               </div>
            </div>
            <div class="resultDiv">
               감사합니다!<br>
               병원 등록이 완료되었습니다.<br>
               승인 여부는 2~3일 정도 소요되며<br>
               승인 결과는 이메일로 발송 될 예정입니다.
            </div>

            <div class="container-login100-form-btn">
               <div class="wrap-login100-form-btn">
                  <div class="login100-form-bgbtn"></div>
                  <button class="login100-form-btn" onclick='location.href="home.do"'>
                     홈으로
                  </button>
               </div>
            </div>
            
            <div class="text-center p-t-115" style="padding-top: 30px;">
               <span class="txt1">
                  회원이라구요?
               </span>

               <a class="txt2" href="loginView.do">
                  로그인
               </a>
            </div>
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
</html>