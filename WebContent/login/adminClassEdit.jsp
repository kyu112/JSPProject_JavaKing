<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form {
    margin: 0 auto;
    width: 400px;
    padding: 1em;
    border: 1px solid #CCC;
    border-radius: 1em;
}

form div + div {
    margin-top: 1em;
}

label {
   
    display: inline-block;
    width: 90px;
    text-align: right;
}

input{
    font: 1em sans-serif;
    width: 300px;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    border: 1px solid #999;
}

.button {
    
    padding-left: 90px;
}

button {
    margin-left: .5em;
}

input::placeholder {
	font-size: 8px;
}

</style>
<meta charset="UTF-8">
<title>강의 등록</title>
</head>
<body>
	<h2 align="center"><font color="blue">강의 수정</font></h2>
	<form action="adminClassEditOk.do" method="post">
			<div>
				<label for="강의번호">강의번호:</label>
				<input type="number" id="NO" name="class_no" value="${c.class_no }" readonly="readonly"><br>
			</div>
			<div>
		<label for="강의명">강의명:</label>
		<input type="text" id=NAME name="class_name" value="${c.class_name }"><br>
		</div>
		<div>
		<label for="강의시작일">강의시작일:</label>
		<input type="date" id="STARTDATE" name="class_startdate" value="${c.class_startdate }"><br>
		</div>
		<div>
		<label for="강의종료일">강의종료일:</label>
		<input type="date" id="ENDDATE" name="class_enddate" value="${c.class_enddate }"><br>
		</div>
		<div>
		<label for="강의요일">강의요일:</label>
		<input type="text" id="DAYOFWEEK" name="class_dayofweek" value="${c.class_dayofweek }"><br>
		</div>
		<div>
		<label for="강의교시">강의교시:</label>
		<input type="text" id="TIME" name="class_time" value="${c.class_time }"><br>
		</div>
		<div>
		<label for="강의실">강의실:</label>
		<input type="text" id="ROOM" name="class_room" value="${c.class_room }"><br>
			</div>
			<div>
		<label for="학점">학점:</label>
		<input type="number" id="CREDIT" name="class_credit" value="${c.class_credit }"><br>
		</div>
			<div>
		<label for="이수구분">이수구분:</label>	
		<select name="class_type" id="TYPE"> 
			<option selected disable hidden value="${c.class_type }">${c.class_type }</option>
			<option value="전공">전공</option>
			<option value="교양">교양</option>
		</select>
			</div>
			<div>
				<label for="교수번호">교수번호:</label>
				<input type="number" id="PNO" name="pro_no" value="${c.pro_no }"><br>
			</div>
			<div class="button">
			<button type="submit">수정</button>
			</div>
	</form>
</body>
</html>


