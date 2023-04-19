<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- index css -->
	<link rel="stylesheet" href="css/index.css">

</head>
<body>

<!-- container -->
<div class="container">
	<div class="change">
        <span class="active user">진료 예약</span>
        <span class="manager">진료 예약 조회</span>
	</div>
      
    <!-- client-change -->
    <div class="client-change">
    	
        <!-- 사용자 진료 예약 -->
        <form class="user-form active">
		<img alt="medical" src="img/medical_icon.png" width="auto" height="60">
		<span class="medical_button_title">비회원 진료 예약</span>
   		<p>비회원 진료 예약</p>
   		<p>간편하게 실시간 진료 예약하기</p>
   		<button>비회원 진료 예약하기</button><br>
   		<p>예약 관련 안내사항</p>
        </form>
        
        <!-- 관리자용 접수 현황 -->
        <form class="manager-form">
        <img alt="medical" src="img/medical_icon.png" width="50" height="auto">
        <h3>비회원 진료 예약 조회</h3><br>
   		주민번호 입력
   		<input type="text">-<input type="text"><br>
   		<button>비회원 진료 예약 조회</button>
        </form>


    </div><!-- client-change 끝 -->
</div><!-- container 끝 -->


	<!-- index js -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="js/index.js" type="text/javascript"></script>

</body>
</html>