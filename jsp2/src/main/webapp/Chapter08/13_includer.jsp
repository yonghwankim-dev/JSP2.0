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
	int number = 10;
%>
<!-- includee.jspf 파일의 내용이 그대로 포함된다. -->
<%@ include file="/Chapter08/14_includee.jspf" %>
공통 변수 DATAFOLDER = "<%=dataFolder %>"
</body>
</html>