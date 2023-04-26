<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reservation.css">
<script src="resources/js/reservation.js" type="text/javascript"></script>

</head>
<body >
<div class="modal_body"> 
<div class="modal">
  <article class="modal-container">
    <header class="modal-container-header">
    <!-- h1 title -->
      <h1 class="modal-container-title">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" aria-hidden="true">
          <path fill="none" d="M0 0h24v24H0z" />
          <!-- 진료 아이콘  -->
          <path fill="currentColor" d="M14 9V4H5v16h6.056c.328.417.724.785 1.18 1.085l1.39.915H3.993A.993.993 0 0 1 3 21.008V2.992C3 2.455 3.449 2 4.002 2h10.995L21 8v1h-7zm-2 2h9v5.949c0 .99-.501 1.916-1.336 2.465L16.5 21.498l-3.164-2.084A2.953 2.953 0 0 1 12 16.95V11zm2 5.949c0 .316.162.614.436.795l2.064 1.36 2.064-1.36a.954.954 0 0 0 .436-.795V13h-5v3.949z" />
        </svg>
        	진료 예약하기
      </h1>
      <!-- 창닫기 버튼/아이콘 -->
      <button class="icon-button">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
          <path fill="none" d="M0 0h24v24H0z" />
          <path fill="currentColor" d="M12 10.586l4.95-4.95 1.414 1.414-4.95 4.95 4.95 4.95-1.414 1.414-4.95-4.95-4.95 4.95-1.414-1.414 4.95-4.95-4.95-4.95L7.05 5.636z" />
        </svg>
      </button>
    </header>
    <!-- 모달 content -->
    <section class="modal-container-body rtf">
      <a > 진료예약을 위해 예약하시는 분의 휴대전화 인증과 진료받으실 분의 성명과 주민등록번호 병원등록번호가 필요합니다.
		아래 사항을 정확하게 입력하여 주시기 바랍니다.</a>
  	  <!-- 개인정보 이용 동의  -->
      <div class="agree_area">
      	<p>[고유식별번호 처리에 대한 안내]<p>
      	<ul>
			<li>수집하는 고유식별정보 항목 : 주민등록번호, 외국인등록번호</li>
			<li>수집ㆍ이용목적 :의료보험 적용 여부와 진료예약을 위한 목적</li>
			<li><strong>보유 및 이용 기간 : 의료법에 준함</strong></li>
			<li>개인의 고유식별정보 제공동의는 거부하실 수 있으며, 거부할 경우 서비스 사용이 일부 제한될 수 있습니다.</li>
		</ul>
      </div>
      
      <input type="radio" id="agree">동의합니다.
      <input type="radio" id="no_agree">동의하지않습니다.
      
      <div class="agree_area">
      	<p>[개인정보 수집 이용에 대한 안내]<p>
		<ul>
			<li>수집하는 개인정보 항목 : 이름, 휴대전화번호, 병원등록번호</li>
			<li>수집ㆍ이용목적 : 진료 예약 및 진료 안내</li>
			<li><strong>보유 및 이용 기간 : 의료법에 준함</strong></li>
			<li>개인정보 수집 이용 동의는 거부하실 수 있으며, 거부할 경우 서비스 사용이 일부 제한될 수 있습니다.</li>
		</ul>
      </div>
      
      <input type="radio" id="agree">동의합니다.
      <input type="radio" id="no_agree">동의하지않습니다.
      
      <form name="form" action="/test1" method="post">
		<p>예약하시는 분 이메일 인증하기</p>
			<div class="insert_email">
				<input type="text" id="first_email" />
				<select id="second_email_select"  onblur="sum_email()">
					<option id="second_email" value="0" >이메일 선택</option>
					<option id="second_email" value="@naver.com" >@ naver.com</option>
    				<option id="second_email" value="@google.com">@ google.com</option>
    				<option id="second_email" value="@kakao.com">@ kakao.com</option>
    				<option id="second_email" value="@nate.com">@ nate.com</option>
    				<option id="second_email" value="@nate.com">@ daum.com</option>
				</select> 
		
 		<!-- 이메일 값을 하나로  --> 
		<input type="hidden" name="email" />
			<button type="button" onclick="email_check()" >인증번호 받기</button>
			<div id="email_warn" ></div>
			<input type="text" placeholder="인증번호를 입력해주세요."  >
			<span class="email_num_warn"></span>
			<button type="button" >인증번호 확인</button>
		</div>
	
		<p>진료받으실 분의 주민등록번호(외국인등록번호)정보를 입력해주세요</p>
			<div class="insert_information">
				<p>주민등록번호(외국인등록번호)로 예약하기</p>
				성명: <input type="text" name="customerName" id="customerName"><br>
				주민등록번호(외국인 등록번호):
				 <input type="text" id="personal_num1" maxlength="6" size="8" required >
				- <input type="password" id="personal_num2" maxlength="7" size="8" required onblur="sum_personalnum()">
			
			<!-- 주민등록번호 값을 하나로  --> 
			<input type="hidden" name="personalNumber" value="personalNumber">
			<P> *보건부 고시에 의서 '진료일에 본인 외 대리 진료가 제한'됨을 알려드립니다.</P>
			</div>
			    
	    <!-- 확인/취소 버튼 -->
	    <div class="modal-container-footer">
	      <button type="submit" class="button1" value="취소" >취소</button>
	      <button type="button" class="button1" value="확인">확인</button>
	    </div>
	    
	    </form>
	    
	     </section>
  </article>
</div>
</div>
</body>
</html>