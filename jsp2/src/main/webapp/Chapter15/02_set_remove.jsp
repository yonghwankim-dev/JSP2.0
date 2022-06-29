<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set태그와 remove태그</title>
</head>
<body>
	<c:set var="name" value="김용환" scope="request"/>
	<p>제 이름은 ${name}입니다</p>
	
	<c:remove var="name" scope="request"/>
	<p>제 이름은 ${name}입니다</p>
</body>
</html>