<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>	<!-- 에러 페이지로 지정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 발생</title>
</head>
<body>
요청 처리 과정에서 예외가 발생했습니다.<br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.
<p>
에러 타입 : <%= exception.getClass().getName() %><br><!-- exception 기본 객체의 클래스 이름을 출력 -->
에러 메시지 : <b><%= exception.getMessage() %></b><!-- 예외 메시지를 출력한다. -->
</body>
</html>