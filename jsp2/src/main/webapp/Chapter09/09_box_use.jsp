<%@page import="java.net.URLEncoder"%>
<%@page import="jsp.util.CookieBox" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CookieBox cookieBox = new CookieBox(request);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 사용</title>
</head>
<body>
	<h1>name 쿠기 = <%= cookieBox.getValue("name") %></h1>
	<h1>id   쿠기 = <%= cookieBox.getValue("id") %></h1>
</body>
</html>