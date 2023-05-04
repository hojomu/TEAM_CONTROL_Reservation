<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>비회원 진료 예약 확인</title>
  
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/img/favicon.png" rel="icon">
  <link href="/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="/resources/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
	<!-- usercheck css -->
	<link rel="stylesheet" href="/resources/css/userselfcheck.css">

</head>
<body>

<main>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex align-items-center justify-content-center justify-content-md-between">
      <div class="align-items-center d-none d-md-flex">
        <!-- <i class="bi bi-clock"></i> Monday - Saturday, 8AM to 10PM -->
      </div>
      <div class="d-flex align-items-center">
        <i class="bi bi-phone"></i> Call us now +1 5589 55488 55
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="index.html" class="logo me-auto"><img src="/resources/img/logo.jpg" alt=""></a>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto " href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto" href="#departments">Departments</a></li>
          <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
          <li class="dropdown"><a href="#"><span>moveToRink</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="http://localhost:8080/Acalendar">달력으로 이동</a></li>
                  <li><a href="http://localhost:8080/Aindex">index으로 이동</a></li>
                  <li><a href="http://localhost:8080/AManagerCheck">ManagerCheck으로 이동</a></li>
                  <li><a href="http://localhost:8080/AManagerCheckDetail">ManagerCheckDetail으로 이동</a></li>
                  <li><a href="http://localhost:8080/AUserCheck">UserCheck으로 이동</a></li>
                  <li><a href="http://localhost:8080/Aappointment1">appointment1으로 이동</a></li>
                  <li><a href="http://localhost:8080/Areservation">reservation으로 이동</a></li>
                  <li><a href="http://localhost:8080/Amedicalhome">medicalhome으로 이동</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <!-- <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">관리자</span> 차트보기</a> -->
	
		<!-- 모달창을 열기 위한 버튼 -->
		<button id="modal-btn" class="appointment-btn scrollto"><span class="d-none d-md-inline">관리자</span> 차트보기</button>
		
		
    </div>
  </header><!-- End Header -->
  
  <div id="section-wrap">
    <div id="section-title-wrap">
	  <h1 id="welcome">님 예약 정보</h1>
	  <a href='/' title='Button border lightblue' class='button button_right btnFloat btnLightBlue'>홈 페이지로 돌아가기</a>
	</div>
	<ul id="infomation-wrap">
	
	</ul>
  </div>
</main>
<input type="hidden" name="personalNumber" value="${reserveData.personalNumber }">
	<!-- script 링크 -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="resources/js/userSelfCheck.js" type="text/javascript"></script>
	
</body>
</html>