<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="user.UserDAO" %>
    <% request.setCharacterEncoding("UTF-8");%>
    <jsp:useBean id="user" class="user.User" scope="page"/>
    <jsp:setProperty property="id" name="user"/>
    <jsp:setProperty property="pwd" name="user"/>
    <jsp:setProperty property="name" name="user"/>
    <jsp:setProperty property="phone" name="user"/>
    <jsp:setProperty property="email" name="user"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<% 
	if(user.getId() == null || user.getPwd() == null || user.getName() == null || user.getPhone() == null
		|| user.getEmail() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else{
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
		}
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}
	}
	
	
	%>
</body>
</html>