<%@page import="java.net.URLEncoder"%>
<%@page import="jsp.util.CookieBox" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.addCookie(CookieBox.createCookie("name", "김용환"));
	response.addCookie(CookieBox.createCookie("id", "tistory", "/jsp2/Chapter09", -1));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieBox 사용예시</title>
</head>
<body>
	<h1>CookieBox를 사용하여 쿠기 생성</h1>
</body>
</html>