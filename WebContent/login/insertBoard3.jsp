<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: #f8f9fa;
}
.center {
  	margin: auto;
  	padding: 10px;  
}
.property{
	font-size: 13px;
}
.before {
	font-size: 13px;
	position: absolute;
	right: 2px;  
	width: 1541px;
	height:90px;
}
.next{
	font-size: 13px;
	position: absolute;
	right: 2px;  
	width: 140px;
	height:10px;
}
.bottomright {
  	position: absolute;
  	right: 2px;  
  	width: 160px;
  	height: 120px;
}
textarea {
  	width: 100%;
  	height: 150px;
  	padding: 12px 20px;
  	box-sizing: border-box;
  	border: 2px solid #ccc;
  	border-radius: 4px;
  	background-color: white;
  	resize: none;
}
input[type=text] {
  	padding: 3px 10px;
  	margin: 5px 0;
  	box-sizing: border-box;
}
h2{
	background-color: #9fbaee;
  	color: white;
  	padding: 15px;
}
</style>
</head>
<body>

<input type="hidden" name="board_boardno" value="board_boardno"> 
<h2>${board_boardname}</h2>
	<div class="property">
	
<form action="insertBoardOk.do" method="post" enctype="multipart/form-data">
	분류:
	<select name="board_category">
				<option>====카테고리 선택====</option>
		<c:forEach var="cl" items="${category_list}" begin="0" end="${category_list.size()}">
				<option value="${cl}">${cl}</option>
		</c:forEach>
	</select>
	<br>
	글 제목:
	<input type="text" name="board_title" width="150" value="제목을 입력하세요">
	<br>
	작성자: ${std_no}
		<input type="hidden" name="std_no" value="${std_no}">
	비밀번호: <input type="password" name="board_pwd">
	<hr>
	첨부파일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| <input type="file" name="board_fname">
	<hr>
	
	</div>

	<div class="center">
		<textarea name="board_content">글내용</textarea><br>
	</div>
	
	<br>
	
	<hr>
	<div class="bottomright">
		<input type="submit" value="등록"><img src="./image/insert.png" width="30" height="35"></a>
	</form>
		<a href="listBoard.do"><input type="button" value="목록"><img src="./image/schedule.png" width="30" height="35"></a>
	</div>


</body>
</html>