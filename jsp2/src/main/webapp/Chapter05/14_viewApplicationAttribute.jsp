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
	Enumeration e = application.getAttributeNames();

	while(e.hasMoreElements())
	{
		String name = (String)e.nextElement();
		Object value = application.getAttribute(name);
	
%>
	application 속성: <b><%=name %></b>=<%=value %><br>
<%
	}
%>
</body>
</html>