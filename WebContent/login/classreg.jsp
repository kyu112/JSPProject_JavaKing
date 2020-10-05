<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	header, article {
	align: center;
	width: 1000px;
	}
	table {
	border-collapse : collapse;
	margin: 10px 0px 10px 0px;
	width : 1000px;
	}
	.searchR {
	margin-right : 0px; 
	width : 750px;
	}
	.timetable {
	margin-left : 0px;
	margin-right : 0px;
	width : 200px; 
	}	
	th {
	width: 10%;
	font-size: 10;
	}
	#cell${day}${time}{
	background-color: "yellow";
	}
	
	
</style>
</head>
<body>
<header>
	<div class="학생정보"> <!-- 학생정보 -->
		<a href="logout.do">로그아웃</a>
		<h3>수강신청</h3>
		<b>${s.std_level } 학년도 ${s.std_semester } 학기 수강신청</b> <a href="printClassreg.do?stdno=${s.std_no}"><button>수강확인서출력</button></a>
		<table border="1" class="basic">
			<tr>
				<th>성명</th>
				<td>${s.std_name }</td>
				<th>성별</th>
				<td>${s.std_gender }</td>
				<th>생년월일</th>
				<td>${s.std_birthday }</td>
			</tr>
			<tr>
				<th>학과</th>
				<td>${s.std_major }</td>
				<th>학년</th>
				<td>${s.std_level }</td>
				<th>학기</th>
				<td>${s.std_semester }</td>
			</tr>
			<tr>
				<th>학번</th>
				<td>${s.std_no }</td>
				<th>학적상태</th>
				<td>${s.std_status }</td>
				<th>입학일</th>
				<td>${s.std_startdate }</td>
			</tr>
		</table>
	</div>
</header>
<article>
	<div class="조회란" > 
		<table border="1" class="search">
			<tr>
				<th>과목명</th>
				<td><form action="classregSearch.do?stdno=${s.std_no}" method="post">
						<input type="text" name="search" ><button type="submit">조회</button>
						<font color="${color }">${msg }</font>
					</form>
					<th>총신청학점</th>
					<td>${cCredit }</td>
					<th>신청과목수</th>
					<td>${cSubject }</td>
				</td>
			</tr>
		</table>
	</div>
	 <!-- 수강신청내역 -->
	 <div class="수강신청테이블">
		 <div class="수강신청란" style="float:lefT">
				<table border="1" class="searchR">
					<tr>
						<th>순번</th>
						<th>강의명</th>
						<th>이수구분</th>
						<th>학점</th>
						<th>교수명</th>
						<th>강의시간</th>
						<th>신청</th>
					</tr>
					<!-- foreach 처리 -->
					<c:forEach var="sc" items="${searchList }">
						<tr>
							<td>${sc.rownum }<input type="hidden" value="${sc.class_no }"></td>
							<td>${sc.class_name }</td>
							<td>${sc.class_type }</td>
							<td>${sc.class_credit }</td>
							<td>${sc.pro_name }(${sc.pro_no })</td>
							<td>${sc.class_dayofweek } ${sc.class_time }</td>
							<td><a href="classregOk.do?classno=${sc.class_no }&stdno=${s.std_no}"><button>신청</button></a></td>
						</tr>
					</c:forEach>
				</table>
				<c:if test="${searchList !=null }">
					<c:forEach var="i" begin="1" end="${totalPage }">
					<a href="classregSearch.do?pageNum=${i }&stdno=${s.std_no}">${i }</a> 
					</c:forEach>
				</c:if>	
			</div>
			<div class="시간표" style="float:right">
				<table border="1" class="timetable">
					<tr>
						<th></th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
					<c:forEach var="i" begin="1" end="9">
						<tr>
							<th>${i }</th>
								<c:forEach var="j" begin="1" end="6">
									<td id="cell${i }${j }"><input type="hidden" value=""></td>
								</c:forEach>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	<div class="신청결과">
		<table border="1" class="basic">
			<tr>
				<th>순번</th>
				<th>강의명</th>
				<th>학년</th>
				<th>학기</th>
				<th>이수구분</th>
				<th>학점</th>
				<th>교수</th>
				<th>강의시간</th>
				<th>비고</th>
				<th>삭제</th>
			</tr>
			<!-- foreach 처리 ClassregVo-->
			<c:forEach var="cr" items="${crList }">
				<tr>
					<td>${cr.rownum }<input type="hidden" value="${cr.classreg_no }"></td>
					<td>${cr.class_name }</td>
					<td>${cr.std_level }</td>
					<td>${cr.std_semester }</td>
					<td>${cr.class_type }</td>
					<td>${cr.class_credit }</td>
					<td>${cr.pro_name } (${cr.pro_no })</td>
					<td>${cr.class_dayofweek } ${cr.class_time }</td>
					<td>${cr.classreg_retake }</td>
					<td><a href="classregDelete.do?classregno=${cr.classreg_no }&stdno=${s.std_no}"><button>삭제</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</article>
</body>
</html>