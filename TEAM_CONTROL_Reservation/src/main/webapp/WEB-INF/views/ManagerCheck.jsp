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
<form>
	<h3>예약확인 차트</h3>
	진료과
	<select name="dept">
		<option value="${paging.cri.dept }">${paging.cri.dept }</option>
		<option value="가정의학과">가정의학과</option>
		<option value="성형외과">내과</option>
		<option value="가정의학과">외과</option>
		<option value="성형외과">성형외과</option>
	</select>
	의료진
	<select name="doctor">
		<option value="${paging.cri.doctor }">${paging.cri.doctor }</option>
		<option value="박선영">박선영</option>
		<option value="나수영">나수영</option>
		<option value="민수용">박선영</option>
		<option value="라시찬">나수영</option>
		<option value="오도리">박선영</option>
		<option value="홍미라">나수영</option>
	</select>	
	
	<ul>
	<li>예약환자 ${requestScope.total1 } |</li>
	<li>접수환자 0 |</li>
	<li>접수대기 0 |</li>
	<li>수납대기 0 |</li>
	<li>수납완료 0 </li>
	</ul>
	
	<br>	
	<input type="date" id="now_date1" name="date1" value=${paging.cri.date1 }>
	-
	<input type="date" id="now_date2" name="date2" value=${paging.cri.date2 }>
	<input type="submit" value=" 검 색 " id="quiry" formaction="ManagerCheck">
</form>

	<table border="1">
	
		<tr>
			<th>시간</th> <th>환자번호</th> <th>이름</th> <th>진료과</th> <th>의료진</th>
		</tr>
		
		<!-- for문 시작 -->
		<c:forEach items="${list}" var="manager_checklist">
			<tr>
				<td>${manager_checklist.reservationTime}</td>
				<td>${manager_checklist.rno} </td>
				<td><a href="/ManagerCheckDetail?rno=${manager_checklist.rno}">${manager_checklist.customerName} </a></td>
				<td>${manager_checklist.medicalDept} </td>
				<td>${manager_checklist.doctor} </td>
			</tr>
		</c:forEach>
		<!-- for문 끝 -->
		
	</table>
	
	
	<!-- prev(이전)이 true이면 이전버튼 활성화 -->
	<c:if test="${paging.prev}">
		<a href="/ManagerCheck?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
	</c:if>
	
	<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
	 	<a href="/ManagerCheck?dept=${paging.cri.dept}&doctor=${paging.cri.doctor}&date1=${paging.cri.date1}&date2=${paging.cri.date2}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
	</c:forEach>
	
	<!-- next(다음)이 true이면 다음버튼 활성화 -->
	<c:if test="${paging.next}">
		<a href="/ManagerCheck?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">다음</a>
	</c:if>
	<script>
<!--		document.getElementById('now_date1').valueAsDate = new Date();
		document.getElementById('now_date2').valueAsDate = new Date(); -->
    </script>
	
	
</body>
</html>