<%@page import="java.sql.*"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="bbs.BbsDAO"%>
<%@page import="bbs.Bbs"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<title>로그인</title>
</head>
<body>
	<%
			String id = null;
			if(session.getAttribute("id")  != null){
				id = (String)session.getAttribute("id");
			}
			int pageNumber = 1;
			if(request.getParameter("pageNumber") != null){
				pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
			}
	%>
	<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" 
		data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
		aria-expanded="false">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="main.jsp">메인</a></li>
			<li class="active"><a href="bbs.jsp">게시판</a></li>
		</ul>
		<%
				if(id == null){
					
		%>	
			<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
			aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="LoginForm.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
			</ul>
			</li>
		</ul>
	  <%
				
				}
				else{
				
		%>	
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
			aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="logoutAction.jsp">로그아웃</a></li>
			</ul>
			</li>
		</ul>
				
		<% 		
				}
		
		%>

	</div>
	</nav>
	<div class="container">
			<div class="row">
					<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
						<thead>
								<tr>
										<th style="background-color: #eeeeee; text-align: center;">번호</th>
										<th style="background-color: #eeeeee; text-align: center;">제목</th>
										<th style="background-color: #eeeeee; text-align: center;">작성자</th>
										<th style="background-color: #eeeeee; text-align: center;">작성일</th>
								</tr>
						</thead>
						<tbody>
						<%
								BbsDAO bbsDAO = new BbsDAO();
								ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
								for(int i = 0; i <list.size(); i++){
						%>
						<tr>
										<td><%= list.get(i).getBbsid() %></td>
										<td><%= list.get(i).getBbsTitle() %></td>
										<td><%= list.get(i).getId() %></td>
										<td><%= list.get(i).getBbsDate() %></td>
								</tr>
						
						<%			
								}
						
						%>
	
						</tbody>
					</table>
					<form action="search.jsp" method="get" class="form-inline my-2-lg-0">
							<input type="text" name="search" class="form-control mr-sm-2" type="search" placeholder="내용을 입력해주세요">
							<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
					</form>
					
					<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
			</div>
	
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>