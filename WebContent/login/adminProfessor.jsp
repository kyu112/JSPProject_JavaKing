<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
	
	</div>
	<div class="content">
		<h2>교수진 등록</h2>
		<br><br>
			<form action="insertPro.do" method="post">
				<fieldset width=500px>
					교수번호 : <br>
						<input type="text" name="pro_no"><br><br>
					교수명 : <br>
						<input type="text" name="pro_name"><br><br>
						<img src="./image/school.png" width= 20px height=20px> 
					학부 | 전공 : <br>
						<input type="text" name="pro_type"> | 
						<input type="text" name="pro_major"><br><br>
						<img src="./image/email.png" width= 20px height=20px> 
					이메일 :  <br>
						<input type="text" name="pro_email"><br><br>
					첨부파일 : <input type="file"><br><br>
					<input type="submit" value="등록">
				</fieldset>
			</form>
	</div>
	<div class="footer">
	
	</div>
</body>
</html>