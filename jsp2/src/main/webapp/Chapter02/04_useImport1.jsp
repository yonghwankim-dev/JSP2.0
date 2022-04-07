<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	java.util.Calendar cal = java.util.Calendar.getInstance();

%>
오늘은
<%= cal.get(java.util.Calendar.YEAR) %>년
<%= cal.get(java.util.Calendar.MONTH) %>월
<%= cal.get(java.util.Calendar.DATE) %>일
입니다.
</body>
</html>