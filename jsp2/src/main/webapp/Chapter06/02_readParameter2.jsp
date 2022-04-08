<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%/*name 파라미터의 값을 대문자로 변환하여 출력한다.
		name 파라미터가 존재하지 않을 경우 예외가 발생한다.
	*/ %>
	name 파라미터 값 : <%= request.getParameter("name").toUpperCase() %>
</body>
</html>