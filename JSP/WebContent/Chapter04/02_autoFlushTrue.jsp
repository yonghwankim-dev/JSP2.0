<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer="1kb" autoFlush="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
	//이 부분에서만 4KB 이상 데이터가 생성된다.
	for(int i=0;i<1000;i++){%>
		1234
	<%
	}
	%>
</body>
</html>