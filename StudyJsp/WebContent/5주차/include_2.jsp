<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>include_2.jsp</title>
</head>
<body>
	include_2.jsp를 포함하였습니다.
	<% request.setCharacterEncoding("utf-8"); %>
	<%=request.getParameter("name") %>입니다. <br>
	<%=request.getParameter("pageName") %>
</body>
</html>