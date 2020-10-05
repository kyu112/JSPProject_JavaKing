<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style type="text/css">

	body{
		vertical-align : middle;
	}
	table{
		text-align: center; 
	}

	h2{
		color: #083b90;
		margin-left: 90px;
	}
	
	#form-control { 
		height: 20px; 
		width: 120px;
		line-height: normal;
	}
	div{
		padding:10px;	
	}
	label{
		padding-top : 5px;
	}
	
	.tab_menu_container{
		margin-left: 70px;
		margin-right: 80px;
		width : 700px;
		display: flex;
		padding-top : 0;
		padding-bottom: 0;
	}

	.tab_menu_btn {
	  width:80px;
	  height:40px;
	  background-color : #f1f4f8;
	  transition:0.3s all;
	  border : 1px solid gray;
	}
	.tab_menu_btn.on {
	  border-top:2px solid #083b90;
	  border-left : 1px solid gray;
	  font-weight:700;
	  color:#083b90;
	  background-color: #ffffff;
	}
	.tab_menu_btn:hover {
	  color:#f1f4f8;
	}
	#tables{
		margin-left: 80px;
		margin-right: 80px;
		background-color: #f1f4f8;
		width : 800px;
		border : 1px solid gray;
	}
	.container1{
		padding-bottom:20px;
		color : #083b90;
		font-weight : bold;
		
	}
	.container2{
		padding-left : 0;
		margin-left : 10px;
	}

	#tables2{
		margin-top: 20px;
		margin-left: 80px;
		margin-right: 80px;
		background-color: #f1f4f8;
		width : 800px;
		border : 1px solid gray;
	}
	td{
		text-align: center;
	}
	th{
		border : 1px solid gray;
		text-align: center;
	}
	table{
		width : 750px;
	}
	.container3{
		padding-bottom:20px;	
		color : #083b90;
		font-weight : bold;
		border-bottom : 1px solid gray;
	}
	.container4{
		padding-left : 0;
		margin-left : 10px;
	}
	#div구분{
		text-decoration :  underline;
		color : #0000f5;
	}
	#submit{
		margin-left: 670px;
		border : 1px solid gray;
		background-color: #ffffff;
		color:gray;
	}
</style>
</head>
<body>
	<h2>학사정보</font></h2>

	<form action="detailGrade.do" method="post">
	<div class="info">
		<div id="tabs" class="tab_menu_container">
			<button class="tab_menu_btn" type="button" onclick="location='studentInfo.do'">기본정보</button>
	    	<button class="tab_menu_btn" type="button" onclick="location='startEndDate.do'">입학/졸업</button>
	  		<button class="tab_menu_btn" type="button" onclick="location='change.do'">학적변동</button>
	  		<button class="tab_menu_btn on" type="button" onclick="location='listGrade.do'">성적</button>
	  		<button class="tab_menu_btn" type="button" onclick="location='detailClass.jsp'">수강</button>
	  		<button class="tab_menu_btn" type="button" onclick="location='listReg.do'">등록</button>
	  	</div>
		<div id="tables" class="year_semester_grade">
			<div class="container1">
					년도·학기별
	        </div>
	    	<div class="container2">
			<table>
				<tr>
					<th>구분</th>
					<th>학년</th>
					<th>취득학점</th>
					<th>평점평균</th>
					<th>백분율</th>
				</tr>
				<c:forEach var="g" items="${list}">
				<tr>
					<td><a href="listGrade.do?year=${g.grade_year }&semester=${g.grade_semester}"><input type="text" id="div구분" class="form-control" name="yearsemester" value="${g.grade_year }-${g.grade_semester}"></a></td>
					<td><input type="text" id="div학년" class="form-control" name="grade_level" value="${g.grade_level }"></td>
					<td><input type="text" id="div취득학점" class="form-control" name="grade_getcredit" value="${g.sum_grade_regcredit }"></td>
					<td><input type="text" id="div평점평균" class="form-control" name="average" value="${g.average_grade_getcredit }"></td>
					<td><input type="text" id="div백분율" class="form-control" name="grade_score" value="${g.average_grade_score }"></td>
				</tr>
				</c:forEach>
			</table>
			</div>
		<input type="submit" value="성적표 출력" id="submit">
		</div>
		<div id="tables2">
	        <div class="container3">  		
					상세정보
			</div> 	
			<div class="container4">  		
				<table>
					<tr >
						<th width="30%">과목명</th>
						<th>이수</th>
						<th>학점</th>
						<th>점수</th>
						<th>등급</th>
					</tr>
					<c:forEach var="d" items="${dlist}">
					<tr>
						<td><input type="text" id="div과목명" class="form-control" name="class_name" value="${d.class_name}"></td>
						<td><input type="text" id="div이수" class="form-control" name="class_type" value="${d.class_type }"></td>
						<td><input type="text" id="div학점" class="form-control" name="grade_regcredit" value="${d.grade_regcredit }"></td>
						<td><input type="text" id="div점수" class="form-control" name="grade_score" value="${d.grade_score }"></td>
						<td><input type="text" id="div등급" class="form-control" name="grade_rank" value="${d.grade_rank }"></td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	</form>
</body>
</html>