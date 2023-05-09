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

	<h2 class="Manager_title">진료예약 명단</h2>
	
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
		<select name="mecicalDept" id="medicalDept">
			<option value="" selected disabled>진료과</option>
			<option value="a">가정의학과</option>
			<option value="b">내과</option>
			<option value="c">산부인과</option>
			<option value="d">신경과</option>
			<option value="e">안과</option>
			<option value="f">이비인후과</option>
			<option value="g">치과</option>
			<option >피부과</option>
		</select>
		
		<select name="doctor1" id="doctor">
			<option value="" selected disabled>의료진</option>
		</select>

		<input type="date" id="now_date1" name="date1" class="date" value="${paging.cri.date1}">
		<span class="date_-">-</span>
		<input type="date" id="now_date2" name="date2" class="date" value="${paging.cri.date2}">
		
		<input type="submit" value=" 검 색 " id="quiry" class="btn-get-started" >
		
	</div>	
	
	<!-- 아이콘 -->
	<div class="Manager_icon">
	<div class="Manager_icon_item">
		<a href="/medicalhome"><img alt="홈페이지 이동" src="/resources/icon/medical_home.png" width="36" height="auto"></a>
		<a href="/call_reservation"><img alt="전화예약 접수" src="/resources/icon/medical_add.png" width="36" height="auto"></a>
	</div>
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
				
				<thead>
				<tr>
					<th class="col1">시간</th> 
					<th class="col2">환자번호</th> 
					<th class="col3">이름</th> 
					<th class="col4">주민등록번호</th> 
					<th class="col4">진료과</th> 
					<th class="col4">의료진</th>
				</tr>
				</thead>
				
				<tbody>
				<!-- for문 시작 -->
				<c:forEach items="${list}" var="manager_checklist">
					<tr>
						<td>${manager_checklist.reservationTime}</td>
						<td>${manager_checklist.rno} </td>
						<td>
							<a href="/ManagerCheckDetail?rno=${manager_checklist.rno}&dept1=${paging.cri.dept1}&doctor1=${paging.cri.doctor1}&date1=${paging.cri.date1}&date2=${paging.cri.date2}">
							${manager_checklist.customerName} </a>
						
						</td>
						<td>${manager_checklist.personalNumber} </td>
						<td>${manager_checklist.medicalDept} </td>
						<td>${manager_checklist.doctor} </td>
					</tr>
				</c:forEach>
				<!-- for문 끝 -->
				</tbody>
			
		</table>
	</div>
	
	<!-- 페이징 -->
	<div class="Manager_paging">
		<!-- prev(이전)이 true이면 이전버튼 활성화 
		<c:if test="${paging.prev}">
			<a href="/ManagerCheck?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
		</c:if>  
		-->
		<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) 
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
		 	<a href="/ManagerCheck?dept1=${paging.cri.dept1}&doctor1=${paging.cri.doctor1}&date1=${paging.cri.date1}&date2=${paging.cri.date2}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
		</c:forEach>
		-->
		<!-- next(다음)이 true이면 다음버튼 활성화 
		<c:if test="${paging.next}">
			<a href="/ManagerCheck?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">다음</a>
		</c:if> -->

	</div>
	
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		<script src="/resources/js/managercheck.js" type="text/javascript"></script>	
</body>
</html>