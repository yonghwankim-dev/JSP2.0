<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="url1" value="../shopping.do"/>
<c:url var="url2" value="/shopping.do">
	<c:param name="Add" value="isbn-001"/>
</c:url>
<c:url var="url3" value="http://localhost:8080/jsp2/setTag.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url 태그</title>
</head>
<body>

	<ul>
		<li>URL1 = ${url1}</li>
		<li>URL2 = ${url2}</li>
		<li>URL3 = ${url3}</li>
	</ul>		
</body>
</html>