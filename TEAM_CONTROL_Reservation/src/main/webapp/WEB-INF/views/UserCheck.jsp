<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- usercheck css -->
	<link rel="stylesheet" href="/resources/css/usercheck.css">

</head>
<body>
<main>
  <div role="region" aria-label="data table" tabindex="0" class="primary">
 <table>
      <thead>
        <tr>
          <th class="pin" colspan="2"> 예약정보 확인 </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>환자번호</th>
          <td>${reserveData.rno }</td>
        </tr>
        <tr>
          <th>환자명</th>
          <td>${reserveData.customerName }</td>
        </tr>
        <tr>
          <th>진료과</th>
          <td>${reserveData.medicalDept }</td>
        </tr>
        <tr>
          <th>의료진</th>
          <td>${reserveData.doctor }</td>
        </tr>
        <tr>
          <th>예약시간</th>
          <td>${reserveData.reservationTime }</td>
        </tr>
        </tbody>
        
</table>
</div>

<form action="/delete" method="post" id="frm">
	<input type="hidden" name="rno" value="${reserveData.rno }">
</form>

   <div class="container">
	<a href="#" onclick="return chk_form()" class="btn-get-started">예약취소</a>
    <a href="#" onclick="return reservationEnd()" class="btn-get-started">예약확인</a>
    <div class="clear"></div>
  </div>
  
</main>

	<script src="/resources/js/UserCheck.js" type="text/javascript"></script>


</body>
</html>