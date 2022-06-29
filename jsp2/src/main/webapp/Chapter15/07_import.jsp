<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/Chapter15/url.jsp" var="urlEx"/>
<c:import url="http://localhost:8080/jsp2/Chapter15/header.jsp" var="head">
	<c:param name="id" value="user1"/>
</c:import>
<c:import url="./footer.jsp" var="foot"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 태그</title>
</head>
<body>

	${head}
	
	${urlEx}
	
	${foot}		
</body>
</html>