<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration e = request.getHeaderNames();
	while(e.hasMoreElements())
	{
		String headerName = (String)e.nextElement();
		String headerValue = request.getHeader(headerName);
	%>
	<%= headerName %> = <%= headerValue %><br>
<%	
	}
%>
</body>
</html>