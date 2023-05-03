<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- css 링크 -->
	<link rel="stylesheet" href="/resources/css/reservation.css">
	
	<link rel="stylesheet" href="/resources/css/appointment.css">
	<link rel="stylesheet" href="/resources/css/calendar.css">
	
	<style type="text/css">

/*div변경과 관련된 코드입니다.
색 등의 디자인은 보이기 위해서 표시해놨으니
스타일 추가 및 변경이 가능합니다.*/
.medical_section input[type=radio] {
	display: none;
}
#tab-1:checked ~ .medical_tab label:nth-child(1),
#tab-2:checked ~ .medical_tab label:nth-child(2),
#tab-3:checked ~ .medical_tab label:nth-child(3) {
	background-color: rgba(0, 0, 0, 0.2);
  box-shadow: none;
}
.medical_content > div {
	display: none;
}
#tab-1:checked ~ .medical_content div:nth-child(1),
#tab-2:checked ~ .medical_content div:nth-child(2),
#tab-3:checked ~ .medical_content div:nth-child(3) {
	display: block;
}
.medical_section {
  margin: 0 auto;
  main-width:90%;
  max-width: 90%;
}
.medical_tab {
  overflow: hidden;
}
.medical_tab label {
    font-size: 18px;
    cursor: pointer;
    float: left;
    width: 33.33%;
    text-align: center;
    padding: 15px 0;
    text-transform: uppercase;
    font-weight: bold;
    letter-spacing: 2px;
    user-select: none;
    -webkit-user-select: none;
}
.medical_content {
  background-color: rgba(0, 0, 0, 0.2);
  min-height: 250px;
}
.medical_content > div{
   padding: 30px;
   line-height: 1.5;
   font-size: 17px;
}
</style>

