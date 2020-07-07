<%@page import="db.DBconn"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    DBconn.open();
    
    String sql = "delete from member where id=?";
    
    PreparedStatement prst = DBconn.updateQuery(sql);
    prst.setString(1, request.getParameter("id"));
    prst.executeUpdate();
    
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

</body>
</html>