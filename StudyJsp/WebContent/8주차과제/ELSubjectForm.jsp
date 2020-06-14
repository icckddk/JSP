<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EL 학년, 이름, 학년, 선택과목</title>
</head>
<body>
	<h2>EL 학년, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<hr>
	<form action="ELSubject.jsp" method="post">
		학번: <input type="text" name="pwd"><br>
		이름: <input type="text" name="name"><br>
		학년: <input type="radio" name="grade" value="1학년">1학년
				<input type="radio" name="grade" value="2학년">2학년<br>
		선택과목: <select name="subject">
		<option value="안드로이드">안드로이드</option>
		<option value="자바">자바</option>
		<option value="웹프로그래밍">웹프로그래밍</option>
		<option value="자바스크립트">자바스크립트</option>
		</select>
		<input type="submit" value="확인"><br>
		</form>
</body>
</html>