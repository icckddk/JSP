<%@page import="java.sql.*"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.Context"%>
<%@page import=" javax.sql.DataSource"%>

<%@page import="db.DBconn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Context initCtx = new InitialContext();
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource) envCtx.lookup("jdbc/dit");
    Connection con = ds.getConnection();
    
    String id = request.getParameter("id");
    
    String sql = "SELECT * FROM MEMBER WHERE id=?";
    
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    ResultSet rs = pstmt.executeQuery();
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
<br>
   <h1 class= "text-center font -weight - bold">정보 수정</h1>
   <button type = "submit" class = "btn btn-secondary" onclick="location.href='list.jsp'">main</button>
   <hr>
    <form action = "updatePro.jsp" method = "post">
   <div class = "font-group">
   <label for = "id">ID:</label>
   <input type= "text" class = "form-control" name ="id" value="<%=id%>">
   </div>
   
   <div class = "font-group">
   <label for = "password">PASSWORD:</label>
   <input type= "password" class = "form-control" name ="pwd">
   </div>
   
   <div class = "font-group">
   <label for = "pwd">NAME:</label>
   <input type= "text" class = "form-control" id = "name" name ="name">
   </div>
   
   <div class = "font-group">
   <label for = "phone">PHONE:</label>
   <input type= "text" class = "form-control" id = "phone" name ="phone">
   </div>
   
   <div class = "font-group">
   <label for = "pwd">EMAIL:</label>
   <input type= "text" class = "form-control" id = "email" name ="email">
   </div>
   
   <br>
   <div class = "text-center">
   <button type = "submit" class = "btn btn-secondary" onclick="location.href='list.jsp?id=<%=id %>'">변경 완료</button>
   <button type = "reset" class = "btn btn-secondary">다시 작성</button>
   </div>
   
	<%
		DBconn.close();
	%>
	</form>
</div>
</body>
</html>