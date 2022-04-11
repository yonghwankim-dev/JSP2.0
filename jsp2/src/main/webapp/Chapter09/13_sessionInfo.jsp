<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>	<!-- 생략 가능 -->    

<%
	Date time = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보</title>
</head>
<body>
	<h1>세션ID : <%= session.getId() %></h1>
	<%
		time.setTime(session.getCreationTime());
	%>
	<h1>세션 생성 시간 : <%= sdf.format(time) %></h1>
	<%
		time.setTime(session.getLastAccessedTime());
	%>
	<h1>최근접근시간 : <%= sdf.format(time) %></h1>
	
</body>
</html>