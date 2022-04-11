<%@page import="jsp.util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals(pwd))
	{
		// id와 pwd가 같으면 로그인에 성공한 것으로 판단.
		response.addCookie(CookieBox.createCookie("LOGIN", "SUCCESS", "/", -1));
		
		response.addCookie(CookieBox.createCookie("id", id, "/", -1));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<h1>로그인에 성공했습니다.</h1>
</body>
</html>
<%
	}
	else
	{
%>
		<script>
			alert("로그인에 실패했습니다.");
			history.go(-1);
		</script>
<%
	}
%>