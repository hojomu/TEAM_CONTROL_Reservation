<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>  

	<!-- managercheckdetail css -->
	<link rel="stylesheet" href="/resources/css/managercheckdetail.css"></link>	

</head>
<body>
<div class="container">
  <div class="item">
	<form>    
  	  <div class="detail_table"> 	
  	    <h2 class="ManaDetail_title">${detail.customerName} 님의 진료 정보</h2>
		<table>			
		    <colgroup>
		        <col width="20%" />
		        <col width="40%" />		       
		        <%-- <col width="auto" /> --%>
		    </colgroup>
			<tr>
				<td class="title2">환자번호</td>
				<td class="content2">
				   <input type="text" value="${detail.rno}" name="rno">
				   <input type="hidden" value="${cri.dept1}" name="dept1">
				   <input type="hidden" value="${cri.doctor1}" name="doctor1">
				   <input type="hidden" value="${cri.date1}" name="date1">
				   <input type="hidden" value="${cri.date2}" name="date2">
				</td>
			</tr>
			<tr>
				<td>환 자 명</td>
				<td class="content2"><input type="text" value="${detail.customerName}" name="customerName"></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td class="content2"><input type="text" value="${detail.personalNumber}" name="personalNumber"></td>		
			</tr>
			<tr>
				<td>이 메 일</td>
				<td class="content2"><input type="text" value="${detail.email}" name="email"></td>		
			</tr>
			<tr>
				<td>진 료 과</td>
				<td class="content2"><input type="text" value="${detail.medicalDept}" name="medicalDept"></td>			
			</tr>
			<tr>
				<td>의 료 진</td>
				<td class="content2"><input type="text" value="${detail.doctor}" name="doctor"></td>		
			</tr>
			<tr>
				<td>예약시간</td>
				<td class="content2"><input type="text" value="${detail.reservationTime}" name="reservationTime"></td>		
			</tr>
			<tr>
				<td>특이사항</td>
				<td class="content2"><textarea rows="" cols="" name="otherInfo">${detail.otherInfo}</textarea> </td>
			</tr>		
		</table>
	  </div>
	  <div class="detail_button">
		  <div class="detail_button_item">
				<input type="submit" value="수 정" id="modifyOk" class="btn-get-started" formaction="ManagerModify">
				<input type="submit" value="삭 제" id="delOk" class="btn-get-started" formaction="ManagerDelete">
				<input type="submit" value="확 인" class="btn-get-started" formaction="ManagerCheck">
		  </div>
	  </div>
    </form>
  </div>
</div>

	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="/resources/js/managercheckdetail.js"></script> 
	
</body>
</html>