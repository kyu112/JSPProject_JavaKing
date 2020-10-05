<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	}
	.tab_menu_container{
		margin-left: 60px;
		margin-right: 80px;
		width : 500px;
		display:flex;
		padding-top : 0;
		padding-bottom: 0;
	}
.tab_menu_btn {
	  width:80px;
	  height:40px;
	  background-color : #f1f4f8;
	  transition:0.3s all;
	}
	.tab_menu_btn.on {
	  border-bottom:2px solid #083b90;
	  font-weight:700;
	  color:#083b90;
	}
	.tab_menu_btn:hover {
	  color:#f1f4f8;
	}
#tables{
		margin-left: 80px;
		margin-right: 80px;
		background-color: #f1f4f8;
		width : 500px;
	}
	.container1{
		display: table-cell;
		padding-bottom:20px;
	}
	.container2{
		display: table-cell;
	}
	.container3{
		display: table-cell;
	}
	
.container4{
		display: table-cell;
	}
	#submit{
		margin-left: 10px;
		border : 1px solid black;
		background-color: #083b90;
		color:#f1f4f8;
	}
</style>
</head>
<body>
	<h2>관리자 페이지</h2>

	<form action="insertRegOk.do" method="post">
	<div class="info">
		<div id="tabs">
			<div class="tab_menu_container">
	   	 		<button class="tab_menu_btn" type="button">학생등록</button>
	    		<button class="tab_menu_btn on" type="button">등록금</button>
	  			<button class="tab_menu_btn" type="button">성적등록</button>
	  			<button class="tab_menu_btn" type="button">강의등록</button>
	  			<button class="tab_menu_btn" type="button">교수등록</button>
	  		</div>
	  	</div>
<div id="tables">
			<div class="container1">
					<label for="div학번" id="lbl학번" title="학번">학번</label>
					<input type="number" id="div학번" class="form-control" name="std_no">
					
					<label for="div년도" id="lbl년도" title="년도">년도</label>
					<input type="number" id="div년도" class="form-control" name="reg_year">
					
					<label for="div학년" id="lbl학년" title="학년">학년</label>
					<input type="number" id="div학년" class="form-control" name="reg_level">
					
					<label for="div학기" id="lbl학기" title="학기">학기</label>
	                <input type="number" id="div학기" class="form-control" name="reg_semester">
					  
	                <label for="div미납입학금" id="lbl미납입학금" title="미납입학금">미납입학금</label>
	                <input type="number" id="div미납입학금" class="form-control" name="reg_entfee">
	                
					<label for="div미납등록금" id="lbl미납등록금" title="미납등록금">미납등록금</label>
					<input type="number" id="div미납등록금" class="form-control" name="reg_fee">
					
					<label for="div납부등록금" id="lbl납부등록금" title="납부등록금">납부등록금</label>
					<input type="number" id="div납부등록금" class="form-control" name="reg_regfee">
	
			</div>

					<input type="submit" value="등록" id="submit">
		</div>
	</div>
	</form>
</body>
</html>



