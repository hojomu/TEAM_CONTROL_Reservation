<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- managercheck css -->
	<link rel="stylesheet" href="/resources/css/managercheck.css">

</head>
<body>

<h3>예약확인 차트</h3>

	<select name="">
		<option value="">전체</option>
		<option value="">진료과</option>
		<option value="">의료진</option>
	</select>
	
	<input type="text">
	
	<ul>
	<li>예약환자 카운트 |</li>
	<li>접수환자 0 |</li>
	<li>접수대기 0 |</li>
	<li>수납대기 0 |</li>
	<li>수납완료 0 </li>
	</ul>
	
	<br>
	
	<input type="date" name="startday">
	-
	<input type="date" name="startday">

	<table border="1">
	
		<tr>
			<th>시간</th> <th>환자번호</th> <th>이름</th> <th>진료과</th> <th>의료진</th>
		</tr>
		
		<!-- for문 시작 -->
		<c:forEach items="${list}" var="manager_checklist">
			<tr>
				<td>${manager_checklist.reservationTime}</td>
				<td>${manager_checklist.rno} </td>
				<td><a href="/ManagerChrckDetail?rno=${manager_checklist.rno}">${manager_checklist.customerName} </a></td>
				<td>${manager_checklist.medicalDept} </td>
				<td>${manager_checklist.doctor} </td>
			</tr>
		</c:forEach>
		<!-- for문 끝 -->
		
	</table>
	
	<p>페이징</p>

	
</body>
</html>