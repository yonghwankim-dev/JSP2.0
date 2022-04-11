<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// /jsp2 : 웹 어플리케이션 폴더

	Cookie cookie1 = new Cookie("path1", URLEncoder.encode("경로:/jsp2/Chapter09/path1/"));
	//path1 쿠기를 /jsp2/Chapter09/path1 또는 그 하위 경로(/jsp2/Chapter09/path1/...)에만 전송
	cookie1.setPath("/jsp2/Chapter09/path1/"); 
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path2", URLEncoder.encode("경로:"));
	// 경로 설정 안함
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("path3", URLEncoder.encode("경로:/"));
	// path3 쿠기를 '/' 또는 그 하위 경로(/jsp2/Chapter09/ 등)에만 전송
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path4", URLEncoder.encode("경로:/jsp2/Chapter09/path2/"));
	// path4 쿠기를 '/jsp2/Chapter09/path2' 또는 그 하위 경로(/jsp2/Chapter09/path2/... 등)에만 전송
	cookie4.setPath("/jsp2/Chapter09/path2/");
	response.addCookie(cookie4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠기 경로 지정</title>
</head>
<body>
	<h1>다음과 같이 쿠기를 생성</h1>
	<%
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies)
		{
	%>
			<h1><%= cookie.getName() %> = <%= URLDecoder.decode(cookie.getValue()) %></h1>
	<%
		}
	%>
	
</body>
</html>