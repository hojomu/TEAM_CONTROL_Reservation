<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/appointment.css">
	<script src="resources/js/appointment.js" type="text/javascript"></script>
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
            >
      <span class="focus">
           	<img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental">가정의학과
      </span>
    </button>
    <button id="tab-2"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-2"
            tabindex="-1">
      <span class="focus">
      	   <img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental"> 내과
      </span>
    </button>
    <button id="tab-3"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-3"
            tabindex="-1">
      <span class="focus">
           <img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental"> 산부인과
      </span>
    </button>
    <button id="tab-4"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-4"
            tabindex="-1">
      <span class="focus">
     	 <img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental"> 신경과 
      </span>
    </button>
    <button id="tab-5"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-5"
            tabindex="-1">
      <span class="focus">
     	 <img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental"> 안과 
      </span>
    </button>
    <button id="tab-6"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-6"
            tabindex="-1">
      <span class="focus">
     	 <img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental"> 이비인후과 
      </span>
    </button>
    <button id="tab-7"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-7"
            tabindex="-1">
      <span class="focus">
     	 <img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental"> 치과 
      </span>
    </button>
    <button id="tab-8"
            type="button"
            role="tab"
            aria-selected="false"
            aria-controls="tabpanel-8"
            tabindex="-1">
      <span class="focus">
     	 <img class="iconCategory" src="resources/img/dental.png" alt="dental" title="dental"> 피부과
      </span>
    </button>
  </div>
  
  <!-- 의료진 목록 -->
  <!-- 가정의학과 의료진-->
  <div id="tabpanel-1"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-1">
    <p>
     <h4 class="dept_title">
	"<span>가정의학과</span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>가정의학과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>가정의학과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div> 
 </div>
 
   <!-- 내과 의료진-->
  <div id="tabpanel-2"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-2"
       class="is-hidden">
    <p>
          <h4 class="dept_title">
	"<span>내과</span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>내과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td></td>
						</tr>
						</tbody>
					</table>			
				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>내과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td></td>
						</tr>
						</tbody>
					</table>			
				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div>  
  </div>
  
   <!-- 산부인과 의료진-->
  <div id="tabpanel-3"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-3"
       class="is-hidden">
    <p>
          <h4 class="dept_title">
	"<span>산부인과</span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>산부인과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>

				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div>
  </div>
     
<!-- 신경과  의료진-->
  <div id="tabpanel-4"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-4"
       class="is-hidden">
    <p>
           <h4 class="dept_title">
	"<span>신경과 </span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>신경과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>

				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div>
</div>

<!-- 안과   의료진-->
  <div id="tabpanel-5"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-5"
       class="is-hidden">
    <p>
           <h4 class="dept_title">
	"<span>안과  </span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>안과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>

				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div>
</div>

<!-- 이비인후과   의료진-->
  <div id="tabpanel-6"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-6"
       class="is-hidden">
    <p>
           <h4 class="dept_title">
	"<span>이비인후과 </span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="resources/img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>이비인후과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>

				</div>
			</div>
			<div class="select_button">
				<a href="Calendar1.jsp">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div>
</div>

<!-- 치과   의료진-->
  <div id="tabpanel-7"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-7"
       class="is-hidden">
    <p>
           <h4 class="dept_title">
	"<span>치과  </span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>치과 </td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>

				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div>
</div>

<!-- 피부과  의료진-->
  <div id="tabpanel-8"
       role="tabpanel"
       tabindex="0"
       aria-labelledby="tab-8"
       class="is-hidden">
    <p>
           <h4 class="dept_title">
	"<span>피부과 </span>" 의료진 목록입니다.</h4>
	<div class="board">
	<ul class="doctor_list">
		<li>
			<div class="doctor_photo"><img src="img/doctor1.jpg" style="width: 170px; height: 200px"></div>
			<div class="doctor_info">
				<p class="doctor_name">박선영</p>
				<div class="professionally_info" >
					<table>
						<tbody>
						<tr>
							<th scope="row">진료과</th>
							<td>피부과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="select_button">
				<a href="#">
					<span>진료예약하기</span>
				</a>
			</div>	
		</li>
	</ul>
</div>
</div>
<textarea name="otherInfo">추가정보 입력</textarea>
</div>
<form name="form" action="submit2" method="post">
<input type="hidden" name="customerName" value="<c:out value='${reserveData.customerName }'/>"/>
<input type="hidden" name="personalNumber" value="<c:out value='${reserveData.personalNumber }'/>"/>
<input type="hidden" name="email" value="<c:out value='${reserveData.email }'/>"/>


<button>Submit</button>
</form>
</section>
</body>
</html>