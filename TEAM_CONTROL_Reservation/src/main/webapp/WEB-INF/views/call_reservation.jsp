<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- css 링크 -->
	<link rel="stylesheet" href="/resources/css/call_reservation.css">
	
	<!-- css 링크 -->
	<link rel="stylesheet" href="/resources/css/reservation.css">
	<link rel="stylesheet" href="/resources/css/call_appointment.css">
	<link rel="stylesheet" href="/resources/css/call_calendar.css">

</head>
<body>

<!-- call_reservation title --1>
<h2>환자 예약 접수</h2>

<!-- form -->
<form name="form" action="call_reservation" method="post">

<!-- call_reservation 전체 -->
<div class="call_reservation">

	<div class="call_user">
		<div class="call_user_box">
		
			<div class="call_user_1">
				<div class="call_user_box_left"><h5>환자 정보</h5></div>
				<div class="call_insert">
				이름 <input type="text" name="customerName" id="customerName">
				</div>
				<div class="call_insert">
				주민번호
				<input type="text" id="personal_num1" maxlength="6" size="8" required >
				 - <input type="password" id="personal_num2" maxlength="7" size="8" required >
				 <input type="hidden" id="personalNumber" name="personalNumber">
				 </div>
				 <div class="call_insert">
				휴대폰번호 <input type="text" name="email" id="email">
				</div>
			</div>
			
			<div class="call_user_2">
				<div class="call_user_box_left"><h5>진료과/의료진 선택</h5></div>
				<div class="call_insert">
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
					           	<a>가정의학과</a>
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
					      	   <a>내과</a>
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
					           <a>산부인과</a>
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
					     	 <a>신경과 </a>
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
					     	 <a>안과</a> 
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
					     	 <a>이비인후과</a> 
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
					     	 <a>치과</a> 
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
					     	 <a>피부과</a>
					      </span>
					    </button>
					  </div>
				</div>
				
				<div class="call_insert">
					  <div id="deptWarp">
						  <ul id="doctorinfor">
						  </ul>
					  </div>
				</div>
			</div>
			
			<div class="call_user_3">
				<div class="call_user_box_left"><h5>특이사항</h5></div>
				<div class="call_insert">
				<div>
				<textarea  class="call_write" id="otherInfo" name="otherInfo" placeholder="특이사항 작성"></textarea>
				</div>
				</div>
			</div>
			
		</div>
	</div>
	
	<div class="call_day">  
	
				<div class="call_user_4">
				<div class="call_user_box_right"><h5>달력</h5></div>
	
					<div class="call_calendar">
					<!-- 달력자리 -->
					
							<!-- 예약 날짜 시간 선택구간 -->
						    <table class="scriptCalendar">
						        <thead>
						            <tr>
						                <td class="calendarBtn" id="btnPrevCalendar">&#60;&#60;</td>
						                <td colspan="5">
						                    <span id="calYear">YYYY</span>년
						                    <span id="calMonth">MM</span>월
						                </td>
						                <td class="calendarBtn" id="nextNextCalendar">&#62;&#62;</td>
						            </tr>
						            <tr>
						                <td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
						            </tr>
						        </thead>
						        <tbody></tbody>
						    </table>
					
					</div>
				</div>
		
		<div class="call_user_5">
			<div class="call_user_box_right"><h5>시간</h5></div>
			<div class="call_hour">
					<ul id="timeTable">
					</ul>
			</div>
		</div>
		
		<input type="hidden" id="reservationTime" name="reservationTime">
		
	</div>
	
					<input type="hidden" id="medicalDept" name="medicalDept">
					<input type="hidden" id="doctor" name="doctor">
				
	
	<div class="call_button">
		<div class="call_button_right">
		<button type="button" class="btn-get-started" onclick="http://localhost:8080/ManagerCheck">취소</button>
		<button type="submit" class="btn-get-started">접수</button>
		</div>
	</div>
	
</div><!-- call_reservation 전체 끝 -->

</form>


	<!-- script 링크 -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="resources/js/call_reservation.js" type="text/javascript"></script>
	<script src="/resources/js/email.js"></script>
	<script src="/resources/js/call_appointment.js" type="text/javascript"></script>
	<script src="/resources/js/calendar.js" type="text/javascript"></script>
	

	

</body>
</html>