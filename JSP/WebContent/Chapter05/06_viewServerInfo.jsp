<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page buffer="8kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
버퍼크기 : <%= out.getBufferSize() %><br>
남은크기 : <%= out.getRemaining() %><br>
auto flash : <%= out.isAutoFlush() %><br>
</body>
</html>