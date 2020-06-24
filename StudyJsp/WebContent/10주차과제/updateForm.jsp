<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>DB에 게시판 데이터 변경</h2>
	
	<form action = "updatePro.jsp" method="post">
		아이디:<input type="text" name="id" value="<%=id %>"><br>
		주제: <input type="text" name="subject" ><br>
		내용: <input type="text" name="content" ><br>
		글쓴이: <input type="text" name="writer" ><br>
		작성일: <input type="date" name="regdate" >
		
		<input type="submit" value="변경">
		<input type="button" value="삭제" onclick="location.href="delete.jsp?id=<%=id %>"">;
		<input type="reset" value="다시쓰기">
		</form>
</body>
</html>