<%@page import="jsp.util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberid = (String) session.getAttribute("MEMBERID");
	boolean isLogin = memberid != null ? true : false;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 검사</title>
</head>
<body>
	<%
		if(isLogin)
		{
	%>
			<h1>아이디 '<%= memberid %>'로 로그인한 상태</h1>
	<%
		}
		else
		{
	%>
			<h1>로그인하지 않은 상태</h1>
	<%
			
		}
	%>
</body>
</html>