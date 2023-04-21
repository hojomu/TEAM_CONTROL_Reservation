<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- index css --><!-- 수정 -->
	<link rel="stylesheet" href="/resources/css/index.css">
	
	<style>
	* {
  margin: 0 auto;
  padding: 0;
  font-family: "맑은 고딕";
  list-style: none;
  color: #000000;
}
p {
	font-size: 0.8em;
}
h3{
	margin-top:30px;
	margin-bottom:15px;
}
input{
	width: 150px;
	height: 30px;
	border: 2px;
	border-radius: 5px;
	background: rgba(200,200,200,0.5);
	padding-left:10px;
}
input:focus{
	outline:none;
}
.ManagerCheck_view{
	float: right;
	margin: 20px;
}
.appointment{
	width:100%;
	height:100%;
}
.container {
  overflow: hidden;
  width: 602px;
  height:350px;
  text-align: center;
  border: 1px solid rgb(6,14,131);
  border-top: none;
  border-radius: 10px;
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%,-50%); 
}
.container .change {
  overflow: hidden;
}
/* 기본세팅 */
.container .change span {
  float: left;
  width: 50%;
  display: block;
  padding: 8px 0;
  font-size: 20px;
  font-weight: bold;
  cursor: pointer;
  background-color: #EEE;
  color: #919191;
  border: 1px solid rgb(6,14,131);
  border-left: none;
  border-right: none;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}
/* 클릭했을때 */
.container .change span.active {
  border-top: 3px solid rgb(6,14,131);
  border-bottom: none;
  background-color: #FFF;
  color: #000;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}
.container .client-change {
  padding: 25px;
  background-color: #FFF;
}
.container .client-change form {
  overflow: hidden;
  display: none;
}
.container .client-change form.active {
  display: block;
}
.user-form{
	height: 300px;
	position: relative;
}
.medical_user{
	display:flex;
    align-items: center;
    margin: 10px
}
.medical_button_icon{
 	margin-right: 5px; 
}
.medical_button_title{
  font-size: 22px;
  font-weight: bold;
  margin-left: 5px;
}
.medical_box_center{
	position:relative;
}
.medical_box{
	margin-top: 45px;
	width: 400px;
	height: 80px;
	border-radius: 5px;
	background-color: #e6e6e6;
	display: flex;
    justify-content: center;
    align-items: center;
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%); 
}
/* button css */
button {
  margin: 15px;
}
.custom-btn {
  width: 200px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
  box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}
.btn-1 {
  background: rgb(6,14,131);
  background: linear-gradient(0deg, rgba(6,14,131,1) 0%, rgba(12,25,180,1) 100%);
  border: none;
}
.btn-1:hover {
   background: rgb(0,3,255);
   background: linear-gradient(0deg, rgba(0,3,255,1) 0%, rgba(2,126,251,1) 100%);
}
	</style>

</head>
<body>

<a href="/ManagerCheck"><img alt="medical" class="ManagerCheck_view" src="/resources/icon/ManagerCheck_view_icon.png" width="80" height="auto"></a>

<!-- appointment -->
<div class="appointment">
	<!-- container -->
	<div class="container">
		<div class="change">
	        <span class="active user">진료 예약</span>
	        <span class="manager">진료 예약 조회</span>
		</div>
	      
	    <!-- client-change -->
	    <div class="client-change">
	    	
	        <!-- 비회원 진료 예약 -->
	        <form class="user-form active">
		        <div class="medical_user">
					<img class="medical_button_icon"alt="medical" src="/resources/icon/medical_icon.png" width="auto" height="50">
					<div class="medical_button_title">비회원 진료 예약</div>
				</div>
		   		<p>
		   		회원가입을 하지 않아도 진료예약 및 조회가 가능합니다.<br>
				단, 일부 서비스 이용이 제한될 수 있습니다.</p>
		   		<button class="custom-btn btn-1" onclick="location.href='http://localhost:8080/calendar'">비회원 진료 예약하기</button>
		   		<div class="medical_box_center">
			   		<p class="medical_box">회원가입을 하실 경우 『나의차트』에서 진료 및 투약내역,<br>
			   	 	복약상담, 진단검사결과, 증명서 출력 서비스 등<br>
			   		개인화 서비스를 이용하실 수 있습니다.</p>
		        </div>
	        </form>
	        
	        <!-- 비회원 진료 예약 조회 -->
	        <form class="manager-form">
		        <div class="medical_user">
					<img class="medical_button_icon"alt="medical" src="/resources/icon/medical_icon.png" width="auto" height="50">
					<div class="medical_button_title">진료 예약 조회</div>
				</div>
		   			<h3>주민번호 입력</h3>
		   			<span class="user_input"><input type="text">-<input type="password"><br></span>
		   		<button class="custom-btn btn-1" onclick="location.href='http://localhost:8080/UserCheck'">비회원 진료 예약 조회</button>
	        </form>
	
	
	    </div><!-- client-change 끝 -->
	</div><!-- container 끝 -->
</div><!-- appointment 끝 -->


	<!-- index js -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="/resources/js/index.js" type="text/javascript"></script>

</body>
</html>