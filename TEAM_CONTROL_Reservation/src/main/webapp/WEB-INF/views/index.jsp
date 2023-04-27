<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- index css -->
	<link rel="stylesheet" href="/resources/css/index.css">
	
</head>
<body>

<a href="/adminLogin"><img alt="medical" class="ManagerCheck_view" src="/resources/icon/ManagerCheck_view_icon.png" width="80" height="auto"></a>

<!-- appointment -->
<div class="appointment">
	<!-- container -->
	<div class="container">
		<div class="change">
	        <span class="active user">진료 예약</span>
	        <span class="manager">진료 예약 조회</span>
		</div>
	      
	    <!-- client-change -->
	    <div class="client-change">
	    	
	        <!-- 비회원 진료 예약 -->
	        <form class="user-form active">
		        <div class="medical_user">
					<img class="medical_button_icon"alt="medical" src="/resources/icon/medical_icon.png" width="auto" height="50">
					<div class="medical_button_title">비회원 진료 예약</div>
				</div>
		   		<p>
		   		회원가입을 하지 않아도 진료예약 및 조회가 가능합니다.<br>
				단, 일부 서비스 이용이 제한될 수 있습니다.</p>
		   		<button type="button" class="custom-btn btn-1" onClick="location.href='http://localhost:8080/reservation'">비회원 진료 예약하기</button>
		   		<div class="medical_box_center">
			   		<p class="medical_box">회원가입을 하실 경우 『나의차트』에서 진료 및 투약내역,<br>
			   	 	복약상담, 진단검사결과, 증명서 출력 서비스 등<br>
			   		개인화 서비스를 이용하실 수 있습니다.</p>
		        </div>
	        </form>
	        
	        <!-- 비회원 진료 예약 조회 -->
	        <form class="manager-form" action="/userSelfCheck" method="post">
		        <div class="medical_user">
					<img class="medical_button_icon"alt="medical" src="/resources/icon/medical_icon.png" width="auto" height="50">
					<div class="medical_button_title">진료 예약 조회</div>
				</div>
		   			<h3>주민번호 입력</h3>
		   			<span class="user_input"><input id="personalNo1" type="text">-<input id="personalNo2" type="password"><br></span>
		   		<button type="submit"  class="custom-btn btn-1">비회원 진료 예약 조회</button>
		   		<input type="hidden" id="personalNumber" name="personalNumber">
	        </form>
	
	
	    </div><!-- client-change 끝 -->
	</div><!-- container 끝 -->
</div><!-- appointment 끝 -->


	<!-- index js -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="/resources/js/index.js" type="text/javascript"></script>

</body>
</html>