<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>catch 태그</title>
</head>
<body>	
<c:catch var="result">
	name 파라미터의 값 = <%=request.getParameter("name") %><br>
	<%
		if(request.getParameter("name").equals("test")){
	%>
			${param.name}은 test입니다.
	<%
		}
	%>
</c:catch>
	<p>
		<c:if test="${result != null}">
			예외가 발생했습니다.<br>
		</c:if>
	</p>
</body>
</html>