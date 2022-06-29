<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if 태그</title>
</head>
<body>
	<c:set var="name" value="김용환" scope="request"/>

	<!-- eq(==) -->
	<c:if test="${name eq '김용환'}">
		<p>name eq '김용환' = true</p>
	</c:if>
	<c:if test="${name == '김용환'}">
		<p>name == '김용환' = true</p>
	</c:if>
	
	<!-- ne(!=) -->
	<c:if test="${name ne '홍길동'}">
		<p>name ne '홍길동' = true</p>
	</c:if>
	<c:if test="${name != '홍길동'}">
		<p>name != '홍길동' = true</p>
	</c:if>
	
	<!-- empty -->
	<c:if test="${empty name}">
		<p>empty name = true</p>
	</c:if>
	<!-- not empty -->
	<c:if test="${not empty name}">
		<p>not empty name = true</p>
	</c:if>
	
	<!-- and(&&) -->
	<c:if test="${1 > 0 and 2 > 1}">
		<p>1 > 0 and 2 > 1 = true</p>
	</c:if>
	<c:if test="${1 > 0 && 2 > 1}">
		<p>1 > 0 and 2 > 1 = true</p>
	</c:if>
	
	<!-- or(||) -->
	<c:if test="${1 > 0 or 2 < 1}">
		<p>1 > 0 or 2 < 1 = true</p>
	</c:if>
	<c:if test="${1 > 0 || 2 < 1}">
		<p>1 > 0 or 2 < 1 = true</p>
	</c:if>
	
	<!-- not(!) -->
	<c:if test="${not (1 < 0)}">
		<p>!(1 < 0) = true</p>
	</c:if>
	<c:if test="${!(1 < 0)}">
		<p>!(1 < 0) = true</p>
	</c:if>	
</body>
</html>