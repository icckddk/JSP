<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글목록</title>
</head>
<body>
	<h2>글목록</h2>
	<jsp:useBean id="m" class="ch10.Member"/>
	<jsp:setProperty property="*" name="m"/>
	<table>
	<tr>
	<td>글목록</td>
	</tr>
	<tr>
	<td>이름</td> <td><jsp:getProperty property="name" name="m"/></td>
	</tr>
		<tr>
	<td>제목</td> <td><jsp:getProperty property="title" name="m"/></td>
	</tr>
		<tr>
	<td>이메일</td> <td><jsp:getProperty property="email" name="m"/></td>
	</tr>
		<tr>
	<td>내용</td> <td><jsp:getProperty property="memo" name="m"/></td>
	</tr>
		<tr>
	<td>비밀번호</td> <td><jsp:getProperty property="pwd" name="m"/></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="글쓰기">
	<input type="reset" value="다시작성">
	<input type="button" value="목록보기">
	</td>
	</tr>
	</table>
</body>
</html>