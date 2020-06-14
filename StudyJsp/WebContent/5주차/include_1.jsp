<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>include_1.jsp</title>
</head>
<body>
	이 파일은 include_1.jsp 입니다.(위쪽)
	<hr>
	<% request.setCharacterEncoding("utf-8");
	String pageName = request.getParameter("pageName");
			pageName += ".jsp";
	%>
	
	<jsp:include page="<%=pageName %>"/>
	<hr>
	
	이 파일은 include_1.jsp 입니다.(아래쪽)
	<hr>
</body>
</html>