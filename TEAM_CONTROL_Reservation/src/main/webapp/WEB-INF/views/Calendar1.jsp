<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- upload확인 -->
<style type="text/css">
    a { color:#000000;text-decoration:none; }
    .scriptCalendar { text-align:center; }
    .scriptCalendar > thead > tr > td { width:50px;height:50px; }
    .scriptCalendar > thead > tr:first-child > td { font-weight:bold; }
    .scriptCalendar > thead > tr:last-child > td { background-color:#90EE90; }
    .scriptCalendar > tbody > tr > td { width:50px;height:50px; }
</style>
</head>

<body>
<table class="scriptCalendar">
    <thead>
        <tr>
            <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
            <td colspan="5">
                <span id="calYear">YYYY</span>년
                <span id="calMonth">MM</span>월
            </td>
            <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
        </tr>
        <tr>
            <td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
        </tr>
    </thead>
    <tbody></tbody>
</table>

	<!-- calendar js -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="/resources/js/calendar.js" type="text/javascript"></script>
</body>
</html>