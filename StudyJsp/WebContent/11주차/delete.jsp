<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Context initCtx = new InitialContext();
    
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    
    DataSource ds = (DataSource) envCtx.lookup("jdbc/dit");
    
    Connection con = ds.getConnection();
    
    String sql = "delete from login where id=?";
    
    PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, request.getParameter("id"));
	
		int i = pst.executeUpdate();
    
		pst.close();
		con.close();
		
		response.sendRedirect("asd.jsp");
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