</head>
<body>
		<div class="medical_section">
		  <input type="radio" id="tab-1" name="medical_show" checked/>
		  <input type="radio" id="tab-2" name="medical_show" />
		  <input type="radio" id="tab-3" name="medical_show" />
		  <div class="medical_tab">
		    <label for="tab-1">동의서</label>
		    <label for="tab-2">진료과/의료진</label>
		    <label for="tab-3">날짜/시간</label>
		  </div>
		  <div class="medical_content">
		    <div class="content-dis">
		      
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
    </header>
    
    <a> 진료예약을 위해 예약하시는 분의 휴대전화 인증과 진료받으실 분의 성명과 주민등록번호 병원등록번호가 필요합니다.
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
      
      <label>
      <input type="radio" name="terms-agree1" value="agree" required>동의합니다.
      </label>
      <label>
      <input type="radio" name="terms-agree1" value="disagree">동의하지않습니다.
      </label>
      
      <div class="agree_area">
      	<p>[개인정보 수집 이용에 대한 안내]<p>
		<ul>
			<li>수집하는 개인정보 항목 : 이름, 휴대전화번호, 병원등록번호</li>
			<li>수집ㆍ이용목적 : 진료 예약 및 진료 안내</li>
			<li><strong>보유 및 이용 기간 : 의료법에 준함</strong></li>
			<li>개인정보 수집 이용 동의는 거부하실 수 있으며, 거부할 경우 서비스 사용이 일부 제한될 수 있습니다.</li>
		</ul>
      </div>
      
      <label>
      <input type="radio" name="terms-agree2" value="agree" required>동의합니다.
      </label>
      <label>
      <input type="radio" name="terms-agree2" value="disagree">동의하지않습니다.
      </label>
     	
     	<!-- EmailContoller 로 POST 방식 -->    
	    <form name="form" action="/reservation" method="post">
	    	<p>예약하시는 분 이메일 인증하기</p>
			<div class="email_auth">
			<input type="text" id="first_email" placeholder="이메일">
 			<select id="second_email" required>
 				<option>이메일 선택</option>
				<option>naver.com</option>
				<option>daum.net</option>
				<option>gmail.com</option>
				<option>hanmail.com</option>
				<option>yahoo.co.kr</option>
 			</select>
			<button type="button" class="email_auth_btn">인증번호 받기</button>
			</div>
			
			<input type="text" placeholder="인증번호 입력" id="email_auth_key">
			<button type="button" id="join">인증번호 확인</button>
		</form>

		
 	    <form action="/appointment1" method="post" id="appointmentForm">  
		<p>진료받으실 분의 주민등록번호(외국인등록번호)정보를 입력해주세요</p>
			<div class="insert_information">
				<p>주민등록번호(외국인등록번호)로 예약하기</p>
				성명: <input type="text" name="customerName" id="customerName"><br>
				주민등록번호(외국인 등록번호):
				 <input type="text" id="personal_num1" maxlength="6" size="8" required >
				- <input type="password" id="personal_num2" maxlength="7" size="8" required>
			
			<!-- 주민등록번호, 이메일을 조합해서 전송 -->
			<input type="hidden" name="email" id="email">
			<input type="hidden" name="personalNumber" id="personalNumber">
			<P> *보건부 고시에 의서 '진료일에 본인 외 대리 진료가 제한'됨을 알려드립니다.</P>
			</div>
			    
	    <div class="modal-container-footer">
	      <button type="submit" class="button1" id="submit" value="확인">확인</button>
	       <!-- 취소 버튼에 이동기능 넣고 이 주석 삭제 것 (Home or Index로 ) -->
	      <button type="button" class="button1" value="취소">취소</button>
	    </div>
	 
	    </form> 

		    </div>
		    <div class="content-dis">
		    
	<!-- 환자 정보 확인 -->
	<div class="impormation">
	<h3 id="tablist-1"> 환자 정보 확인 </h3>
	 성명: ${reserveData.customerName }
	 예약번호: ${reserveData.personalNumber }
	</div>
		     
	  <div role="tablist"
	       aria-labelledby="tablist-1"
	       class="automatic">
	    <button id="tab-1"
	            type="button"
	            role="tab"
	            aria-selected="true"
	            aria-controls="tabpanel-1"
	            data-setting="가정의학과"
	            >
	      <span class="focus">
	           	<img class="iconCategory" src="/resources/img/family.png" alt="dental" title="dental"><a>가정의학과</a>
	      </span>
	    </button>
	    <button id="tab-2"
	            type="button"
	            role="tab"
	            aria-selected="false"
	            aria-controls="tabpanel-2"
	            tabindex="-1"
	            data-setting="내과"
	            >
	      <span class="focus">
	      	   <img class="iconCategory" src="/resources/img/stethoscope.png" alt="dental" title="dental"> <a>내과</a>
	      </span>
	    </button>
	    <button id="tab-3"
	            type="button"
	            role="tab"
	            aria-selected="false"
	            aria-controls="tabpanel-3"
	            tabindex="-1"
	            data-setting="산부인과"
	            >
	      <span class="focus">
	           <img class="iconCategory" src="/resources/img/heart.png" alt="dental" title="dental"> <a>산부인과</a>
	      </span>
	    </button>
	    <button id="tab-4"
	            type="button"
	            role="tab"
	            aria-selected="false"
	            aria-controls="tabpanel-4"
	            tabindex="-1"
	            data-setting="신경과">
	      <span class="focus">
	     	 <img class="iconCategory" src="/resources/img/neuroimaging.png" alt="dental" title="dental"> <a>신경과 </a>
	      </span>
	    </button>
	    <button id="tab-5"
	            type="button"
	            role="tab"
	            aria-selected="false"
	            aria-controls="tabpanel-5"
	            tabindex="-1"
	            data-setting="안과">
	      <span class="focus">
	     	 <img class="iconCategory" src="/resources/img/ophtalmology.png" alt="dental" title="dental"> <a>안과</a> 
	      </span>
	    </button>
	    <button id="tab-6"
	            type="button"
	            role="tab"
	            aria-selected="false"
	            aria-controls="tabpanel-6"
	            tabindex="-1"
	            data-setting="이비인후과">
	      <span class="focus">
	     	 <img class="iconCategory" src="/resources/img/otorhinolaryngology.png" alt="dental" title="dental"> <a>이비인후과</a> 
	      </span>
	    </button>
	    <button id="tab-7"
	            type="button"
	            role="tab"
	            aria-selected="false"
	            aria-controls="tabpanel-7"
	            tabindex="-1"
	            data-setting="치과">
	      <span class="focus">
	     	 <img class="iconCategory" src="/resources/img/dental.png" alt="dental" title="dental"><a> 치과</a> 
	      </span>
	    </button>
	    <button id="tab-8"
	            type="button"
	            role="tab"
	            aria-selected="false"
	            aria-controls="tabpanel-8"
	            tabindex="-1"
	            data-setting="피부과">
	      <span class="focus">
	     	 <img class="iconCategory" src="/resources/img/dermatology.png" alt="dental" title="dental"> <a>피부과</a>
	      </span>
	    </button>
	  </div>
	  
	  		<!-- 의료진 불러오기 -->
		<div id="deptWarp">
			<ul id="doctorInfo">
			</ul>
		</div>

		    </div>
		    <div class="content-dis">
	
	<table class="scriptCalendar dis-none">
	    <thead>
	        <tr>
	            <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
	            <td colspan="5">
	                <span id="calYear">YYYY</span>년
	                <span id="calMonth">MM</span>월
	            </td>
	            <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
	        </tr>
	        <tr>
	            <td>SUN</td><td>MON</td><td>TUE</td><td>WED</td><td>THU</td><td>FRI</td><td>SAT</td>
	        </tr>
	    </thead>
	    <tbody></tbody>
	</table>
	
	<ul id="timeTable">
	</ul>

		    </div>
		    <div>
		    </div>
	   
	
	
	
	<form name="form" action="UserCheck" method="post">
	<input type="hidden" name="customerName" value=${reserveData.customerName }>
	<input type="hidden" name="personalNumber" value=${reserveData.personalNumber }>
	<input type="hidden" name="email" value=${reserveData.email }>
	<input type="hidden" id="medicalDept" name="medicalDept">
	<input type="hidden" id="doctor" name="doctor">
	<input type="hidden" id="reservationTime" name="reservationTime">
	<textarea  id="otherInfo" name="otherInfo" placeholder="추가 사항을 적어주세요."></textarea>
	<button onclick="Close()">Submit</button>
	</form>
	
	
						<script>
							function Close(){
								opener.parent.location.reload();
								window.close();
							}
						</script>
	   

	<!-- script 링크 -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="resources/js/reservation.js" type="text/javascript"></script>
	<script src="/resources/js/email.js"></script>
	
	<!-- js 모음 -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="/resources/js/appointment.js" type="text/javascript"></script>
	<script src="/resources/js/calendar.js" type="text/javascript"></script>

</body>
</html>