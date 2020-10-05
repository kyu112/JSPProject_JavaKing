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
  	width: 550px;
}
h2{
	background-color: #9fbaee;
  	color: white;
  	padding: 15px;
}

</style>
</head>
<body>

	
	<h2>
		<c:if test="${b_vo.board_boardno==100}">알림마당</c:if>
		<c:if test="${b_vo.board_boardno==200}">도움마당</c:if>
		<c:if test="${b_vo.board_boardno==300}">참여마당</c:if>
	</h2>
	
	<div class="property">
	
	<form action="updateBoardOk.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="board_boardno" value="${b_vo.board_boardno}"> 
		<input type="hidden" name="board_no" value="${b_vo.board_no}">
		분류:<select name="board_category">
						<option>====카테고리 선택====</option>
				<c:forEach var="cl" items="${category_list}" begin="0" end="${category_list.size()}">
						<option value="${cl}">${cl}</option>
				</c:forEach>
			</select>
			
		<br>
		글 제목: <input type="text" name="board_title" value="${b_vo.board_title}">
		<br>
		
		작성자: ${b_vo.std_no}
			<input type="hidden" name="std_no" value="${b_vo.std_no}">
			
		<c:if test="${b_vo.board_category.equals('익명게시판')}">
					<input type="hidden" name="board_pwd" value = "${b_vo.board_pwd}">
			비밀번호: <input type="password" name="pwd">
		</c:if>
		
		<hr>
			<input type="hidden" fname="oldFname" value="${b_vo.board_fname}">
			첨부파일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| <input type="file" name="board_fname">
		<hr>
		</div>
	
		<div class="center">
			<textarea name="board_content">${b_vo.board_content}</textarea><br>
		</div>
	<br>
	
	
		<hr>
		<div class="bottomright">
			<input type="submit" value="수정"><img src="./image/insert.png" width="30" height="35"></a>
	</form>
			<a href="listBoard.do"><input type="button" value="목록"><img src="./image/schedule.png" width="30" height="35"></a>
		</div>


</body>
</html>