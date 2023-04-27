<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- usercheck css -->
	<link rel="stylesheet" href="/resources/css/usercheck.css">

</head>
<body>

<main>
	<h1 id="welcome">님 예약 정보</h1>
	<div id="infomation-wrap">
	
	</div>
</main>
<input type="hidden" name="personalNumber" value="${reserveData.personalNumber }">
	<!-- script 링크 -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="resources/js/userSelfCheck.js" type="text/javascript"></script>
	
</body>
</html>