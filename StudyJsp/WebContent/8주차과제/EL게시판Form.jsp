<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
</head>
<body>
	<h2>글쓰기</h2>
	<form action="EL게시판.jsp" method="post">
	<table style="BORDER-COLLAPSE: collapse" border="1">
	<tr>
	<td align="right" colspan="2"> <a href="">글목록</a>
	</td>
	</tr>
	<tr>
	<td>이름</td><td><input type="text" name="name"></td>
	</tr>
	<tr>
	<td>제목</td><td><input type="text" name="title"></td>
	</tr>
	<tr>
	<td>이메일</td><td><input type="text" name="email"></td>
	</tr>
	<tr>
	<td>내용</td><td><textarea rows=20 cols=60 name="memo"></textarea></td>
	</tr>
	<tr>
	<td>비밀번호</td><td><input type="password" name="pwd"></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="글쓰기">
	<input type="reset" value="다시작성">
	<input type="button" value="목록보기">
	</td>
	</tr>
	</table>
	</form>
</body>
</html>