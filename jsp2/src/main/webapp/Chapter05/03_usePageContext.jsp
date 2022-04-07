<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	/*
		pageContext.getRequest()의 리턴타입은 ServletRequest인데, JSP 페이지가 HTTP 요청을 처리하므로
		HttpServletRequest로 형변환
	*/ 
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
%>
request 기본 객체와 pageContext.getRequest()의 동일 여부:
<%= 
//request 기본 객체와 pageContext.getRequest()의 리턴 값이 같은 객체인지를 검사한다.
request==httpRequest
%>

<br>
pageContext.getOut() 메소드를 사용한 데이터 출력:
<%
	//pageContext.getOut().println()은 out.println()과 동일하다.
	pageContext.getOut().println("안녕하세요!");

%>
</body>
</html>