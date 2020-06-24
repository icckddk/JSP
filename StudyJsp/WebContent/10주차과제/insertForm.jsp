<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
<br>
   <h1 class= "text-center font -weight - bold">게시판 입력 폼</h1>
   <hr/>
   
   <form action = "insertPro.jsp" method = "post">
   <div class = "font-group">
   <label for = "id">ID:</label>
   <input type= "text" class = "form-control" id = "id" name ="id">
   </div>
   
   <div class = "font-group">
   <label for = "subject">SUBJECT:</label>
   <input type= "text" class = "form-control" id = "subject" name ="subject">
   </div>
   
   <div class = "font-group">
   <label for = "content">CONTENT:</label>
   <input type= "text" class = "form-control" id = "content" name ="content">
   </div>
   
   <div class = "font-group">
   <label for = "writer">WRITER:</label>
   <input type= "text" class = "form-control" id = "writer" name ="writer">
   </div>
   
   <div class = "font-group">
   <label for = "regdate">REGDATE:</label>
   <input type= "date" class = "form-control" id = "regdate" name ="regdate">
   </div>
   
   <br>
   <div class = "text-center">
   <button type = "submit" class = "btn btn-secondary">글쓰기</button>
   </div>
   </form>
</body>
</html>