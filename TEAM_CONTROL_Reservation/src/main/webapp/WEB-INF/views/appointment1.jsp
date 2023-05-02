<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/appointment.css">
	<link rel="stylesheet" href="/resources/css/calendar.css">
</head>

    
    
<body>
<section>
	<!-- 환자 정보 확인 -->
	<div class="impormation">
	<h3 id="tablist-1"> 환자 정보 확인 </h3>
	 성명: ${reserveData.customerName }
	 예약번호: ${reserveData.personalNumber }
	</div>
	
<div class="tabs">
  <!-- 진료과 목록 -->
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

<form name="form" action="UserCheck" method="post">
<input type="hidden" name="customerName" value=${reserveData.customerName }>
<input type="hidden" name="personalNumber" value=${reserveData.personalNumber }>
<input type="hidden" name="email" value=${reserveData.email }>
<input type="hidden" id="medicalDept" name="medicalDept">
<input type="hidden" id="doctor" name="doctor">
<input type="hidden" id="reservationTime" name="reservationTime">
<textarea  id="otherInfo" name="otherInfo" placeholder="추가 사항을 적어주세요."></textarea>
<button>Submit</button>
</form>
</section>

	<!-- js 모음 -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="/resources/js/appointment.js" type="text/javascript"></script>
	<script src="/resources/js/calendar.js" type="text/javascript"></script>
	
</body>

</html>