<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0)
		{
			for(int i=0; i<cookies.length; i++)
			{
				if(cookies[i].getName().equals("name"))
				{
					// 쿠기 수정 방법 1
					Cookie cookie = new Cookie("name", URLEncoder.encode("JSP 프로그래밍"));
					response.addCookie(cookie);
					
					// 쿠기 수정 방법 2
					cookies[i].setValue(URLEncoder.encode("JSP 프로그래밍"));
					response.addCookie(cookies[i]);
				}
	%>
				
			
	<%
			}
		}
		else
		{
	%>
			쿠기가 존재하지 않습니다.
	<%
		}
	%>
</body>
</html>