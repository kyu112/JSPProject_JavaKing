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
		width : 500px;
		border : 1px solid gray;
	}
	
	.container1{
		padding-bottom:20px;
		color : #083b90;
		font-weight : bold;
		border-bottom : 1px solid gray;
	}
	
	.container2{
		display: table-cell;
		flex:1;
		padding-left : 20px;
		padding-right : 40px;
	}
	
	.container5{
		display: table-cell;
		flex:1;
	}
	
	#tables2{
		margin-top: 20px;
		margin-left: 80px;
		margin-right: 80px;
		background-color: #f1f4f8;
		width : 500px;
		border : 1px solid gray;
	}
	
	.container3{
		padding-bottom:20px;	
		color : #083b90;
		font-weight : bold;
		border-bottom : 1px solid gray;
	}
	
	.container4{
		display: table-cell;
		padding-left : 20px;
	}
	
	#submit{
		padding-top: 10px;
		margin-left: 10px;
		border : 1px solid black;
		background-color: #083b90;
		color:#f1f4f8;
	}
</style>
</head>
<body>
	<h2>학사정보</h2>

	<form action="adminStudentInfo">
	<div class="info">
		<div id="tabs" class="tab_menu_container">
			<button class="tab_menu_btn" type="button" onclick="location='studentInfo.do'">기본정보</button>
	    	<button class="tab_menu_btn on" type="button" onclick="location='startEndDate.do'">입학/졸업</button>
	  		<button class="tab_menu_btn" type="button" onclick="location='change.do'">학적변동</button>
	  		<button class="tab_menu_btn" type="button" onclick="location='listGrade.do'">성적</button>
	  		<button class="tab_menu_btn" type="button" onclick="location='detailClass.jsp'">수강</button>
	  		<button class="tab_menu_btn" type="button" onclick="location='listReg.do'">등록</button>
	  	</div>
		<div id="tables">
			<div class="container1">
					입학정보
	        </div>
	        <div class="container2">   
					<label for="div입학전공" id="lbl입학전공" title="입학전공">입학전공</label>
					<input type="text" id="div입학전공" class="form-control" name="std_major" value="${sv2.std_major }">
			</div>
			<div class="container5">  		
					<label for="div입학일" id="lbl입학일" title="입학일">입학일</label>
					<input type="text" id="div입학일" class="form-control" name="std_startdate" value="${sv2.std_startdate }">			
			</div>
		</div>
		<div id="tables2">
	        <div class="container3">  		
					졸업정보
			</div> 	
			<div class="container4">  		
					<label for="div졸업일" id="lbl졸업일" title="졸업일">졸업일</label>
					<input type="text" id="div졸업일" class="form-control" name="std_enddate" value="${sv2.std_enddate }">
			</div>
		</div>
	</div>
	</form>
</body>
</html>