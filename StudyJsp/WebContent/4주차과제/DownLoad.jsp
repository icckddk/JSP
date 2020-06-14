<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP 환경설정을 위한 다운로드 페이지</title>
</head>
<body>
<form action="DownLoadPro.jsp" method="post">
	<h2>JSP 환경설정을 위한 다운로드 페이지</h2>
	<hr>
	<select size="1" name="value">
		<option value="">선택</option>
		<option value="JDK">JDK</option>
		<option value="Tomcat">Tomcat</option>
		<option value="Eclipse">Eclipse</option>
		<input type="submit" value="이동">
	</select>
	</form>
</body>
</html>