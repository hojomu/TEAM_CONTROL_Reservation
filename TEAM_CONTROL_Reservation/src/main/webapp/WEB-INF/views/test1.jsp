<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" value="<c:out value='${reserveData.personalNumber }'/>"/>
<input type="text" value="<c:out value='${reserveData.email }'/>"/>

<form action="undefined2" method="post">
	<input type="text" name="이메일 앞자리">
	<input type="text" name="이메일 뒷자리">
	<input type="hidden" name="email" value="합쳐진 값">
	<input type="text" name="email">
	<input type="text" name="medicalDept">
	<input type="text" name="doctor">
	<input type="text" name="reservationTime">
	<input type="text" name="otherInfo">
	<input type="hidden">
	<input type="submit" value="제출">
</form>
</body>
</html>