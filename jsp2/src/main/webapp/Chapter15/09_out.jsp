<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 태그</title>
</head>
<body>	
<%
	String path = request.getParameter("path");

	try(FileReader reader = new FileReader(getServletContext().getRealPath(path))){

%>
	<pre>
		소스코드 = <%=path %>
		<c:out value="<%=reader %>" escapeXml="true"/>
	</pre>
<%
	}catch(IOException e){
%>
		에러 : <%= e.getMessage()%>
<%	
	}
%>
</body>
</html>