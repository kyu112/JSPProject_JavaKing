<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 목록</title>
<style type="text/css">
td{
	text-align: center;
}
tr:hover{
	color: #3a7cec;
}
table{
	border-collapse: collapse;
}

</style>
</head>
<body>
	<h2>강의 목록</h2>
	<hr>
	<a href="adminClass.do"><button>신규등록</button></a><br><br>
	<table border="1" width=80%>
		<tr>
			<th>강의번호</th>
			<th>과목명</th>
			<th>일자(요일,시간)</th>
			<th>강의교실</th>
			<th>시작일</th>
			<th>종료일</th>
			<th>학점</th>
			<th>이수구분</th>
			<th>담당교수</th>
			<th>admin</th>
		</tr>
		<c:forEach var="c" items="${list }">		
			<tr>
				<td>${c.class_no }</td>
				<td>${c.class_name }</td>
				<td>${c.class_dayofweek } ${c.class_time }</td>
				<td>${c.class_room }</td>
				<td>${c.class_startdate }</td>
				<td>${c.class_enddate }</td>
				<td>${c.class_credit }</td>
				<td>${c.class_type }</td>
				<td>${c.pro_name }</td>
				<td>
					<a href="adminClassEdit.do?classno=${c.class_no }"><button>수정</button></a> 
					<a href="adminClassDelete.do?classno=${c.class_no }"><button>삭제</button></a>
				</td>
			</tr>
		</c:forEach>
	</table>
		<c:forEach var="i" begin="1" end="${totalPage }">
				<a href="class.do?pageNum=${i }">${i }</a> 
				</c:forEach>
</body>
</html>

	
	
