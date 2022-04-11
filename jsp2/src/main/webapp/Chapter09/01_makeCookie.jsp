<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 추가할 쿠기 정보를 담고 있는 Cookie 객체를 생성
	// 쿠기의 값은 URLEncoder 클래스를 사용해서 인코딩
	Cookie cookie = new Cookie("name", URLEncoder.encode("김용환"));
	response.addCookie(cookie);	// 응답 데이터에 쿠기를 추가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
</body>
</html>