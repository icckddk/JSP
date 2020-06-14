<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>멤버 정보</title>
</head>
<body>
	<h2>멤버 정보</h2>
	<hr>
	<jsp:useBean id="m" class="ch10.Member"/>
	<jsp:setProperty property="*" name="m"/>
	
	
	아이디: <jsp:getProperty property="id" name="m"/><br> 
	이름: <jsp:getProperty property="name" name="m"/><br>
	비밀번호: <jsp:getProperty property="pwd" name="m"/>
</body>
</html>