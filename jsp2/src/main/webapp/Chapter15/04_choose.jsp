<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choose 태그</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.name == 'bk'}">
			<p>당신의 이름은 ${param.name}입니다.</p>	
		</c:when>
		<c:when test="${param.age >= 18}">
			<p>당신은 18세 이상입니다.</p>	
		</c:when>
		<c:otherwise>
			<p>당신은 'bk'가 아니고 18세 이상이 아닙니다.</p>
		</c:otherwise>
	</c:choose>
</body>
</html>