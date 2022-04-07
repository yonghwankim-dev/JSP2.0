<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();

%>
오늘은
<%= cal.get(Calendar.YEAR) %>년
<%= cal.get(Calendar.MONTH) %>월
<%= cal.get(Calendar.DATE) %>일
입니다.
</body>
</html>