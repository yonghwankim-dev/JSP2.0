<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 도메인 입력 안한 경우
	Cookie cookie1 = new Cookie("nodomain", "nodomain");
	
	// 현재 서버의 도메인
	Cookie cookie2 = new Cookie("yhCookie", "yhCookie");
	cookie2.setDomain("yh.tistory.com");
	
	// 현재 주소의 상위 도메인인 tistory.com으로 지정한 경우
	Cookie cookie3 = new Cookie("highCookie", "highCookie");
	cookie3.setDomain("tistory.com");
	
	// 상위 도메인은 tistory.com으로 같으나 호스트명은 www로 다르게 지정한 경우
	Cookie cookie4 = new Cookie("wwwCookie", "wwwCookie");
	cookie4.setDomain("www.tistory.com");
	
	// 상위 도메인도 다른 완전히 다른 도메인 주소를 지정한 경우
	Cookie cookie5 = new Cookie("otherCookie", "otherCookie");
	cookie4.setDomain("www.naver.com");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	response.addCookie(cookie4);
	response.addCookie(cookie5);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠기 생성</title>
</head>
<body>
	<h1>쿠기 생성 완료</h1>
</body>
</html>