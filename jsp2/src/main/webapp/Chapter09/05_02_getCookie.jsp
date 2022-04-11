<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠기 확인</title>
</head>
<body>
	<h1>모든 쿠기 목록 출력</h1>
	<%
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies)
		{
	%>
			<h1>전송된 쿠기 : <%= cookie.getName() %></h1>
	<%
		}
	%>
</body>
</html>