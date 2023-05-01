<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/appointment.css">
	<script src="/resources/js/appointment.js" type="text/javascript"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
            class="dept"
            value="a"
            onclick="tab()"
            >
      <span class="focus">
           	<img class="iconCategory" src="/resources/img/family.png" alt="dental" title="dental">가정의학과
      </span>
    </button>
    <button id="tab-2"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-2"
            tabindex="-1"
            class="dept"
            value="b"
            onclick="tab()"
            >
      <span class="focus">
      	   <img class="iconCategory" src="/resources/img/stethoscope.png" alt="dental" title="dental"> 내과
      </span>
    </button>
    <button id="tab-3"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-3"
            tabindex="-1"
            class="dept"
            value="c"
            onclick="tab()"
            >
      <span class="focus">
           <img class="iconCategory" src="/resources/img/heart.png" alt="dental" title="dental"> 산부인과
      </span>
    </button>
    <button id="tab-4"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-4"
            tabindex="-1"
            class="dept"
            value="d"
            onclick="tab()">
      <span class="focus">
     	 <img class="iconCategory" src="/resources/img/neuroimaging.png" alt="dental" title="dental"> 신경과 
      </span>
    </button>
    <button id="tab-5"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-5"
            tabindex="-1"
            class="dept"
             value="e"
            onclick="tab()">
      <span class="focus">
     	 <img class="iconCategory" src="/resources/img/ophtalmology.png" alt="dental" title="dental"> 안과 
      </span>
    </button>
    <button id="tab-6"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-6"
            tabindex="-1"
            class="dept"
             value="f"
            onclick="tab()">
      <span class="focus">
     	 <img class="iconCategory" src="/resources/img/otorhinolaryngology.png" alt="dental" title="dental"> 이비인후과 
      </span>
    </button>
    <button id="tab-7"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-7"
            tabindex="-1"
            class="dept"
            value="g"
            onclick="tab()">
      <span class="focus">
     	 <img class="iconCategory" src="/resources/img/dental.png" alt="dental" title="dental"> 치과 
      </span>
    </button>
    <button id="tab-8"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-8"
            tabindex="-1"
            class="dept"
            value="h"
            onclick="tab()">
      <span class="focus">
     	 <img class="iconCategory" src="/resources/img/dermatology.png" alt="dental" title="dental"> 피부과
      </span>
    </button>
  </div>
  

  
  <!-- 가정의학과 의료진-->
  <div id="tabpanel-1"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-1">
    
	<ul id="doctorList"></ul>
 
 </div>
 
   <!-- 내과 의료진-->
  <div id="tabpanel-2"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-2"
       class="is-hidden">
       
       	<ul id="doctorList"></ul>
	
  </div>
  
   <!-- 산부인과 의료진-->
  <div id="tabpanel-3"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-3"
       class="is-hidden">
    
      	<ul id="doctorList"></ul>
      	
  </div>
     
<!-- 신경과  의료진-->
  <div id="tabpanel-4"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-4"
       class="is-hidden">
    
      	<ul id="doctorList"></ul>
</div>

<!-- 안과   의료진-->
  <div id="tabpanel-5"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-5"
       class="is-hidden">
   
      	<ul id="doctorList"></ul>
</div>

<!-- 이비인후과   의료진-->
  <div id="tabpanel-6"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-6"
       class="is-hidden">
    
      	<ul id="doctorList"></ul>
</div>

<!-- 치과   의료진-->
  <div id="tabpanel-7"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-7"
       class="is-hidden">
     
      	<ul id="doctorList"></ul>
</div>

<!-- 피부과  의료진-->
  <div id="tabpanel-8"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-8"
       class="is-hidden">
     
      	<ul id="doctorList"></ul>
 </div>



<textarea name="otherInfo">추가정보 입력</textarea>
</div>

<form name="form" action="submit2" method="post">
<input type="hidden" name="customerName" value="<c:out value='${reserveData.customerName }'/>"/>
<input type="hidden" name="personalNumber" value="<c:out value='${reserveData.personalNumber }'/>"/>
<input type="hidden" name="email" value="<c:out value='${reserveData.email }'/>"/>
<input type="hidden" name="medicalDept" value="<c:out value='${reserveData.medicalDept }'/>"/>
<input type="hidden" name="doctor" value="<c:out value='${reserveData.doctor }'/>"/>
<input type="hidden" name="otherInfo" value="<c:out value='${reserveData.otherInfo }'/>"/>
<button>Submit</button>
</form>
</section>
</body>
</html>