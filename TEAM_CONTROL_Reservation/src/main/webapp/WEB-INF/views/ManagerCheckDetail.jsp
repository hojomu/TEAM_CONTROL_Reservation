<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>  

	<!-- managercheckdetail css -->
	<link rel="stylesheet" href="/resources/css/managercheckdetail.css">

</head>
<body>
<form>
	<table>
	
		<tr>
			<th colspan="2">예약정보확인</th>
		</tr>
		
		<tr>
			<td>환자번호</td>
			<td><input type="text" value="${detail.rno }" name="rno">${detail.rno }</td>
		</tr>
		<tr>
			<td>환자명</td>
			<td><input type="text" value="${detail.customerName }" name="customerName"></td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td><input type="text" value="${detail.personalNumber }" name="personalNumber"></td>		
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" value="${detail.email }" name="email"></td>		
		</tr>
		<tr>
			<td>진료과</td>
			<td><input type="text" value="${detail.medicalDept }" name="medicalDept"></td>			
		</tr>
		<tr>
			<td>의료진</td>
			<td><input type="text" value="${detail.doctor }" name="doctor"></td>		
		</tr>
		<tr>
			<td>예약시간</td>
			<td><input type="text" value="${detail.reservationTime }" name="reservationTime"></td>		
		</tr>
		<tr>
			<td>특이사항</td>
			<td><textarea rows="" cols="" name="otherInfo">${detail.otherInfo }</textarea> </td>
		</tr>
		
	</table>
	<input type="submit" value="수정" id="modifyOk" formaction="ManagerModify">
	<input type="submit" value="삭제" id="delOk" formaction="ManagerDelete">
	<input type="submit" value="확인" formaction="ManagerCheck">
</form>


	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="/resources/js/managercheckdetail.js"></script> 
	
</body>
</html>