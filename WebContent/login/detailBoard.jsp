<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

body{
	background-color: #f8f9fa;
}
footer{
	background-color: #f1f4f8;
}
.center {
  	margin: auto;
  	padding: 10px;
  	padding-bottom: 30px;
  
}
.property{
	font-size: 13px;
}
.comment{
	font-size: 13px;
	background-color: white;
  	padding: 5px;
 	border: 10px solid #f1f4f8;

}
.before {
	position: static;
	padding: 10px;
	font-size: 13px;
	left: auto;
	width: 1800px;

}
.next{
	position: static;
	padding: 10px;
	font-size: 13px;
	right: auto;
	width: 100px;  
	
}
.bottomright {
  	position: absolute;
  	right: 2px;  
 	width: 220px;
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
  	width: 80%;
  	padding: 5px 20px;
  	margin: 8px 0;
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
	<h2>
		<c:if test="${b_vo.board_boardno==100}">알림마당</c:if>
		<c:if test="${b_vo.board_boardno==200}">도움마당</c:if>
		<c:if test="${b_vo.board_boardno==300}">참여마당</c:if>
	</h2>
	<h4>${b_vo.board_title}</h4>
	<div class="property">
		<img src="../image/pen.png" width="20" height="20">작성자:${b_vo.std_no} |
		<img src="../image/time.png" width="20" height="20">작성일:${b_vo.board_regdate}|
		<img src="../image/click.png" width="20" height="20">조회수:${b_vo.board_hit} |
		<img src="../image/files.png" width="20" height="20">분류: ${b_vo.board_category} 	
		<hr>
		첨부파일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| √ <a href="../image/${b_vo.board_fname}">${b_vo.board_fname}</a>
		<hr>
	</div>
	<div class="center">
	<textarea readonly="readonly">${b_vo.board_content}</textarea><br>
	
	<a href="detailBoard.do?board_no=${b_vo.board_no-1}" class="before">◁ 이전글</a> <a href="detailBoard.do?board_no=${b_vo.board_no+1}" class="next">다음글▷</a>
	
	</div>
	<br>


<footer>
	<div style="background-color: #d2ddf1;  padding: 5px;">
	<img src="../image/conversation.png" width="20" height="25"><font color="#083b90">댓글(${reply_count})</font><a>∧</a>
	</div>
	<div class="comment">
	
	<c:forEach var="r" items="${r_list}">
		
		<c:choose>

			<c:when test="${std_no==r.std_no}"> 
				<form action="updateReply.do">
					<input type="hidden" name="reply_no" value="${r.reply_no}">
					<input type="hidden" name="board_no" value="${r.board_no}">
					<input type="text"  name="reply_content" value="${r.reply_content}" >|${r.reply_regdate}|${r.std_no}|
					<input type="submit" value="수정">
					<a href="deleteReply.do?reply_no=${r.reply_no}&board_no=${r.board_no}">
						<img src="../image/delete_comment.png" width="25" height="25">
					</a>
				</form>
			</c:when>
			<c:when test="${std_no!=r.std_no}">
				<input type="text" readonly="readonly" value="${r.reply_content}" width="50">|${r.reply_regdate}|${r.std_no}|
			</c:when>
				
		</c:choose>
		
				<br>
	
	</c:forEach>
	</div>
	<br>
	
	<hr>
	<form action="insertReply.do?board_no=${b_vo.board_no}" method="post">
	댓글 입력:
		<input type="text" name="reply_content" value="댓글을 입력하세요">
		<input type="submit" value="등록">
	</form>
	<br>
	<hr>
	
	
	<div class="bottomright">
	
		<c:if test="${std_no==b_vo.std_no}">
			삭제<a href="deleteBoard.do?board_no=${b_vo.board_no}"><img src="../image/delete.png" width="30" height="35"></a>
			수정<a href="updateBoard.do?board_no=${b_vo.board_no}"><img src="../image/browser.png" width="30" height="35"></a>
		</c:if>
			목록<a href="listBoard.do"><img src="../image/schedule.png" width="30" height="35"></a>
	</div>
</footer>
</body>
</html>