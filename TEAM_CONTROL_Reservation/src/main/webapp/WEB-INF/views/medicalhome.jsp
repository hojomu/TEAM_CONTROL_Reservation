<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Medicio Bootstrap Template - Index</title>
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
  
  <!-- Template Main CSS File -->
  <link href="/resources/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Medicio
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<!-- ======= modal 1 ======= -->
<div class="modal_background">
	<div class="modal_wrap">
					
		<!-- appointment -->
		<div class="modal_appointment">
			<!-- container -->
			<div class="modal_container">
				<div class="modal_close">&times;</div>
				<div class="change">
			        <span class="modal_active user">진료 예약</span>
			        <span class="manager">진료 예약 조회</span>
				</div>
			      
			    <!-- client-change -->
			    <div class="client-change">
			    	
			        <!-- 비회원 진료 예약 -->
			        <form class="user-form modal_active">
				        <div class="medical_user">
							<img class="medical_button_icon"alt="medical" src="/resources/img/medical_icon.png" width="auto" height="50">
							<div class="medical_button_title">비회원 진료 예약</div>
						</div>
				   		<p class="medical_p">
				   		회원가입을 하지 않아도 진료예약 및 조회가 가능합니다.<br>
						단, 일부 서비스 이용이 제한될 수 있습니다.</p>
				   		<!-- <button type="button" class="custom-btn btn-1" onClick="location.href='http://localhost:8080/reservation'">비회원 진료 예약하기</button> -->
				   		<button type="button" class="custom-btn btn-1" onclick="openPopup()">비회원 진료 예약하기</button>

						<script>
/* 							function openPopup() {
								window.open("modal_reservation", "Popup", "width=1200, height=800");
							} */
							
							function openPopup() {
								  var popup = window.open("modal_reservation", "popup", "width=1200, height=800");
								  popup.onload = function() {
								    var screenWidth = window.innerWidth;
								    var screenHeight = window.innerHeight;
								    var popupWidth = popup.innerWidth;
								    var popupHeight = popup.innerHeight;
								    var left = (screenWidth - popupWidth) / 2;
								    var top = (screenHeight - popupHeight) / 2;
								    popup.moveTo(left, top);
								  };
								}
						</script>
						
				   		<div class="medical_box_center">
					   		<p class="medical_box medical_p">회원가입을 하실 경우 『나의차트』에서 진료 및 투약내역,<br>
					   	 	복약상담, 진단검사결과, 증명서 출력 서비스 등<br>
					   		개인화 서비스를 이용하실 수 있습니다.</p>
				        </div>
			        </form>
			        
			        <!-- 비회원 진료 예약 조회 -->
			        <form class="manager-form">
				        <div class="medical_user">
							<img class="medical_button_icon"alt="medical" src="/resources/img/medical_icon.png" width="auto" height="50">
							<div class="medical_button_title">진료 예약 조회</div>
						</div>
				   			<h3>주민번호 입력</h3>
				   			<span class="user_input"><input type="text">-<input type="password"><br></span>
				   		<button type="button"  class="custom-btn btn-1" onClick="location.href='http://localhost:8080/UserCheck'">비회원 진료 예약 조회</button>
			        </form>
				
			    </div><!-- client-change 끝 -->
			</div><!-- container 끝 -->
		</div><!-- appointment 끝 -->
	</div>
</div>
<!-- ======= modal ======= -->



<!-- container modal style -->
<div id="modal_st_container_wrap">
	<div class="modal_st_container">
	    <h2>Welcome to <span>Medicio</span></h2>
	    <p>Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel.</p>
	    <button type='button' id="modal_btn" class="btn-get-started scrollto">진료 예약하기</button>	
	</div>
</div>
<!-- container modal style -->

		<!-- 모달창 -->
		<div id="modal_manager" class="modal_manager">
		  <div class="modal-content_manager">
		    
	       <form class="manager-form" action="/ManagerCheck" method="post">

				<div class="medical_manager_title">관리자 로그인</div>
				
				<h3 class="medical_manager_title2">관리번호 입력</h3>

			<div class="manager_login">
				<div class="manager_loginId">
				<span>아이디</span>
				<input type="text" name="adminId">
				</div>
				<div class="manager_loginPw">
				<span>비밀번호</span>
				<input type="password" name="adminPass">
				</div>
			</div>
			
	   		<button type="submit"  class="custom-btn btn-1">관리자 계정 로그인</button>
	   		<div>${failMessage }</div>
	   		
	       </form>
	       
	       <div class="manager_close">&times;</div>

		  </div>
		</div>

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
          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
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

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(/resources/img/slide/slide-4.jpg)">
          
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(/resources/img/slide/slide-6.jpg)">
<!--           <div class="container">
            <h2>Welcome to <span>Medicio</span></h2>
            <p>Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel.</p>
            <button type='button' id="modal_btn" class="btn-get-started scrollto">진료 예약하기</button>
				<div class="modal_background"></div>
				<div class="modal_wrap">
	   				
	    			<div class="text">
	        			스틱코드에서 개발에 필요한 모든 코드를 쉽게 사용하세요.
	        			https://stickode.com/mainlogin.html
	    			</div>
				</div>
          </div> -->
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(/resources/img/slide/slide-2.jpg)">
<!--           <div class="container">
            <h2>Welcome to <span>Medicio</span></h2>
            <p>Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel.</p>
            <button type='button' id="modal_btn" class="btn-get-started scrollto">진료 예약하기</button>
				<div class="modal_background"></div>
				<div class="modal_wrap">
	   				<div class="modal_close"><img class="closeImg" src="" alt="x버튼"></div>
	    			<div class="text">
	        			스틱코드에서 개발에 필요한 모든 코드를 쉽게 사용하세요.
	        			https://stickode.com/mainlogin.html
	    			</div>
				</div>
          </div> -->
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
  </section><!-- End Hero -->


  <!-- Vendor JS Files -->
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="/resources/js/main.js"></script>
  <script src="/resources/js/index.js"></script>


</body>

</html>