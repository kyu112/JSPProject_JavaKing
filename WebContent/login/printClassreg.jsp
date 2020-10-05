<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	width:1000px;
	align-content: center;
}
table{
	border-collapse: collapse;
}
</style>
</head>
<body>
<h2>수강신청내역</h2>
<h4>(학생보관용)</h4>
<hr>
<table border="1" class="basic">
			<tr>
				<th>순번</th>
				<th>강의명</th>
				<th>학년</th>
				<th>학기</th>
				<th>이수구분</th>
				<th>학점</th>
				<th>교수</th>
				<th>강의시간</th>
				<th>비고</th>
			</tr>
			<c:forEach var="cr" items="${crList }">
				<tr>
					<td>${cr.rownum }<input type="hidden" value="${cr.classreg_no }"></td>
					<td>${cr.class_name }</td>
					<td>${cr.std_level }</td>
					<td>${cr.std_semester }</td>
					<td>${cr.class_type }</td>
					<td>${cr.class_credit }</td>
					<td>${cr.pro_name } (${cr.pro_no })</td>
					<td>${cr.class_dayofweek } ${cr.class_time }</td>
					<td>${cr.classreg_retake }</td>
				</tr>
			</c:forEach>
		</table>
		<br><br>
		<table border="1" class="search">
			<tr>
					<th>총신청학점</th>
					<td>${cCredit }</td>
					<th>신청과목수</th>
					<td>${cSubject }</td>
			</tr>
		</table>
</body>
</html>