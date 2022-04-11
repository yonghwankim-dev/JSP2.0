<%@page import="jsp.util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.addCookie(CookieBox.createCookie("LOGIN", "", "/", 0));
	response.addCookie(CookieBox.createCookie("id", "", "/", 0));
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h1>로그아웃하셨습니다.</h1>
</body>
</html>