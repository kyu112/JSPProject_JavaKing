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
		border-spacing: 15px;
 		border-collapse: separate;
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
		margin-left : 13px;
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
		width : 500px;
		border : 1px solid gray;
		background-color: #f1f4f8;
	}
	.container1{
		margin-top : 15px;
		padding-bottom:15px;
		font-weight : bold;
		
	}
	.container2{
		padding-left : 40px;
		margin-left : 10px;
	}
	tr{
		
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
	
	#submit{
		margin-left: 330px;
		margin-top : 10px;
		border : 1px solid gray;
		background-color: #083b90;
		color:white;
	}
	
	.form-control{
		margin-left : 15px;
		width : 310px;
	}
	
	input::placeholder {
		font-size: 8px;
	}
</style>
</head>
<body>
	<h2>학사정보</font></h2>

	<form action="adminGradeOk.do" method="post">
	<div class="info">
		<div id="tabs" class="tab_menu_container">
	   	 	<button class="tab_menu_btn" type="button" onclick="location='adminStudenInfo.do'">학생등록</button>
	    	<button class="tab_menu_btn" type="button">등록금</button>
	  		<button class="tab_menu_btn on" type="button">성적등록</button>
	  		<button class="tab_menu_btn" type="button">강의등록</button>
	  		<button class="tab_menu_btn" type="button">교수등록</button>
	  	</div>
		<div id="tables">
			<div class="container1">
				<table>
					<tr>
						<td><label for="div강의번호" id="lbl강의번호" title="강의번호">강의번호</label></td>
						<td><input type="number" id="div강의번호" class="form-control" name="class_no"></td>
					</tr>
					<tr>
						<td><label for="div학번" id="lbl학번" title="학번">학번</label></td>
						<td><input type="number" id="div학번" class="form-control" name="std_no"></td>
					</tr>
					<tr>
						<td><label for="div학년" id="lbl학년" title="학년">학년</label></td>
						<td><input type="number" id="div학년" class="form-control" name="grade_level"></td>
					</tr>
					<tr>
						<td><label for="div학기" id="lbl학기" title="학기">학기</label></td>
						<td><input type="number" id="div학기" class="form-control" name="grade_semester"></td>
					</tr>
					<tr>
						<td><label for="div성적번호" id="lbl성적번호" title="성적번호">성적번호</label></td>
						<td><input type="number" id="div성적번호" class="form-control" name="grade_no"></td>
					</tr>
					<tr>
						<td><label for="div수강학점" id="lbl수강학점" title="수강학점">수강학점</label></td>
						<td><input type="number" id="div수강학점" class="form-control" name="grade_regcredit"></td>
					</tr>
					<tr>
						<td><label for="div취득학점" id="lbl취득학점" title="취득학점">취득학점</label></td>
						<td><input type="number" step="0.5" id="div취득학점" class="form-control" name="grade_getcredit"></td>
					</tr>
					<tr>
						<td><label for="div점수" id="lbl점수" title="점수">점수</label></td>
						<td><input type="number" id="div점수" class="form-control" name="grade_score"></td>
					</tr>
				</table>	      
	        <div class="container2">
	        	<input type="submit" value="등록" id="submit">
	        </div>
		</div>
	</div>
	</form>
</body>
</html>