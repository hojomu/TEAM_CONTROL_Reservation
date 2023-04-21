<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료예약하기</title>

</head>
<body>

<form name="form" action="appointment1" method="post">
<p>예약하시는 분 이메일 인증하기</p>
	<div class="insert_email">
		<input type="text" id="first_email"/>
		<select id="second_email"  onblur="sum_email()">
			<option id="second_email" value="0" >이메일 선택</option>
			<option id="second_email" value="@naver.com" >@ naver.com</option>
    		<option id="second_email" value="@google.com">@ google.com</option>
    		<option id="second_email" value="@kakao.com">@ kakao.com</option>
    		<option id="second_email" value="@nate.com">@ nate.com</option>
		</select> 
		
 	<!-- 이메일 값을 하나로  --> 
	<input type="hidden" name="email" />
		<button type="button" >인증번호 받기</button>

		<input type="text">
		<button type="button" >인증번호 확인</button>
	</div>
	
<p>진료받으실 분의 주민등록번호(외국인등록번호)정보를 입력해주세요</p>
	<div class="insert_information">
		<p>주민등록번호(외국인등록번호)로 예약하기</p>
		성명: <input type="text" id="customerName"><br>
		주민등록번호(외국인 등록번호):
		 <input type="text" id="personal_num1" maxlength="6" size="8" required >
		- <input type="password" id="personal_num2" maxlength="7" size="8" required onblur="sum_personalnum()">
	
	<!-- 주민등록번호 값을 하나로  --> 
	<input type="hidden" name="personalNumber" value="주민등록번호">
	<P> *보건부 고시에 의서 '진료일에 본인 외 대리 진료가 제한'됨을 알려드립니다.</P>
	</div>
	
<!-- submit -->	
<input type="submit" value="확인">
<input type="button" value="취소">
</form>



<script src="/resources/js/reservation.js" type="text/javascript"></script>
</body>
</html>
