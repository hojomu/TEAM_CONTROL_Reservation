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

<!-- appointment -->
<div class="appointment">
	<!-- container -->
	<div class="container">
	    
	   	<!-- 비회원 진료 예약 조회 -->
	       <form class="manager-form" action="/ManagerCheck" method="post">
	        <div class="medical_user">
				<img class="medical_button_icon"alt="medical" src="/resources/icon/medical_icon.png" width="auto" height="50">
				<div class="medical_button_title">관리자 로그인</div>
			</div>
			<div>
				<div><span>아이디</span><input type="text" name="adminId"></div>
				<div><span>비밀번호</span><input type="password" name="adminPass"></div>
			</div>
	   		<button type="submit"  class="custom-btn btn-1">관리자 계정 로그인</button>
	   		<div>${failMessage }</div>
	       </form>
	
	</div><!-- container 끝 -->
</div><!-- appointment 끝 -->
</body>
</html>