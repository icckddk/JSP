<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>NullPointerException을 발생시키는 페이지</title>
</head>
<body>
	<%
	String msg = null;
	boolean isHello = msg.equals("Hello, world!"); //msg가 null이므로 NullPointerException을 발생시킵니다.
	out.println("메시지는 hello, world? : " + isHello);
	%>
</body>
</html>