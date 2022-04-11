<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60 * 60);	// 3600초
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠기 유효 시간 설정</title>
</head>
<body>
	<h1>유효 시간이 1시간인 oneh 쿠기 생성</h1>
</body>
</html>