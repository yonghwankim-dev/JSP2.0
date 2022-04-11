<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("MEMBERID", "user1");
	session.setAttribute("NAME", "김용환");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 정보 저장</title>
</head>
<body>
	<h1>세션에 정보를 저장했습니다.</h1>
	<h1>MEMBER ID : <%= session.getAttribute("MEMBERID") %></h1>
	<h1>NAME      : <%= session.getAttribute("NAME") %></h1>
</body>
</html>