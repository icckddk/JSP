<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>정보</title>
</head>
<body>
	<h2>정보</h2>
		<hr>
	<jsp:useBean id="m" class="ch10.Member"/>
	<jsp:setProperty property="*" name="m"/>
		<table border = "1">
	<tr>
<td>학번</td><td><jsp:getProperty property="pwd" name="m"/></td>
</tr>
	<tr>
<td>이름</td><td><jsp:getProperty property="name" name="m"/></td>
	</tr>
	<tr>
<td>학년</td><td><jsp:getProperty property="grade" name="m"/></td>
	</tr>
	<tr>
<td>선택과목</td><td><jsp:getProperty property="subject" name="m"/></td>
	</tr>
		</table>
	</body>
</html>