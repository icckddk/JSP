<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
<br>
   <h1 class= "text-center font -weight - bold">회원가입</h1>
   <button type = "submit" class = "btn btn-secondary" a href="">main</button>
   <hr>
   
   <form action = "insertPro.jsp" method = "post">
   <div class = "font-group">
   <label for = "id">ID:</label>
   <input type= "text" class = "form-control" id = "id" name ="id">
   </div>
   
   <div class = "font-group">
   <label for = "password">PASSWORD:</label>
   <input type= "password" class = "form-control" id = "pwd" name ="pwd">
   </div>
   
   <div class = "font-group">
   <label for = "pwd">NAME:</label>
   <input type= "name" class = "form-control" id = "name" name ="name">
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
   <button type = "submit" class = "btn btn-secondary">등록</button>
   <button type = "reset" class = "btn btn-secondary">다시작성</button>
   </div>
   </form>
</body>
</html>