<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">

	<tr>
		<th colspan="2">예약정보확인</th>
	</tr>
	
	<tr>
		<td>환자번호</td><td>${manager_checklist.rno}</td>
	</tr>
	<tr>
		<td>환자명</td><td>${manager_checklist.customerName}</td>
	</tr>
	<tr>
		<td>진료과</td><td>${manager_checklist.medicalDept}</td>
	</tr>
	<tr>
		<td>의료진</td><td>${manager_checklist.doctor}</td>
	</tr>
	<tr>
		<td>예약시간</td><td>${manager_checklist.reservationTime}</td>
	</tr>
	
</table>

<button>예약취소</button>
<button>확인</button>

</body>
</html>