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

	<h2 class="Manager_title">진료예약 EMR</h2>
	
	<!-- 카운트 -->
	<div class="Manager_count">
		<ul>
			<li>예약환자</li>
			<li class="count_color">
			${requestScope.total1 }
			</li>
			<li>|</li>
			<li>접수환자</li>
			<li class="count_color">0</li>
			<li>|</li>
			<li>접수대기</li>
			<li class="count_color">0</li>
			<li>|</li>
			<li>수납대기</li>
			<li class="count_color">0</li>
			<li>|</li>
			<li>수납완료</li>
			<li class="count_color">0</li>
		</ul>
	</div>
	

	<!-- 의료진 검색 -->
	<div class="Manager_keyword">
		<select name="dept">
		<option value="${paging.cri.dept }">${paging.cri.dept }</option>
		<option value="가정의학과">가정의학과</option>
		<option value="성형외과">내과</option>
		<option value="가정의학과">외과</option>
		<option value="성형외과">성형외과</option>
		</select>
		<select name="doctor">
		<option value="${paging.cri.doctor }">${paging.cri.doctor }</option>
		<option value="박선영">박선영</option>
		<option value="나수영">나수영</option>
		<option value="민수용">박선영</option>
		<option value="라시찬">나수영</option>
		<option value="오도리">박선영</option>
		<option value="홍미라">나수영</option>
		</select>

		<input type="date" id="now_date1" name="date1" value=${paging.cri.date1 }>
		-
		<input type="date" id="now_date2" name="date2" value=${paging.cri.date2 }>
	</div>	
	
	<!-- 검색 -->
	<div class="Manager_search">
	<input type="text">
	<input type="submit" value=" 검 색 " id="quiry" formaction="ManagerCheck">
	</div>
	
</form>

	<!-- 환자정보 테이블 -->
	<div class="box">
		<table border="1">
		
		        <colgroup>
			        <col width="15%" />
			        <col width="7%" />
			        <col width="10%" />
			        <col width="15%" />
			        <col width="10%" />
			        <col width="10%" />
			        <%-- <col width="auto" /> --%>
		        </colgroup>
		
				<tr>
					<th class="col1">시간</th> 
					<th class="col2">환자번호</th> 
					<th class="col3">이름</th> 
					<th class="col4">주민등록번호</th> 
					<th class="col4">진료과</th> 
					<th class="col4">의료진</th>
				</tr>
			
				<!-- for문 시작 -->
				<c:forEach items="${list}" var="manager_checklist">
					<tr>
						<td>${manager_checklist.reservationTime}</td>
						<td>${manager_checklist.rno} </td>
						<td><a href="/ManagerCheckDetail?rno=${manager_checklist.rno}">${manager_checklist.customerName} </a></td>
						<td>${manager_checklist.personalNumber} </td>
						<td>${manager_checklist.medicalDept} </td>
						<td>${manager_checklist.doctor} </td>
					</tr>
				</c:forEach>
				<!-- for문 끝 -->
			
		</table>
	</div>
	
	<!-- 페이징 -->
	<div class="Manager_paging">
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
	</div>
	
</body>
</html>