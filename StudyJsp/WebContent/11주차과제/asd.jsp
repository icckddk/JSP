<%@page import="java.awt.Button"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Context initCtx = new InitialContext();
    
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    
    DataSource ds = (DataSource) envCtx.lookup("jdbc/dit");
    
    Connection con = ds.getConnection();
    
    String sql = "SELECT * FROM LOGIN";
    
    Statement st = con.createStatement();
    
    ResultSet rs = st.executeQuery(sql);
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class = "container">
<h1 class="text-center font-weight-bold">로그인 정보</h1>
<br><br>
	<table class = "table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>삭제</th>
		</tr>
<%//5. 결좌집합 처리
	while(rs.next()) {
		String id = rs.getString("ID");
		String name = rs.getString("NAME");
		String pwd = rs.getString("PWD");
%>
		<tr>
			<td><%= id %></td>
			<td><%= name %></td>
			<td><%= pwd %></td>
			<td><a href="delete.jsp?id=<%=id%>" >삭제</a></td>
		</tr>
<%}
	//6. 객체 해지
	rs.close();
	st.close();
	con.close();
%>
	</table>
	</div>
</body>
</html>