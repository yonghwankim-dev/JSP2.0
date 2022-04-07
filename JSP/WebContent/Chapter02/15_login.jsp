<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("memberId");
	if(id.equals("era13"))
	{
		response.sendRedirect("./index.jsp");
	}
	else
	{
%>
	<html>
	<head>
		<title>로그인 실패</title>
	</head>
	<body>
		아이디가 era13이 아닙니다.
	</body>
	</html>
<%			
	}
%>
