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

<table border="1">

	<tr>
		<th colspan="2">예약정보확인</th>
	</tr>
	
	<tr>
		<td>환자번호</td><td>0123</td>
	</tr>
	<tr>
		<td>환자명</td><td>이환자</td>
	</tr>
	<tr>
		<td>진료과</td><td>내과</td>
	</tr>
	<tr>
		<td>의료진</td><td>박자바</td>
	</tr>
	<tr>
		<td>예약시간</td><td>2023-04-19-15:30</td>
	</tr>
	<tr>
		<td colspan="2">
		<button onclick="location.href='http://localhost:8080/index'">예약취소</button>
		<button onclick="location.href='http://localhost:8080/index'">확인</button>
		</td>
	</tr>
	
</table>

</body>
</html>