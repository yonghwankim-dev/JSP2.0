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
������
<%= cal.get(Calendar.YEAR) %>��
<%= cal.get(Calendar.MONTH) %>��
<%= cal.get(Calendar.DATE) %>��
�Դϴ�.
</body>
</html>