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
		margin-left: 350px;
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

	<form action="adminClassOk.do" method="post">
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
						<td><input type="number" id="div강의번호" class="form-control" name="class_no" value="${class_no }"></td>
					</tr>
					<tr>
						<td><label for="div강의명" id="lbl강의명" title="강의명">강의명</label></td>
						<td><input type="text" id="div강의명" class="form-control" name="class_name" ></td>
					</tr>
					<tr>
						<td><label for="div강의시작일" id="lbl강의시작일" title="강의시작일">강의시작일</label></td>
						<td><input type="date" id="div강의시작일" class="form-control" name="class_startdate"></td>
					</tr>
					<tr>
						<td><label for="div강의종료일" id="lbl강의종료일" title="강의종료일">강의종료일</label></td>
						<td><input type="date" id="div강의종료일" class="form-control" name="class_enddate"></td>
					</tr>
					<tr>
						<td><label for="div강의요일" id="lbl강의요일" title="강의요일">강의요일</label></td>
						<td><input type="text" id="div강의요일" class="form-control" name="class_dayofweek"  placeholder="2일 이상 .으로 구분"></td>
					</tr>
					<tr>
						<td><label for="div강의교시" id="lbl강의교시" title="강의교시">강의교시</label></td>
						<td><input type="text" id="div강의교시" class="form-control" name="class_time" placeholder="2교시 이상 띄어쓰기없이 입력 / 2일 이상 .으로 구분"></td>
					</tr>
					<tr>
						<td><label for="div강의실" id="lbl강의실" title="강의실">강의실</label></td>
						<td><input type="text" id="div강의실" class="form-control" name="class_room" ></td>
					</tr>
					<tr>
						<td><label for="div학점" id="lbl학점" title="학점">학점</label></td>
						<td><input type="number" id="div학점" class="form-control" name="class_credit" value="${c.class_credit }"></td>
					</tr>
					<tr>
						<td><label for="div이수구분" id="lbl이수구분" title="이수구분">이수구분</label></td>
						<td><select id="div이수구분" class="form-control" name="class_type">
							<option selected="selected">선택</option>
							<option value="전공">전공</option>
							<option value="교양">교양</option>
						</select></td>
					</tr>
					<tr>
						<td><label for="div교수번호" id="lbl교수번호" title="교수번호">교수번호</label></td>
						<td><input type="number" id="div교수번호" class="form-control" name="pro_no"></td>
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