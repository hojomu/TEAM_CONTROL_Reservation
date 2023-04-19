<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<form action="test1" method="post">
	<input type="text" name="personalNumber">
	<input type="text" name="email">
	<input type="submit" value="제출">
</form>

<a href="http://localhost:8080/calendar">달력으로 이동</a>
<hr>
<a href="http://localhost:8080/index">index으로 이동</a>
<hr>
<a href="http://localhost:8080/ManagerCheck">ManagerCheck으로 이동</a>
<hr>
<a href="http://localhost:8080/ManagerCheckDetail">ManagerCheckDetail으로 이동</a>
<hr>
<a href="http://localhost:8080/UserCheck">UserCheck으로 이동</a>
<hr>

</body>
</html>
