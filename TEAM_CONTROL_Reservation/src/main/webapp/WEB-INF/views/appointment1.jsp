<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료 예약하기</title>
<style>
a{
	text-decoration: none;
}


ul, li {
	list-style: none;
	display: inline-block;
}
.impormation{
	border: 1px solid black;
}
.main_icon {
	width: 80px;

}

</style>
</head>

<body>
<h1>${reserveData.personalNumber }</h1>
<!-- 환자 정보 확인 -->
<div class="impormation">
	<h4> 환자 정보 확인 </h4>
	 성명: 입력 받은 customerName값 가지고 오기 <br> 
	 예약번호: <br>
</div>

<!-- 진료과 선택 -->
<div class="deptMenuCaption">
	<ul>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="가정의학과">가정의학과</a></li>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="내과">내과</a></li>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="산부인과">산부인과</a></li>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="신경과">신경과</a></li>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="안과">안과</a></li>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="이비인후과">이비인후과</a></li>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="치과">치과</a></li>
		<li><a href="#"><img class="main_icon" src="img/dental.png" alt="피부과">피부과</a></li>
	</ul>
</div>

<!-- 의료진 선택 -->
<div>
	<h4 class="dept_title">
	"<span>가정의학과</span>" 의료진 목록입니다.</h4>
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
							<td>가정의학과</td>
						</tr>
						<tr>
							<th scope="row">전문분야</th>
							<td>비만, 고도비만, 대사 질환(고혈압, 고지혈증, 당뇨병, 지방간), 비만 수술 전후 치료</td>
						</tr>
						</tbody>
					</table>
					진료과
					전문분야 
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

</body>
</html>