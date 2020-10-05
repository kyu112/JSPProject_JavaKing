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
		display:flex;
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
		margin-top: 10px;
		margin-left: 10px;
		margin-bottom: 10px;
		border : 1px solid black;
		background-color: #083b90;
		color:#f1f4f8;
	}
</style>
</head>
<body>
	<h2>관리자 페이지</h2>

	<form action="adminStudentInfo">
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
					<label for="div성명" id="lbl성명" title="성명">성명</label>
					<input type="text" id="div성명" class="form-control" name="std_name" value="">
					
					<label for="div학과" id="lbl학과" title="학과">학과</label>
					<input type="text" id="div학과" class="form-control" name="std_major" value="">
					
					<label for="div학번" id="lbl학번" title="학번">학번</label>
					<input type="text" id="div학번" class="form-control" name="std_no" value="">
	        </div>
	        <div class="container2">   
					<label for="div성별" id="lbl성별" title="성별">성별</label>
	                <input type="text" id="div성별" class="form-control" name="std_gender" value="">
	                
					<label for="div학년" id="lbl학년" title="학년">학년</label>
					<input type="text" id="div학년" class="form-control" name="std_level" value="">
					
					<label for="div학적상태" id="lbl학적상태" title="학적상태">학적상태</label>
					<input type="text" id="div학적상태" class="form-control" name="std_status" value="">				
			</div>
	        <div class="container3">  		
					<label for="div생년월일" id="lbl생년월일" title="생년월일">생년월일</label>
	                <input type="text" id="div생년월일" class="form-control" name="std_birthday" value="">
	        
					<label for="div학기" id="lbl학기" title="학기">학기</label>
					<input type="text" id="div학기" class="form-control" name="std_semester" value="">
			
					<label for="div입학일" id="lbl입학일" title="입학일">입학일</label>
					<input type="text" id="div입학일" class="form-control" name="std_startdate" value="">
			</div> 	
			<div class="container4">  		
					<label for="div비밀번호" id="lbl비밀번호" title="비밀번호">비밀번호</label>
					<input type="text" id="div비밀번호" class="form-control" name="std_pwd" value="">
					
					<label for="div지도교수" id="lbl지도교수" title="지도교수">지도교수</label>
					<input type="text" id="div지도교수" class="form-control" name="pro_name" value="">
					
					<label for="div졸업일" id="lbl졸업일" title="졸업일">졸업일</label>
					<input type="text" id="div졸업일" class="form-control" name="std_enddate" value="">
			</div>
			<div class="container5">  		
					<label for="div이메일" id="lbl이메일" title="이메일">이메일</label>
					<input type="text" id="div이메일" class="form-control" name="std_email" value="">
			</div>
			<div class="container6"> 		
					<label for="div특이사항" id="lbl특이사항" title="특이사항">특이사항</label>
	                <textarea rows="10" cols="100%" id="div특이사항" class="form-control" name="std_etc" value=""></textarea>
			</div>
					<input type="submit" value="등록" id="submit">
		</div>
	</div>
	</form>
</body>
</html>