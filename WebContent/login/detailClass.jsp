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
		text-align: middle; 
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
		color : #083b90;
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
		width : 800px;
		border : 1px solid gray;
	}
	.container1{
		padding-bottom:20px;
		font-weight : bold;
		display : table-cell;
		
	}
	.container2{
		padding-left : 40px;
		margin-left : 10px;
		display : table-cell;
	}

	td{
		text-align: center;
	}
	th{
		border : 1px solid gray;
		text-align: center;
		background-color: #f1f4f8;
	}

	select{
		width : 190px;
		height : 35px;
		border : 1px solid #d5d8db;
	}
	.container3{
		border-bottom : 1px solid gray;
	}
	.container4{
		padding-bottom:20px;
		font-weight : bold;
	}
	
	#submit{
		margin-left: 710px;
		border : 1px solid gray;
		background-color: #083b90;
		color:white;
	}
</style>
</head>
<body>
	<h2>학사정보</font></h2>

	<form action="detailClassOk.do" method="post">
	<input type="hidden" name="std_no" value="${std_no }">
	<div class="info">
		<div id="tabs" class="tab_menu_container">
	   	 	<button class="tab_menu_btn" type="button">기본정보</button>
	    	<button class="tab_menu_btn" type="button">입학/졸업</button>
	  		<button class="tab_menu_btn" type="button">학적변동</button>
	  		<button class="tab_menu_btn" type="button">성적</button>
	  		<button class="tab_menu_btn on" type="button">수강</button>
	  		<button class="tab_menu_btn" type="button">등록</button>
	  	</div>
		<div id="tables" class="year_semester_grade">
			<div class="container1">
					<label for="div년도" id="lbl년도" title="년도">년도</label>
					<input type="text" id="div년도" class="form-control" name="year">
	        </div>
	        <div class="container2">
					<label for="div학기" id="lbl학기" title="학기">학기</label>
					<br><select id="div학기" title="학기" name="semester">
						<option value="1">1</option>
						<option value="2">2</option>
					</select>
	        </div>
	        <div class="container3">
	        	<input type="submit" value="조회" id="submit">
	        </div>
	    	<div class="container4">
			<table>
				<tr>
					<th>년도</th>
					<th>학기</th>
					<th>이수구분</th>
					<th>과목번호</th>
					<th width="25%">과목명</th>
					<th>담당교수</th>
					<th>학점</th>
					<th width="15%">강의시간</th>
				</tr>
				<c:forEach var="cv" items="${list }">
					<tr>
					<td><input type="text" id="div년도" class="form-control" name="year" value="${cv.class_year }" readonly="readonly"></td>
					<td><input type="text" id="div학기" class="form-control" name="semester" value="${cv.classreg_semester }" readonly="readonly"></td>
					<td><input type="text" id="div이수구분" class="form-control" name="class_type" value="${cv.class_type }" readonly="readonly"></td>
					<td><input type="text" id="div과목번호" class="form-control" name="class_no" value="${cv.class_no }" readonly="readonly"></td>
					<td><input type="text" id="div과목명" class="form-control" name="class_name" value="${cv.class_name }" readonly="readonly"></td>
					<td><input type="text" id="div담당교수" class="form-control" name="pro_name" value="${cv.pro_name } (${cv.pro_no })" readonly="readonly"></td>
					<td><input type="text" id="div학점" class="form-control" name="class_credit" value="${cv.class_credit }" readonly="readonly"></td>
					<td><input type="text" id="div강의시간" class="form-control" name="class_dayofweek_class_time" value="${cv.class_dayofweek } ${cv.class_time }" readonly="readonly"></td>
						<!--  
						<td>${cv.class_year }</td>
						<td>${cv.classreg_semester }</td>
						<td>${cv.class_type }</td>
						<td>${cv.class_no }</td>
						<td>${cv.class_name }</td>
						<td>${cv.pro_name } (${cv.pro_no })</td>
						<td>${cv.class_credit }</td>
						<td>${cv.class_dayofweek } ${cv.class_time }</td>
						-->
					</tr>
				</c:forEach>
			</table>
			</div>
		</div>
	</div>
	</form>
</body>
</html>