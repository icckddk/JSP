<%@page import="db.DBconn"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	DBconn.open();

	String sql = "update member set id=?, pwd=?, name=?, phone=?, email=? where id=?";
	PreparedStatement prst = DBconn.updateQuery(sql);
	prst.setString(1, request.getParameter("id"));
	prst.setString(2, request.getParameter("pwd"));
	prst.setString(3, request.getParameter("name"));
	prst.setString(4, request.getParameter("phone"));
	prst.setString(5, request.getParameter("email"));
	prst.setString(6, request.getParameter("id"));

	int i = prst.executeUpdate();

	prst.close();
	DBconn.close();
	
	response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>DB에 로그인 데이터 변경</h2>
	
</body>
</html>
