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

	<form action="insertProOk.do" method="post">
	<div class="info">
		<div id="tabs" class="tab_menu_container">
	   	 	<button class="tab_menu_btn" type="button">학생등록</button>
	    	<button class="tab_menu_btn" type="button">등록금</button>
	  		<button class="tab_menu_btn" type="button">성적등록</button>
	  		<button class="tab_menu_btn" type="button">강의등록</button>
	  		<button class="tab_menu_btn on" type="button">교수등록</button>
	  	</div>
		<div id="tables">
			<div class="container1">
				<table>
					<tr>
						<td><label for="div교수번호" id="lbl교수번호" title="교수번호">교수번호</label></td>
						<td><input type="number" id="div교수번호" class="form-control" name="pro_no"></td>
					</tr>
					<tr>
						<td><label for="div교수명" id="lbl교수명" title="교수명">교수명</label></td>
						<td><input type="text" id="div교수명" class="form-control" name="pro_name"></td>
					</tr>
					<tr>
						<td><label for="div소속" id="lbl소속" title="소속">학부</label></td>
						<td><select id="div소속" class="form-control" name="pro_type">
							<option selected="selected">선택</option>
							<option value="인문">인문학부</option>
							<option value="사회경영">사회경영학부</option>
							<option value="공학">공학부</option>
							<option value="문화예술">문화예술학부</option>
						</select></td>
					</tr>
					<tr>
						<td><label for="div전공" id="lbl전공" title="전공">전공</label></td>
						<td><input type="text" id="div전공" class="form-control" name="pro_major"></td>
					</tr>
					<tr>
						<td><label for="div이메일" id="lbl이메일" title="이메일">이메일</label></td>
						<td><input type="email" id="div이메일" class="form-control" name="pro_email"></td>
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