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
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/resources/login_images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_css/util.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_css/main.css">
<!--===============================================================================================-->
<style>
.logoDiv {
	background-color: #007ee5;
	width: 100px;
	height: 100px;
	margin: auto;
	border-radius: 7px;
}

.logoDiv .logo {
	width: 100px;
	height: 100px;
}

.radiobtn {
	padding-left: 150px;
	height: 50px;
}

.doc {
	margin-left: 30px;
}

.doctorForm {
	padding-top: 50px;
	padding-bottom: 50px;
}

.nextBox {
	width: 100px;
	height: 100px;
	display: inline-block;
	border-radius: 10px;
	background-color: lightgrey;
	color: white;
}

.nextBox1 {
	width: 100px;
	height: 100px;
	display: inline-block;
	border-radius: 10px;
	background-color: #007ee5;
	color: white;
}

.img {
	width: 18px;
	height: 20px;
	padding-left: 5px;
}

.label1 {
	padding-top: 40px;
	padding-left: 15px;
}

.label2 {
	padding-top: 40px;
	padding-left: 7px;
}

.file1 {
	padding-bottom: 10px;
}

.file2 {
	padding-top: 20px;
	padding-bottom: 10px;
}

.fileBtn {
	background-color: #007ee5;
	border-radius: 5px;
	width: 50px;
	color: white;
}

.fileBox {
	width: 100%;
	height: 300px;
	border: 1px solid black;
	border-radius: 7px;
}
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
				<form class="login100-form validate-form"
					action="joinDrClient2.do?dice=${dice }&email=${email}"
					method="post">
					<span class="login100-form-title p-b-48">
						<div class="logoDiv">
							<img class="logo"
								src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
						</div>
					</span>
					<div id="doctorJoin1">
						<span class="login100-form-title p-b-26"> 의사 회원가입 </span>
					</div>

					<div class="doctorForm">
						<div class="nextBox">
							<label class="label1">정보 입력</label>
						</div>
						<img class="img"
							src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox1">
							<label class="label2">이메일 인증</label>
						</div>
						<img class="img"
							src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox">
							<label class="label1">서류 제출</label>
						</div>
						<img class="img"
							src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox">
							<label class="label1">승인 대기</label>
						</div>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="인증번호를 입력해 주세요.">
						<input class="input100" type="text" name="message" id="message">
						<span class="focus-input100" data-placeholder="인증번호"></span>
					</div>

					<div class="container-login100-form-btn" style="padding-top: 50px;">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">인증하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>
  <%@ include file="../static/footer.jsp"%>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/popper.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/moment.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_js/main.js"></script>
</body>
</html>