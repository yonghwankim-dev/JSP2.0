<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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