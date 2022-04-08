<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer="8kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	버퍼 크기: 	<%= out.getBufferSize() %><br> 	<!-- 버퍼 크기 출력      -->
	남은 크기: 	<%= out.getRemaining() %><br>	<!-- 버퍼의 남은 크기 출력 -->
	auto flush: <%= out.isAutoFlush() %><br> 	<!-- 자동 플러시 여부 출력 -->
</body>
</html>